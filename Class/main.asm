extern printf
extern scanf
extern exit

global main

section .text

main:
  mov rdi, promptFormat
  mov rsi, prompt_name
  mov rax, 0
  push rbx
  call printf
  pop rbx

  mov rdi, inputFormat_string
  mov rsi, name
  mov rax, 0
  push rcx
  call scanf
  pop rcx

  mov rdi, promptFormat
  mov rsi, prompt_age
  mov rax, 0
  push rbx
  call printf
  pop rbx

  mov rdi, inputFormat_int
  mov rsi, age
  mov rax, 0
  push rcx
  call scanf
  pop rcx
  

  mov rdi, resultFormat
  mov rsi, name
  mov rax, 0
  push rbx
  call printf
  pop rbx
  



  ; exit(0)
  mov rax, 0
  call exit
 
section .data
  prompt_name db "Enter Your First Name: ", 0
  prompt_age db "Enter Your Current Age: ", 0
  promptFormat db "%s", 0

  inputFormat_string db "%s", 0
  inputFormat_int db "%d", 0
  name dq 0
  age dq 0

  resultFormat db "%s is %d years old.", 0

