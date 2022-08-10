%include "io64.inc"
section .data
cad1:   db 0x0a,"Triangulo de pascal",0xa,0
vec1: dq    0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
vec2: dq    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
frm:    db  " %d: ",0

section .bss
aux1: resq 1

cont: resq 1
impresion: resq 1
section .text
global CMAIN
extern printf
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    xor rax, rax
    push rbp
        push rbx
        mov rbp,rsp
        sub rsp,64
    
    
    
    mov rax,0
    lea rdi,[rel cad1]
    call printf WRT ..plt
   
    mov rbx,2
    mov [rel aux1],rbx;numeros en el arreglo
    mov rcx,0xd;debe de ir d
    
ciclo1:
    lea rdi,[rel vec1]
    lea rsi,[rel vec2]
    mov [rel cont],rcx
    mov rcx,[rel aux1]
    vector2:
       mov rax,[rdi]
       add rdi,8
       mov rbx,[rdi]
       add rax,rbx
       add rsi,8
       mov [rsi],rax
       
        loop vector2
    
    
     mov rcx,[rel aux1]
    lea rdi,[rel vec1]
    lea rsi,[rel vec2]
    add rsi,8
    add rdi,8
    ciclo: ;acomodo
        mov rax,[rsi]
        mov [rdi],rax
        
        add rsi,8
        add rdi,8
       
        loop ciclo
    
    mov rax,[rel aux1]
    add rax,1
    mov [rel aux1],rax
    mov rcx,[rel cont]      
    loop ciclo1
    
    



            xor rax,rax
            mov rax,[rel vec2+8]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+16]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+24]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+32]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+40]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+48]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+56]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+64]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+72]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+80]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+88]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+96]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+104]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt
            
            mov rax,[rel vec2+112]   ;parm2 = suma
            mov rsi,rax
            mov rdi,frm     ;formato para impresion
            mov rax,0          ;no para flotantes
            call printf WRT ..plt

           

  
    mov rsp,rbp
    pop rbx
    pop rbp
    
     
    ret