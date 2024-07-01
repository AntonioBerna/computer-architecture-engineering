.org 0x800

.data
    gear: .byte 0 # assume that motorcycle is in neutral gear
    
    # For representing the gear on the display assuming that:
    # n = (gfedcba)_2 = (1010100)_2 = (84)_10
    # 1 = (gfedcba)_2 = (0000110)_2 = (6)_10
    # 2 = (gfedcba)_2 = (1011011)_2 = (91)_10
    # 3 = (gfedcba)_2 = (1001111)_2 = (79)_10
    # 4 = (gfedcba)_2 = (1100110)_2 = (102)_10
    # 5 = (gfedcba)_2 = (1101101)_2 = (109)_10
    bit_stream: .byte 84, 6, 91, 79, 102, 109

    .equ GEAR_BIT_STREAM, 0x1
    .equ GEAR_STATUS, 0x2
    .equ GEARBOX_COUNTER, 0x3
    .equ GEARBOX_IRQ, 0x4

.text
    main:
        sti # I'm ready to receive interruptions (IF = 1)
    
    .loop:
        hlt
        jmp .loop

.driver 1 # GEARBOX
    pushq %rax
    pushq %rcx

    inb $GEARBOX_COUNTER, %al
    addb %al, gear
    outb %al, $GEARBOX_IRQ
    movzbq gear, %rcx
    movb bit_stream(, %rcx, 1), %al
    outb %al, $GEAR_BIT_STREAM
    outb %al, $GEAR_STATUS

.bw:
    inb $GEAR_STATUS, %al
    btb $0, %al
    jnc .bw

    popq %rcx
    popq %rax
    iret
