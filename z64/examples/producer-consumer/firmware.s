.org 0x800

.data
    .equ PRODUCER_STATUS, 0x1
    .equ PRODUCER_IRQ,    0x2
    .equ PRODUCER_REG,    0x3
    .equ CONSUMER_STATUS, 0x4
    .equ CONSUMER_IRQ,    0x5
    .equ CONSUMER_REG,    0x6

    buffer: .byte 0
    turn: .byte 0 # 0 = producer, 1 = consumer

.text
    main:
        outb %al, $PRODUCER_STATUS
        
        sti # I'm ready to receive interruptions (IF = 1)

    .loop:
        btb $0, turn
        jnc .loop

        movb buffer, %al
        outb %al, $CONSUMER_REG
        outb %al, $CONSUMER_STATUS

        hlt
        jmp .loop

    .driver 1 # PRODUCER
        pushq %rax

        inb $PRODUCER_REG, %al
        outb %al, $PRODUCER_IRQ # Delete the interruption

        movb %al, buffer
        addb $1, turn

        popq %rax
        iret

    .driver 2 # CONSUMER
        outb %al, $CONSUMER_IRQ # Delete the interruption
        addb $1, turn # Change the turn
        iret
