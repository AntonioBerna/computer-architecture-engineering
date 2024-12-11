.text
.globl my_memcpy
.globl my_strlen
.globl swap
.globl KSA
.globl PRGA
.globl encode
.globl decode

my_memcpy:
    pushq %rbp
    movq %rsp, %rbp
    movq %rdx, %rcx
    movq %rdi, %rax
    rep movsb
    popq %rbp
    ret

my_strlen:
    xorl %eax, %eax
.strlen_loop:
    cmpb $0, (%rdi, %rax)
    je .strlen_done
    incq %rax
    jmp .strlen_loop
.strlen_done:
    ret

swap:
    movb (%rdi), %al
    movb (%rsi), %cl
    movb %cl, (%rdi)
    movb %al, (%rsi)
    ret

KSA:
    pushq %rbp
    movq %rsp, %rbp
    pushq %r12
    pushq %r13
    pushq %r14

    movq %rdi, %r12
    movq %rsi, %r13
    xorl %r14d, %r14d

    xorl %ecx, %ecx
.init_loop:
    movb %cl, (%r13, %rcx)
    incl %ecx
    cmpl $256, %ecx
    jb .init_loop

    xorl %ecx, %ecx
.permute_loop:
    movl %r14d, %eax
    addl (%r13, %rcx), %eax
    
    movl %ecx, %edx
    andl $31, %edx
    movzbl (%r12, %rdx), %edx
    addl %edx, %eax
    
    andl $0xFF, %eax   
    movl %eax, %r14d   

    movb (%r13, %rcx), %dl
    movb (%r13, %r14), %al
    movb %al, (%r13, %rcx)
    movb %dl, (%r13, %r14)

    incl %ecx
    cmpl $256, %ecx
    jb .permute_loop

    popq %r14
    popq %r13
    popq %r12
    xorl %eax, %eax
    popq %rbp
    ret

PRGA:
    pushq %rbp
    movq %rsp, %rbp
    pushq %r12
    pushq %r13
    pushq %r14
    pushq %r15

    movq %rdi, %r12
    movq %rsi, %r13
    movq %rdx, %r14
    movl %ecx, %r15d

    xorl %eax, %eax
    xorl %ecx, %ecx

.prga_loop:
    # i = (i + 1) % 256
    incl %eax
    andl $0xFF, %eax

    # j = (j + state_array[i]) % 256
    movzbl (%r12, %rax), %edx
    addl %edx, %ecx
    andl $0xFF, %ecx

    movb (%r12, %rax), %dl
    movb (%r12, %rcx), %sil
    movb %sil, (%r12, %rax)
    movb %dl, (%r12, %rcx)

    movzbl (%r12, %rax), %edx
    movzbl (%r12, %rcx), %esi
    addl %esi, %edx
    andl $0xFF, %edx
    movzbl (%r12, %rdx), %edx

    movb (%r13), %sil
    xorb %dl, %sil
    movb %sil, (%r14)

    incq %r13
    incq %r14
    decl %r15d
    jnz .prga_loop

    popq %r15
    popq %r14
    popq %r13
    popq %r12
    xorl %eax, %eax
    popq %rbp
    ret

encode:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    pushq %r12
    pushq %r13
    pushq %r14

    movq %rdi, %r12
    movq %rsi, %r13
    movq %rdx, %r14
    movl %ecx, %r11d

    leaq -256(%rbp), %rsi
    movq %r12, %rdi
    call KSA

    leaq -256(%rbp), %rdi
    movq %r13, %rsi
    movq %r14, %rdx
    movl %r11d, %ecx
    call PRGA

    xorl %eax, %eax

    popq %r14
    popq %r13
    popq %r12
    movq %rbp, %rsp
    popq %rbp
    ret

decode:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    pushq %r12
    pushq %r13
    pushq %r14

    movq %rdi, %r12
    movq %rsi, %r13
    movq %rdx, %r14
    movl %ecx, %r11d

    leaq -256(%rbp), %rsi
    movq %r12, %rdi
    call KSA

    leaq -256(%rbp), %rdi
    movq %r13, %rsi
    movq %r14, %rdx
    movl %r11d, %ecx
    call PRGA

    xorl %eax, %eax

    popq %r14
    popq %r13
    popq %r12
    movq %rbp, %rsp
    popq %rbp
    ret
