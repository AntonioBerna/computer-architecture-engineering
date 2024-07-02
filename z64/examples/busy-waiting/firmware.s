.org 0x800

.data
    .equ VOLTAGE_STATUS, 0x0
    .equ VOLTAGE_REG, 0x1

    . = 0x1200

    vector: .fill 400, 2

.text
    input:
        pushq %rbx
        xorq %rbx, %rbx

        # This busy-waiting loop is used because the CU is connected to the Q output of the flip-flop
        # If the CU is connected to the Q' output of the flip-flop the following four lines should be commented
        # and the movw $VOLTAGE_STATUS, %dx should be replaced by movb $1, %al after .acquire label
    .bw1:
        inb $VOLTAGE_STATUS, %al
        btb $0, %al
        jnc .bw1

    # loop to read the voltage values
    .acquire:
        outb %al, $VOLTAGE_STATUS
    
    .bw2:
        inb $VOLTAGE_STATUS, %al
        btb $0, %al
        jnc .bw2

        inb $VOLTAGE_REG, %al
        movw %ax, (%rsi, %rbx, 2)

        addq $1, %rbx
        cmpq %rbx, %rdi
        jnz .acquire

        popq %rbx
        ret

    main:
        movq $100, %rdi
        movq $vector, %rsi
        call input
        hlt
