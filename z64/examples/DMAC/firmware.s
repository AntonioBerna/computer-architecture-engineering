.org 0x800

.data
    msg: .ascii "It's too hot!"
    len = . - msg

    .equ interval, 10
    
    .equ TEMPERATURE_STATUS, 0x0
    .equ TEMPERATURE_REG, 0x1
    .equ TIMER_REG, 0x2
    .equ TIMER, 0x3
    .equ MONITOR, 0x4
    .equ theshold, 40 # degrees

.text
    main:
        movw $interval, %ax
        outw %ax, $TIMER_REG # Configure TIMER
        movb $1, %al # Start TIMER
        outb %al, $TIMER

        sti # I'm ready to receive interruptions (IF = 1)

    .end:
        hlt
        jmp .end

    .driver 0 # TIMER
        outb %al, $TEMPERATURE_STATUS

    .bw:
        inb $TEMPERATURE_STATUS, %al
        btb $0, %al
        jnc .bw

        inb $TEMPERATURE_REG, %al

        cmpb $theshold, %al
        jc .lower # %al < $theshold if CF = 1

        movw $MONITOR, %dx # Program the system DMAC
        movq $msg, %rsi
        movq $len, %rcx
        cld
        outsb # Transfers one byte at a time to the MONITOR

    .lower:
        movb $0, %al
        outb %al, $TIMER # Delete the interruption

        movb $1, %al
        outb %al, $TIMER # Restart TIMER
        
        iret