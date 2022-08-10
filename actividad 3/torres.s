%include "io64.inc"
;BITS  64
section .data
titulo: db 0x0a,"Torres de Hanoi",0xa,0
cad1:   db 0x0a,"Torre uno",0xa,0
cad2:   db 0x0a,"Torre dos",0xa,0
cad3:   db 0x0a,"Torre tres",0xa,0
frm:    db  " %d: ",0

vec1:  dq   1,2,3,4,5
vec2:  dq   0,0,0,0,0
vec3:  dq   0,0,0,0,0


section .bss
aux1:   resq 1


section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
        push rbp
        push rbx
        mov rbp,rsp
        sub rsp,64
    
    ;impresion del titulo
    mov rax,0
    lea rdi,[rel titulo]
    call printf WRT ..plt
    
    
    ;Empezar los movimientos
    mov rcx,5;rescatar los datos de la pila 
    lea rdx,[rel vec1]
   lea rsi,[rel vec2]
     
    
            
    cambio:
        mov rax,[rdx]
        mov[rsi],rax
        mov rax,0
        mov [rdx],rax
        add rdx,8
        add rsi,8
            loop cambio
        lea rsi,[rel vec2]
        lea rdi,[rel vec3] 
        mov rcx,5
    cambio2:
        mov rax,[rsi]
        mov [rdi],rax
        mov rax,0
        mov [rsi],rax
        
        add rdi,8
        add rsi,8
        loop cambio2
     
    mov rax,0
    lea rdi,[rel cad1]
    call printf WRT ..plt
    
    xor rax,rax
    mov rax,[rel vec1]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    xor rax,rax
    mov rax,[rel vec1+8]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    xor rax,rax
    mov rax,[rel vec1+16]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    xor rax,rax
    mov rax,[rel vec1+24]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    mov rax,[rel vec1+32]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    
    mov rax,0
    lea rdi,[rel cad2]
    call printf WRT ..plt
    
    
    
    
     xor rax,rax
    mov rax,[rel vec2]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    xor rax,rax
    mov rax,[rel vec2+8]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    xor rax,rax
    mov rax,[rel vec2+16]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    xor rax,rax
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
    
    
    
    mov rax,0
    lea rdi,[rel cad3]
    call printf WRT ..plt
    
    
    
     xor rax,rax
    mov rax,[rel vec3]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    xor rax,rax
    mov rax,[rel vec3+8]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    xor rax,rax
    mov rax,[rel vec3+16]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    xor rax,rax
    mov rax,[rel vec3+24]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    mov rax,[rel vec3+32]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
   
        
    mov rsp,rbp
    pop rbx
    pop rbp
    
    ret