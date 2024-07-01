.org 0x800

.data
    .equ ELECTROMAGNET,      0x1
    .equ PHOTOCELL_1_IRQ,    0x2
    .equ PHOTOCELL_1_START,  0x3
    .equ PHOTOCELL_2_IRQ,    0x4
    .equ PHOTOCELL_2_START,  0x5
    .equ TIMER_OPERATION,    0x6
    .equ TIMER_STATUS,       0x7
    .equ TIMER_MILLISECONDS, 0x8

    .equ TIMER_READ_OPERATION,  0
    .equ TIMER_COUNT_OPERATION, 1

    direction: .byte 0 # 0 = sx, 1 = dx
    photocells: .word PHOTOCELL_1_START, PHOTOCELL_2_START
    time: .long 0 # time between photocell 1 and photocell 2
    photocell2_passed: .byte 0 # 0 = no, 1 = yes

.text
    enable_photocell:
        movw photocells(, %rdx, 1), %dx
        outb %al, %dx
        ret

    timer_operation:
        movb %dl, %al
        outb %al, $TIMER_OPERATION
        outb %al, $TIMER_STATUS
    
    .bw:
        inb $TIMER_STATUS, %al
        btb $0, %al
        jnc .bw

        ret

    acquire_time:
        movb $TIMER_READ_OPERATION, %dl
        call timer_operation
        inl $TIMER_MILLISECONDS, %eax
        ret

    start_timer:
        movb $TIMER_COUNT_OPERATION, %dl
        call timer_operation
        ret

    manage_electromagnet:
        xorl %ecx, %ecx
        xorq %rdx, %rdx
        movl time, %ebx
        shrl $6, %ebx # 1/64
        movb $1, %al # Enable electromagnet
        outb %al, $ELECTROMAGNET

    .loop:
        call start_timer
        .waste_cycles:
            addq $1, %rdx
            cmpq $100, %rdx
            jnz .waste_cycles
        call acquire_time
        addl %eax, %ecx
        cmpl %ecx, %ebx
        jnc .loop # Exits the loop when the time spent in the loop is > 1/64 * %rbx
        
        movb $0, %al # Disable electromagnet
        outb %al, $ELECTROMAGNET
        ret

    main:
        movq $0, %rdx
        call enable_photocell

        sti # I'm ready to receive interruptions (IF = 1)

    .main_loop:
        hlt
        cmpb $1, photocell2_passed
        jnz .main_loop

        call manage_electromagnet
        movq $0, photocell2_passed
        jmp .main_loop

.driver 1 # PHOTOCELL 1
    cmpb $0, direction
    jnz .ret
    call start_timer
    movq $1, %rdx
    call enable_photocell
.ret:
    outb %al, $PHOTOCELL_1_IRQ
    movb $0, direction
    iret

.driver 2 # PHOTOCELL 2
    outb %al, $PHOTOCELL_2_IRQ
    movb $1, direction
    call acquire_time
    movl %eax, time
    # The photocell 1 is enabled to determine the change of direction of the pendulum
    movb $1, photocell2_passed
    movb $0, %rdx
    call enable_photocell
    iret
