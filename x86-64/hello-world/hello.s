.data
msg:
    .ascii "Hello, world!\n"
    len = . - msg

.text
.globl _start

_start:
    mov $1, %rax        # syscall number for sys_write
    mov $1, %rdi        # file descriptor 1 (stdout)
    mov $msg, %rsi      # pointer to the message
    mov $len, %rdx      # message length
    syscall             # make the system call

    mov $60, %rax       # syscall number for sys_exit
    xor %rdi, %rdi      # return 0 status
    syscall             # make the system call

