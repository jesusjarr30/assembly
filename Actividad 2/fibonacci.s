%include "io64.inc"
BITS 64
section .data
cad1: db 0x0a,"Serie de Fibonacci",0xa,0
frm:    db  " %d: ",0
section .bss

cont: resq 1
y:  resq 1
x:  resq 1
z:  resq 1
aux:    resq 1

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
   
   
    ;impresion del titulo
    mov rax,0
    lea rdi,[rel cad1]
    call printf WRT ..plt
     mov rax,1
     add rax,48
     mov [rel aux],rax
     mov rax,0
    lea rdi,[rel aux]
    call printf WRT ..plt
     
    
    
    
    ;variables 
    mov rcx,45; contador
    mov rbx,1;seria y
    mov [rel y],rbx
    mov rbx,0;es z
    mov [rel z],rbx
    
    
    
    
    
ciclo:
    mov [rel cont],rcx 
    xor rbx,rbx
    add rbx,[rel x]
    add rbx,[rel y]
    
    mov [rel z],rbx
    ;para impresion
    xor rax,rax
    mov rax,rbx   
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    ;termina la impresion
    
    mov rdx,[rel y]
    mov [rel x],rdx
    
    mov rdx,[rel z]
    mov [rel y],rdx
    
    mov rcx,[rel cont] 
    
    loopnz ciclo
    
    
    
    ret