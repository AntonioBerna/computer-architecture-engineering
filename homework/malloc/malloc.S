.org 0x800

# These directives are used by the linker to expose functions to the `test.c` file and allow the program to run.
.globl  my_malloc_init
.type  my_malloc_init, @function
.globl  my_free
.type  my_free, @function
.globl  my_malloc
.type  my_malloc, @function

# This directive makes the stack non-executable.
.section .note.GNU-stack,"",@progbits

# Support structures
.data

# Below the 10 MB `memory_pool` buffer is defined.
.comm memory_pool, 10485760, 16

# Bitmap to keep track of allocated blocks (0=free, 1=busy)
.comm bitmap, 20480, 16

# Array to store block sizes (in 64-byte units)
.comm block_sizes, 163840, 16

# Definition of constants
.equ MEMORY_POOL_SIZE, 10485760                  # 10 MB
.equ BLOCK_SIZE, 64                              # Block size
.equ MAX_BLOCKS, (MEMORY_POOL_SIZE / BLOCK_SIZE)
.equ BITMAP_SIZE, (MAX_BLOCKS / 8)
.equ BITMAP_WORDS, (BITMAP_SIZE / 8)             # Number of 64-bit words

.text

#####################################################################################################
# Description:                                                                                      #
# The `my_malloc_init` function initializes two memory areas: a `bitmap` and a `block_sizes` array. #
# The `bitmap` is cleared to indicate that all memory blocks are free.                              #
# The `block_sizes` array is also zeroed out to store the sizes of memory blocks.                   #
# Initialization uses the `rep stosq` instruction to optimize the zeroing of memory areas.          #
#                                                                                                   #
# Input:                                                                                            #
# - No explicit input (no arguments are passed to the function).                                    #
#                                                                                                   #
# Output:                                                                                           #
# - No explicit output (contents of `bitmap` and `block_sizes` are changed).                        #
#####################################################################################################
my_malloc_init:
    lea bitmap(%rip), %rdi
    xor %rax, %rax
    mov $(20480/8), %rcx
    rep stosq
    
    lea block_sizes(%rip), %rdi
    xor %rax, %rax
    mov $(163840/8), %rcx
    rep stosq
    retq

###########################################################################################################################################
# Description:                                                                                                                            #
# The `check_size` function checks whether the requested size is valid and determines the number of blocks needed to satisfy the request. #
# If the size is 0 or greater than 256, the function returns 0 to indicate an error.                                                      #
# If the size is valid, the number of blocks needed is determined based on the following logic:                                           #
# - From 1 to 64: 1 block                                                                                                                 #
# - From 65 to 128: 2 blocks                                                                                                              #
# - From 129 to 256: 4 blocks                                                                                                             #
#                                                                                                                                         #
# Input:                                                                                                                                  #
# - %rdi: Required size.                                                                                                                  #
#                                                                                                                                         #
# Output:                                                                                                                                 #
# - %r12: Number of blocks needed to meet the requested size.                                                                             #
###########################################################################################################################################
check_size:
    test %rdi, %rdi
    jz .return_null
    cmp $256, %rdi
    ja .return_null
    
    mov $1, %r12                # Default 1 block
    cmp $64, %rdi
    jbe .size_done
    mov $2, %r12                # 2 blocks for 65-128
    cmp $128, %rdi
    jbe .size_done
    mov $4, %r12                # 4 blocks for 129-256
    
.size_done:
    retq
    
.return_null:
    xor %r12, %r12
    retq

#############################################################################################################
# Description:                                                                                              #
# The `find_free_blocks` function searches for a sequence of consecutive free blocks within the `bitmap`.   #
# If it finds a sequence of free blocks of sufficient length, it returns the index of the first free block. #
# Otherwise, it returns -1.                                                                                 #
#                                                                                                           #
# Input:                                                                                                    #
# - %r12: Number of consecutive blocks requested.                                                           #
#                                                                                                           #
# Output:                                                                                                   #
# - %rcx: Index of the first free block found or -1 if there are no free blocks.                            #
#############################################################################################################
find_free_blocks:
    lea bitmap(%rip), %rsi
    xor %rcx, %rcx
    mov %r12, %r13
    
    # Add prefetch to improve memory access
    prefetchnta (%rsi)
    
.word_loop:
    cmp $BITMAP_WORDS, %rcx     # Check end of `bitmap`
    jae .find_failed
    
    movq (%rsi,%rcx,8), %r10    # Load 64-bit word
    cmp $-1, %r10               # Compare with UINT64_MAX
    je .next_word               # If all busy, move on to the next word
    
    xor %r8, %r8                # Bit index in the current word
    
.bit_loop:
    bt %r8, %r10                # Current bit head
    jc .next_bit                # If busy, move on to the next one
    
    # Calculate absolute block index
    mov %rcx, %r11
    shl $6, %r11                # Multiply by 64 (word size)
    add %r8, %r11               # Add bit offset
    
    # Check consecutive blocks
    mov %r13, %r14              # Counter blocks to check
    mov %r11, %r15              # Current block index
    
