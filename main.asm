extern printf
extern exit

global main

section .text

main:
  ; printf("Hello, world!\n");
  mov rdi, message1
  ;mov rax, 0
  push rbx
  call printf
  pop rbx

  ;scanf()

  ; exit(0)
  mov rax, 0
  call exit
 
section .data
  message1 db "Enter Your First Name: ", 0ah, 0dh, 0
  message2 db "Enter Your Current Age: ", 0ah, 0dh, 0

