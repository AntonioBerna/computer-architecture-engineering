.org 0x800

.data
    temperatures: .word 250, 250, 250, 250 # 4 temperatures

    .equ T_MIN, 200
    .equ T_MAX, 300

    .equ SENSOR1_REG, 0x0
    .equ SENSOR2_REG, 0x1
    .equ SENSOR3_REG, 0x2
    .equ SENSOR4_REG, 0x3

    .equ SENSOR1_STATUS, 0x4
    .equ SENSOR2_STATUS, 0x5
    .equ SENSOR3_STATUS, 0x6
    .equ SENSOR4_STATUS, 0x7

    .equ SENSOR1_IRQ, 0x8
    .equ SENSOR2_IRQ, 0x9
    .equ SENSOR3_IRQ, 0xA
    .equ SENSOR4_IRQ, 0xB

    .equ ALARM, 0xC

.text
    arithmetic_average:
        movq $temperatures, %rdx

        xorw %ax, %ax
        addw (%rdx), %ax
        addw 2(%rdx), %ax
        addw 4(%rdx), %ax
        addw 6(%rdx), %ax
        shrw $2, %ax
        ret

    get:
        pushq %rax
        pushq %rdx
        
        movw %di, %dx
        inw %dx, %ax # Read temperature
        movw %ax, temperatures(, %rsi, 2)
        
        movw %si, %dx
        outb %al, %dx # Reset sensor

        popq %rdx

        outb %al, %dx # Delete the interruption

        popq %rax
        ret


    main:
        xorw %r8w, %r8w
        xorw %r9w, %r9w

        # Start sensors
        outb %al, $SENSOR1_STATUS
        outb %al, $SENSOR2_STATUS
        outb %al, $SENSOR3_STATUS
        outb %al, $SENSOR4_STATUS

        sti # I'm ready to receive interruptions (IF = 1)
    
    .loop:
        movw %r8w, %r9w # old average = new average
        call arithmetic_average

        movw %ax, %r8w
        cmpw %r8w, %r9w
        jz .loop # if new average == old average, repeat
        
        movb $1, %al # Alarm
        
        cmpw $T_MAX, %r8w
        jnc .set # if T_MAX <= r8w
        
        cmpw $T_MIN, %r8w
        jc .set # if T_MIN > r8w

        xorb %al, %al # No alarm
    
    .set:
        outb %al, $ALARM
        
        jmp .loop

.driver 1 # SENSOR1
    pushq %rdi
    pushq %rsi
    pushq %rdx

    movq $SENSOR1_REG, %rdi
    movq $SENSOR1_STATUS, %rsi
    movq $SENSOR1_IRQ, %rdx
    call get

    popq %rdx
    popq %rsi
    popq %rdi
    iret

.driver 2 # SENSOR2
    pushq %rdi
    pushq %rsi
    pushq %rdx

    movq $SENSOR2_REG, %rdi
    movq $SENSOR2_STATUS, %rsi
    movq $SENSOR2_IRQ, %rdx
    call get

    popq %rdx
    popq %rsi
    popq %rdi
    iret

.driver 3 # SENSOR3
    pushq %rdi
    pushq %rsi
    pushq %rdx

    movq $SENSOR3_REG, %rdi
    movq $SENSOR3_STATUS, %rsi
    movq $SENSOR3_IRQ, %rdx
    call get

    popq %rdx
    popq %rsi
    popq %rdi
    iret

.driver 4 # SENSOR4
    pushq %rdi
    pushq %rsi
    pushq %rdx

    movq $SENSOR4_REG, %rdi
    movq $SENSOR4_STATUS, %rsi
    movq $SENSOR4_IRQ, %rdx
    call get

    popq %rdx
    popq %rsi
    popq %rdi
    iret