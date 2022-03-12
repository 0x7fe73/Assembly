; main.asm
; Author: 0x7fe73
; Date: 12/03/2022

global _start

section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, mlength
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
    ret

section .data
    message db "Hello World!", 12
    mlength equ $ - message
