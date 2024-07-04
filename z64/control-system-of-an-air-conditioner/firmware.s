.org 0x800

.data
    .equ FAN_STATUS,             0x1
    .equ DEHUMIDIFIER_STATUS,    0x2
    .equ AIR_CONDITIONER_STATUS, 0x3
    .equ THERMOMETER_STATUS,     0x4
    .equ CONFIGURATION,          0x5
    .equ SPEED,                  0x6
    .equ RECEIVER_IRQ,           0x7
    .equ TEMPERATURE,            0x8

.text
    main:
        sti # I'm ready to receive interruptions (IF = 1)
    
    .loop:
        hlt
        jmp .loop
    
    stops_devices: # I assume that all devices behave like FAN regarding turning on and off
        xorb %al, %al
        outb %al, $FAN_STATUS
        outb %al, $DEHUMIDIFIER_STATUS
        outb %al, $AIR_CONDITIONER_STATUS
        ret

    calculate_speed:
        subb %sil, %dil
        movb $1, %al
        cmpb $3, %dil
        jbe .ret

        subb $4, %dil
        xorb %al, %al
        cmpb $4, %dil
        jna .skip
        
        addb $1, %al
    
    .skip:
        addb $2, %al
    
    .ret:
        ret

    active_fan:
        outb %al, $THERMOMETER_STATUS
    
    .bw:
        inb $THERMOMETER_STATUS, %al
        btb $0, %al
        jnc .bw
        
        inb $TEMPERATURE, %al
        movb %dil, %sil
        andb $31, %sil
        movb %al, %dil
        call calculate_speed
        
        outb %al, $SPEED
        movb $1, %al
        outb %al, $FAN_STATUS

        ret

    active_dehumidifier:
        movb $1, %al
        outb %al, $DEHUMIDIFIER_STATUS
        ret

    active_air_conditioner:
        movb $1, %al
        outb %al, $AIR_CONDITIONER_STATUS
        ret

    .driver 0 # RECEIVER
        call stops_devices
        
        inb $CONFIGURATION, %al
        pushb %al

        outb %al, $RECEIVER_IRQ
        btb $7, %al
        jnc .else1
        
        movb %al, %dil
        call active_fan
        jmp .end

    .else1:
        btb $6, (%rsp)
        jnc .else2
        call active_dehumidifier
        jmp .end
    
    .else2:
        btb $5, (%rsp)
        jnc .end
        call active_air_conditioner
    
    .end:
        addq $1, %rsp
        iret