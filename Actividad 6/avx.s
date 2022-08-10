bits 64
%include "io64.inc"
cadena1:	db "Sin capasida AVX",0x0a,0
cadena2: db "Con capacidades AVX",0x0a,0
frm:     db "%s",0
section .test
extern printf
global CMAIN
CMAIN:
    push rbp
    mov rbp,rsp
    push rbx
    
    mov rax,1
    cpuid   ;llamar a info
    mov eax,28
    bt ecx,eax  ;probar bit avx
    jnc no_avx
    xor rax,rax
    mov rsi,frm
    mov rdi,cadena2
    call printf wrt ..plt
    
    pop rbx
salida:    leave 
    ret ;regresar al shell
    
no_avx:     
    xor rax,rax
    mov rsi,frm
    mov rdi,cadena1
    call printf wrt ..plt
    mov rax,0
    pop rbx
    jmp salida
