.org 0x800

.data
    operation: .byte 0 # used to store the next operation for BAR peripheral
    .equ BOA_SX_IRQ,    0x1
    .equ BOA_DX_IRQ,    0x2
    .equ BAR_DIRECTION, 0x3
    .equ BAR_STATUS,    0x4

.text
    switch_bar:
        pushb %al

        movb operation, %al
        outb %al, $BAR_DIRECTION
        outb %al, $BAR_STATUS
    
    .bw:
        inb $BAR_STATUS, %al
        btb $0, %al
        jnc .bw

        addb $1, operation
        
        popb %al
        ret

    main:
        sti # I'm ready to receive interruptions (IF = 1)
    
    .loop:
        hlt
        jmp .loop

.driver 1 # Left BOA
    call switch_bar
    outb %al, $BOA_SX_IRQ
    iret

.driver 2 # Right BOA
    call switch_bar
    outb %al, $BOA_DX_IRQ
    iret
