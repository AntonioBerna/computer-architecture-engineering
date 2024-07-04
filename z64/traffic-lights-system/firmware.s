.org 0x800

.data
	.equ RED,    0xFF0000
	.equ YELLOW, 0xFFFF00
	.equ GREEN,  0x00FF00

  	times: .word 10, 3, 30, 45, 300
  	car_colors: .long GREEN, YELLOW, RED, RED, GREEN 
  	pedestrian_colors: .long RED, RED, GREEN, YELLOW, RED
  
  	.equ STATES, (. - pedestrian_colors) / 4 # STATES = (5 * 4) / 4 = 5, long = 4 byte = 32 bit
  	state: .byte STATES - 1

  	.equ BUTTON_IRQ,                  0x0001
  	.equ CAR_SEMAPHORE_STATUS,        0x0002
  	.equ CAR_SEMAPHORE_COLOR,         0x0003
  	.equ PEDESTRIAN_SEMAPHORE_STATUS, 0x0004
  	.equ PEDESTRIAN_SEMAPHORE_COLOR,  0x0005
  	.equ TIMER_TIME,                  0x0006
  	.equ TIMER_STATUS,                0x0007
  	.equ TIMER_IRQ,                   0x0008

.text
  	turn_on_traffic_lights:
    	movl %edi, %eax
    	outl %eax, %dx

    	movw %si, %dx
    	outl %eax, %dx
    
  	.bw:
    	inb %dx, %al
    	btb $0, %al
    	jnc .bw

    	ret

  	time_it:
    	movzbq state, %rcx
    	movl times(, %rcx, 4), %eax
    	outl %eax, $TIMER_TIME
    	outl %al, $TIMER_STATUS
    	ret

  	switch:
    	movb state, %al
    	addb $1, %al
    	cmpb $STATES, %al
    	jnz .valid_state
    	xorb %al, %al
	
  	.valid_state:
    	movb %al, state
    	movzbq %al, %r12

    	movl car_colors(, %r12, 4), %edi
    	movw $CAR_SEMAPHORE_STATUS, %si
    	movw $CAR_SEMAPHORE_COLOR, %dx
    	call turn_on_traffic_lights
    
    	movl pedestrian_colors(, %r12, 4), %edi
    	movw $PEDESTRIAN_SEMAPHORE_STATUS, %si
    	movw $PEDESTRIAN_SEMAPHORE_COLOR, %dx
    	call turn_on_traffic_lights

    	ret

  	main:
    	# System V ABI Calling Conventions (64 bit):
    	# - First six parameters passed in registers: RDI, RSI, RDX, RCX, R8, R9
    	# - Additional parameters passed on stack
    	# - Callee-save registers: RBP, RBX, R12-R15
    
		movl car_colors, %edi
		movw CAR_SEMAPHORE_STATUS, %si
		movw CAR_SEMAPHORE_COLOR, %dx

		movl pedestrian_colors, %edi
		movw PEDESTRIAN_SEMAPHORE_STATUS, %si
		movw PEDESTRIAN_SEMAPHORE_COLOR, %dx
    
		call turn_on_traffic_lights
		call time_it

    	sti # I'm ready to receive interruptions (IF = 1)
  	
	.loop:
    	hlt
    	call switch
    	call time_it
    	jmp .loop

	.driver 1 # BUTTON
		movb $STATES - 1, state
		outb %al, $BUTTON_IRQ
		iret

	.driver 2 # TIMER
		outb %al, $TIMER_IRQ
		iret
