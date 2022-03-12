; main.asm
; Author: 0x7fe73
; Date: 12/03/2022

global _start

section .text
_start:
    call _print
    call _input
    call _exit
    ret

_print:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, mlength
    syscall
    ret

_input:
    xor rax, rax
    xor rdi, rdi
    mov rsi, answer
    mov rdx, 12
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, answer
    mov rdx, 12
    syscall
    ret

_exit:
    mov rax, 60
    xor rdi, rdi
    syscall
    ret

section .bss
    answer resb 12

section .data
    message db "Whats your name?", 16
    mlength equ $ - message
