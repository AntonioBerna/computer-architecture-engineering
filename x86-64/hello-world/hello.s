.section .data
msg: .asciz "Hello, World!\n"

.section .text
.global main

main:
    mov $1, %rax
    mov $1, %rdi
    lea msg(%rip), %rsi
    mov $14, %rdx
    syscall

    xor %rax, %rax
    ret
