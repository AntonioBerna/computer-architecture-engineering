.org 0x800

.data
  state: .long 0                               
  transition_table: .quad transition_start, transition_q, transition_z, transition_3, transition_2, transition_7, transition_fail, transition_x, transition_n, transition_l, transition_9, transition_fail, transition_fail

.text

transition_start:                       
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$81, %eax
	jnz	.fail
	movl	$1, -4(%rbp)
	jmp	.label0_3
  .label0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_q:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$122, %eax
	jnz	.fail
	movl	$2, -4(%rbp)
	jmp	.label1_3
  .label1_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_z:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$122, %eax
	jnz	.label2_2
	movl	$2, -4(%rbp)
	jmp	.label2_5
  .label2_2:
	movsbl	-5(%rbp), %eax
	cmpl	$51, %eax
	jnz	.fail
	movl	$3, -4(%rbp)
	jmp	.label2_5
  .label2_5:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_3:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$50, %eax
	jnz	.label3_2
	movl	$4, -4(%rbp)
	jmp	.label3_3
  .label3_2:
	movl	$12, -4(%rbp)
  .label3_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_2:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$55, %eax
	jnz	.fail
	movl	$5, -4(%rbp)
	jmp	.label4_3
  .label4_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_7:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$120, %eax
	jnz	.label5_2
	movl	$7, -4(%rbp)
	jmp	.label5_3
  .label5_2:
	movl	$8, -4(%rbp)
  .label5_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_x:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$120, %eax
	jz	.label6_2
	movl	$8, -4(%rbp)
	jmp	.label6_3
  .label6_2:
	movl	$7, -4(%rbp)
  .label6_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_n:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$110, %eax
	jnz	.label7_2
	movl	$8, -4(%rbp)
	jmp	.label7_5
  .label7_2:
	movsbl	-5(%rbp), %eax
	cmpl	$108, %eax
	jnz	.fail
	movl	$9, -4(%rbp)
	jmp	.label7_5
  .label7_5:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_l:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$57, %eax
	jnz	.fail
	movl	$10, -4(%rbp)
	jmp	.label8_3
  .label8_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_9:                           
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	cmpl	$108, %eax
	jnz	.fail
	movl	$9, -4(%rbp)
	jmp	.label9_3
  .label9_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq

transition_fail:                        
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
    .fail:
	movl	$12, %eax
	popq	%rbp
	retq

main:                                   
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$2, -8(%rbp)
	jz	.label11_2
	movl	$1, -4(%rbp)
	jmp	.label11_9
  .label11_2:
	movl	$0, -20(%rbp)
  .label11_3:                               
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx,1), %eax
	cmpl	$0, %eax
	jz	.label11_6
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx,1), %al
	movb	%al, -21(%rbp)
	movl	state, %eax
	movl	%eax, %ecx
	leaq	transition_table, %rax
	movq	(%rax,%rcx,8), %rax
	movsbl	-21(%rbp), %edi
	callq	*%rax
	movl	%eax, state
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.label11_3
  .label11_6:
	cmpl	$10, state
	jnz	.label11_8
	movl	$2, -4(%rbp)
	jmp	.label11_9
  .label11_8:
	movl	$1, -4(%rbp)
  .label11_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
