extern printf
extern scanf
extern exit

global main

section .text

main:
  ; printf("Hello, world!\n");
  mov rdi, prompt_name
  ;mov rax, 0
  push rbx
  call printf
  pop rbx

  ;scanf("%d", &age)
  scanf("%d", &age)

  ; exit(0)
  mov rax, 0
  call exit
 
section .data
  prompt_name db "Enter Your First Name: ", 0ah, 0dh, 0
  prompt_age db "Enter Your Current Age: ", 0ah, 0dh, 0
  age dw 16

