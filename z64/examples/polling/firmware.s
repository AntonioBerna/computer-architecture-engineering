.org 0x800

.data
    .equ P1_STATUS, 0x1
    .equ P1_REG,    0x2
    .equ P2_STATUS, 0x3
    .equ P2_REG,    0x4
    .equ P3_STATUS, 0x5
    .equ P3_REG,    0x6
    .equ P4_STATUS, 0x7
    .equ P4_REG,    0x8

    . = 0x1200

    vector: .fill 400, 2

.text
    read:
        xorq %rbx, %rbx
        
        outb %al, $P1_STATUS
        outb %al, $P2_STATUS
        outb %al, $P3_STATUS
        outb %al, $P4_STATUS
    
    .poll:
        inb $P1_STATUS, %al
        btb $0, %al
        jc .p1
        
        inb $P2_STATUS, %al
        btb $0, %al
        jc .p2

        inb $P3_STATUS, %al
        btb $0, %al
        jc .p3

        inb $P4_STATUS, %al
        btb $0, %al
        jc .p4

        jmp .poll

    .p1:
        movw $P1_REG, %dx
        movw $P1_STATUS, %r8w
        jmp .acquire

    .p2:
        movw $P2_REG, %dx
        movw $P2_STATUS, %r8w
        jmp .acquire

    .p3:
        movw $P3_REG, %dx
        movw $P3_STATUS, %r8w
        jmp .acquire

    .p4:
        movw $P4_REG, %dx
        movw $P4_STATUS, %r8w
        jmp .acquire

    .acquire:
        inw %dx, %ax
        movw %ax, (%rsi, %rbx, 2)
        
        addq $1, %rbx
        movw %r8w, %dx
        outb %al, %dx
        jmp .poll

    main:
        movq $100, %rdi
        movq $vector, %rsi
        call read
        hlt