.check_consecutive:
    dec %r14
    jz .find_success            # All necessary blocks found
    
    inc %r15
    cmp $MAX_BLOCKS, %r15
    jae .find_failed
    
    # Check if the next block is free
    mov %r15, %rax
    shr $6, %rax                # Divide by 64 to get word index
    mov %r15, %rdx
    and $0x3f, %rdx             # Modulo 64 per bit in the word
    
    movq (%rsi,%rax,8), %r9
    bt %rdx, %r9
    jc .next_bit                # If busy, move to next initial block
    
    jmp .check_consecutive
    
.next_bit:
    inc %r8
    cmp $64, %r8
    jb .bit_loop
    
.next_word:
    inc %rcx
    jmp .word_loop
    
.find_success:
    mov %r11, %rcx              # Return first block index
    ret
    
.find_failed:
    mov $-1, %rcx
    ret

############################################################################################################################################
# Description:                                                                                                                             #
# The `mark_blocks_used` function marks a series of blocks as "occupied" within the `bitmap`.                                              #
# For each block, calculate the word index and the bit offset in the word and use the `bts` instruction to set the corresponding bit to 1. #
# The process is repeated for the number of blocks specified in %rsi.                                                                      #
#                                                                                                                                          #
# Input:                                                                                                                                   #
# - %rdi: Index of the first block to be marked.                                                                                           #
# - %rsi: Number of blocks to mark starting from index %rdi.                                                                               #
#                                                                                                                                          #
# Output:                                                                                                                                  #
# - No explicit return value, but the `bitmap` is updated to mark blocks as "busy".                                                        #
############################################################################################################################################
mark_blocks_used:
    lea bitmap(%rip), %r8
    mov %rdi, %rcx
    mov %rsi, %r9
    
.mark_loop:
    mov %rcx, %rax
    shr $6, %rax                # Calculate word index
    mov %rcx, %rdx
    and $0x3f, %rdx             # Calculate bit offset
    bts %rdx, (%r8,%rax,8)      # Use `bts` to set the bit
    
    inc %rcx
    dec %r9
    jnz .mark_loop
    retq

#######################################################################################################################
# Description:                                                                                                        #
# The `my_malloc` function allocates a memory area of ​​the requested size, using the blocks available in the `bitmap`. #
#                                                                                                                     #
# Input:                                                                                                              #
# - %rdi: Required size.                                                                                              #
#                                                                                                                     #
# Output:                                                                                                             #
# - %rax: Address of the allocated area or 0 if memory cannot be allocated.                                           #
#######################################################################################################################
my_malloc:
    # Save registers
    push %rbx
    push %r12
    push %r13
    push %r14
    push %r15
    
    # Check size
    call check_size
    test %r12, %r12
    jz .malloc_return_null
    
    # Find free blocks
    call find_free_blocks
    cmp $-1, %rcx
    je .malloc_return_null
    
    # Mark blocks as used
    lea bitmap(%rip), %rsi
    lea block_sizes(%rip), %r13
    mov %r12, %r14
    mov %rcx, %r15
    
.mark_blocks:
    mov %r15, %r8
    mov %r8, %r9
    shr $3, %r8
    and $7, %r9
    bts %r9, (%rsi,%r8)
    
    mov %r12b, (%r13,%r15)
    
    dec %r14
    jz .malloc_done
    inc %r15
    jmp .mark_blocks
    
.malloc_done:
    lea memory_pool(%rip), %rdx
    mov %rcx, %rax
    shl $6, %rax                # Multiply by 64
    add %rdx, %rax
    
    # Restore registers
    pop %r15
    pop %r14
    pop %r13
    pop %r12
    pop %rbx
    retq
    
.malloc_return_null:
    xor %rax, %rax
    pop %r15
    pop %r14
    pop %r13
    pop %r12
    pop %rbx
    retq

#####################################################################################################
# Description:                                                                                      #
# The `my_free` function frees one or more previously allocated memory blocks.                      #
# The memory address passed as input is used to calculate the index of the first block to be freed. #
# Subsequently, all blocks associated with that allocation are freed.                               #
# If the address is null or out of bounds, the function exits without performing any operation.     #
#                                                                                                   #
# Input:                                                                                            #
# - %rdi: Pointer to allocated memory to free.                                                      #
# Output:                                                                                           #
# - No explicit return value.                                                                       #
#####################################################################################################
my_free:
    test %rdi, %rdi
    jz .free_done
    
    # Calculate block index
    lea memory_pool(%rip), %rax
    sub %rax, %rdi
    test %rdi, %rdi
    jl .free_done
    cmp $10485760, %rdi
    jae .free_done
    
    shr $6, %rdi                # Convert to block index
    
    lea bitmap(%rip), %rsi
    lea block_sizes(%rip), %r13
    
    # Check if block is busy
    mov %rdi, %rcx
    mov %rcx, %rdx
    shr $3, %rcx
    and $7, %rdx
    movzx (%rsi,%rcx), %r8d
    bt %rdx, %r8
    jnc .free_done
    
    # Get number of blocks to free
    movzx (%r13,%rdi), %r12d
    test %r12d, %r12d
    jz .free_done
    
.free_blocks:
    mov %rdi, %rcx
    mov %rcx, %rdx
    shr $3, %rcx
    and $7, %rdx
    
    btr %rdx, (%rsi,%rcx)
    movb $0, (%r13,%rdi)
    
    dec %r12d
    jz .free_done
    inc %rdi
    jmp .free_blocks
    
.free_done:
    retq
