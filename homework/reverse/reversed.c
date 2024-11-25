/*
.org 0x800          // program starts at address 0x800

.data               // data section
	state: .long 0  // initialize 32-bit state variable to 0
	transition_table: .quad transition_start, transition_q, transition_z, transition_3,
	                        transition_2, transition_7, transition_fail, transition_x,
							transition_n, transition_l, transition_9, transition_fail, transition_fail
*/
static int state = 0;

typedef int (*transition_f)(char);
int transition_start(char input);
int transition_q(char input);
int transition_z(char input);
int transition_3(char input);
int transition_2(char input);
int transition_7(char input);
int transition_x(char input);
int transition_n(char input);
int transition_l(char input);
int transition_9(char input);
int transition_fail(char input);

transition_f transition_table[] = {
    transition_start,  // state 0
    transition_q,      // state 1
    transition_z,      // state 2
    transition_3,      // state 3
    transition_2,      // state 4
    transition_7,      // state 5
    transition_fail,   // state 6
    transition_x,      // state 7
    transition_n,      // state 8
    transition_l,      // state 9
    transition_9,      // state 10
    transition_fail,   // state 11
    transition_fail    // state 12
};

/*
transition_start:                       
    pushq %rbp              // function prologue
    movq %rsp, %rbp
    movb %dil, %al          // get input char from first argument
    movb %al, -5(%rbp)      // store input on stack
    movsbl -5(%rbp), %eax   // sign extend byte to long
    cmpl $81, %eax          // compare with 'Q' (ASCII 81)
    jnz .fail               // if not 'Q', go to fail
    movl $1, -4(%rbp)       // set return value to 1
    jmp .label0_3           // jump to return
  .label0_3:
    movl -4(%rbp), %eax     // get return value
    popq %rbp               // function epilogue
    retq
*/
int transition_start(char input) {
	if (input != 'Q') // cmpl $81, %eax
		return 12;    // jmp .fail
	return 1;         // movl $1, -4(%rbp)
}

/*
transition_q:                           
    pushq %rbp
    movq %rsp, %rbp
    movb %dil, %al
    movb %al, -5(%rbp)
    movsbl -5(%rbp), %eax
    cmpl $122, %eax       // compare with 'z' (ASCII 122)
    jnz .fail             // if not 'z', go to fail
    movl $2, -4(%rbp)     // set return value to 2
    jmp .label1_3
  .label1_3:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_q(char input) {
	if (input != 'z') // cmpl $122, %eax
		return 12;    // jmp .fail
	return 2;         // movl $2, -4(%rbp)
}

/*
transition_z:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $122, %eax        // compare with 'z' (ASCII 122)
	jnz	.label2_2
	movl $2, -4(%rbp)
	jmp	.label2_5
  .label2_2:
	movsbl -5(%rbp), %eax
	cmpl $51, %eax         // compare with '3' (ASCII 51)
	jnz	.fail
	movl $3, -4(%rbp)
	jmp	.label2_5
  .label2_5:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_z(char input) {
	if (input == 'z') // cmpl $122, %eax
		return 2;     // movl $2, -4(%rbp)
	if (input == '3') // cmpl $51, %eax
		return 3;     // movl $3, -4(%rbp)
	return 12;        // jmp .fail
}

/*
transition_3:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $50, %eax        // compare with '2' (ASCII 50)
	jnz	.label3_2
	movl $4, -4(%rbp)
	jmp	.label3_3
  .label3_2:
	movl $12, -4(%rbp)
  .label3_3:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_3(char input) {
	if (input == '2') // cmpl $50, %eax
		return 4;     // movl $4, -4(%rbp)
	return 12;        // movl $12, -4(%rbp)
}

/*
transition_2:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $55, %eax        // compare with '7' (ASCII 55)
	jnz	.fail
	movl $5, -4(%rbp)
	jmp	.label4_3
  .label4_3:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_2(char input) {
	if (input != '7') // cmpl $55, %eax
		return 12;    // jmp .fail
	return 5;         // movl $5, -4(%rbp)
}

/*
transition_7:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $120, %eax       // compare with 'x' (ASCII 120)
	jnz	.label5_2
	movl $7, -4(%rbp)
	jmp	.label5_3
  .label5_2:
	movl $8, -4(%rbp)
  .label5_3:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_7(char input) {
	if (input == 'x') // cmpl $120, %eax
		return 7;     // movl $7, -4(%rbp)
	return 8;         // movl $8, -4(%rbp)
}

/*
transition_x:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $120, %eax       // compare with 'x' (ASCII 120)
	jz .label6_2
	movl $8, -4(%rbp)
	jmp	.label6_3
  .label6_2:
	movl $7, -4(%rbp)
  .label6_3:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_x(char input) {
	if (input == 'x') // cmpl $120, %eax
		return 7;     // movl $7, -4(%rbp)
	return 8;         // movl $8, -4(%rbp)
}

/*
transition_n:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $110, %eax       // compare with 'n' (ASCII 110)
	jnz	.label7_2
	movl $8, -4(%rbp)
	jmp	.label7_5
  .label7_2:
	movsbl -5(%rbp), %eax
	cmpl $108, %eax       // compare with 'l' (ASCII 108)
	jnz	.fail
	movl $9, -4(%rbp)
	jmp	.label7_5
  .label7_5:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_n(char input) {
	if (input == 'n') // cmpl $110, %eax
		return 8;     // movl $8, -4(%rbp)
	if (input == 'l') // cmpl $108, %eax
		return 9;     // movl $9, -4(%rbp)
	return 12;        // jmp .fail
}

/*
transition_l:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $57, %eax        // compare with '9' (ASCII 57)
	jnz	.fail
	movl $10, -4(%rbp)
	jmp	.label8_3
  .label8_3:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_l(char input) {
	if (input != '9') // cmpl $57, %eax
		return 12;    // jmp .fail
	return 10;        // movl $10, -4(%rbp)
}

/*
transition_9:                           
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -5(%rbp)
	movsbl -5(%rbp), %eax
	cmpl $108, %eax       // compare with 'l' (ASCII 108)
	jnz	.fail
	movl $9, -4(%rbp)
	jmp	.label9_3
  .label9_3:
	movl -4(%rbp), %eax
	popq %rbp
	retq
*/
int transition_9(char input) {
	if (input != 'l') // cmpl $108, %eax
		return 12;    // jmp .fail
	return 9;         // movl $9, -4(%rbp)
}

/*
transition_fail:                        
	pushq %rbp
	movq %rsp, %rbp
	movb %dil, %al
	movb %al, -1(%rbp)
    .fail:
	movl $12, %eax
	popq %rbp
	retq
*/
int transition_fail(char input) {
	return 12; // movl $12, %eax
}

/*
main:                                   
    pushq %rbp            // function prologue
    movq %rsp, %rbp
    subq $32, %rsp        // allocate stack space
    movl $0, -4(%rbp)     // initialize return value
    movl %edi, -8(%rbp)   // store argc
    movq %rsi, -16(%rbp)  // store argv
    cmpl $2, -8(%rbp)     // check if argc == 2
    jz .label11_2         // if argc == 2, continue
    movl $1, -4(%rbp)     // if argc != 2, return 1
    jmp .label11_9
*/
int main(int argc, char **argv) {
	if (argc != 2) // cmpl $2, -8(%rbp)
		return 1;  // movl $1, -4(%rbp)
	
	/*
	.label11_2:
		movl $0, -20(%rbp)            // initialize index i = 0
	.label11_3:                       // loop start
		movq -16(%rbp), %rax          // get argv
		movq 8(%rax), %rax            // get argv[1]
		movslq -20(%rbp), %rcx        // get current index i
		movsbl (%rax,%rcx,1), %eax    // get current char
		cmpl $0, %eax                 // check if null terminator
		jz .label11_6                 // if null, exit loop	
	*/
	for (int i = 0; argv[1][i] != '\0'; ++i) {
		// Bounds check for state
        if (state < 0 || state >= sizeof(transition_table) / sizeof(transition_table[0])) 
            return 1;
		
		/*
		movq -16(%rbp), %rax
		movq 8(%rax), %rax
		movslq -20(%rbp), %rcx
		movb (%rax,%rcx,1), %al
		movb %al, -21(%rbp)
		movl state, %eax
		movl %eax, %ecx
		leaq transition_table, %rax
		movq (%rax,%rcx,8), %rax     // get transition function
		movsbl -21(%rbp), %edi
		callq *%rax                  // call transition function
		movl %eax, state             // update state
		*/
		state = transition_table[state](argv[1][i]);
	}

	/*
	.label11_6:
		cmpl $10, state    // check if final state is 10
		jnz	.label11_8
		movl $2, -4(%rbp)  // if state == 10, return 2
		jmp	.label11_9
	.label11_8:
		movl $1, -4(%rbp)  // if state != 10, return 1
	*/
	return (state == 10) ? 2 : 1; // cmpl $10, state
}
