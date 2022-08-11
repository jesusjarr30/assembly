%include "io64.inc"
BITS 64

section .data
cad1:   db 0x0a,"Primer vector",0xa,0
cad2:   db 0x0a,"Segundo vector",0xa,0
cad3:   db 0x0a,"La suma es",0xa,0
cad4:   db 0x0a,"La multiplicacion de vectores es:",0xa,0
frm:    db  " %d: ",0

mensj1: db "lectura txt",0x0a,0    ; 
nombre: db "prueba.txt",0
frm2:	db "%s",10,0

vec1: dq    566,898,123,4565
vec2: dq    607,536,869,5632
section .bss
fd:	resq 1
buffer:	resb 80
aux: resq 1
sumaVec: resq 4
mulVec:  resq 4

section .text
global CMAIN
extern printf
CMAIN:
    mov rbp, rsp; for correct debugging
        
        push rbp
        push rbx
        mov rbp,rsp
        sub rsp,64
        
        xor rax,rax
	mov rdi,frm2
	mov rsi,mensj1
	call printf WRT ..plt
	
	mov rax,02	;sys_open
	mov rdi,nombre
	mov rsi,0102o	;escritura_lectura
	mov rdx,0666o	
	syscall		

	mov    [rel fd],rax
	mov    rax, 0         
        mov    rdi, [rel fd]       
        mov    rsi, buffer    
        mov    rdx, 40	
        syscall

	xor rax,rax
	mov rdi,frm2
	mov rsi,buffer
	call printf WRT ..plt
	
	

        mov rax, 3             ; cerrar archivo
        mov rdi, [rel fd]      ; descriptor  
        syscall 
        
        mov rax,0
        lea rdi,[rel cad1]
        call printf WRT ..plt
        ;impresiones del primer vector
        xor rax,rax
        mov rax,[rel vec1]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt

        xor rax,rax
        mov rax,[rel vec1+8]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt

        xor rax,rax
        mov rax,[rel vec1+16]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt
        
        xor rax,rax
        mov rax,[rel vec1+24]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt
        
        ;finaliza impresion de l primer vector
        
        ;Impresion de el segundo vector
        mov rax,0
        lea rdi,[rel cad2]
        call printf WRT ..plt
        ;impresiones del primer vector
        xor rax,rax
        mov rax,[rel vec2]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt

        xor rax,rax
        mov rax,[rel vec2+8]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt

        xor rax,rax
        mov rax,[rel vec2+16]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt
        
        xor rax,rax
        mov rax,[rel vec2+24]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt
        ;termina la impresion del segundo vector
        
        xor rax,rax
        mov rcx,4               ;suma de 8 elementos
        lea rbx,[rel sumaVec]
        lea rsi,[rel vec1]      
        lea rdi,[rel vec2]      ;cargar direccion efectiva de vecor 2
ciclo:mov rax,[rsi]
    add rax,[rdi]   ;A[j]+B[j]->suma
    mov [rbx],rax   ;c[j] = suma
        add rdi,8
        add rsi,8
        add rbx,8
    loopnz ciclo
    ;impresion de la suma de vectores
    mov rax,0
    lea rdi,[rel cad3]
    call printf WRT ..plt
        
        
    xor rax,rax
    mov rax,[rel sumaVec]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    xor rax,rax
    mov rax,[rel sumaVec+8]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    xor rax,rax
    mov rax,[rel sumaVec+16]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    xor rax,rax
    mov rax,[rel sumaVec+24]   ;parm2 = suma
    mov rsi,rax
    mov rdi,frm     ;formato para impresion
    mov rax,0          ;no para flotantes
    call printf WRT ..plt
    
    ;empieza la multiplicacion de vectores
    
    xor rax,rax
    mov [rel aux],rax
    mov rcx,4
    lea rsi,[rel vec1]      
    lea rdi,[rel vec2]
    xor rax,rax
ciclo_mul:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    mov rbx,[rel aux]
    add rax,rbx
    mov [rel aux],rax
    add rsi,8
    add rdi,8
    loopnz ciclo_mul

    
      mov rax,0
      lea rdi,[rel cad4]
      call printf WRT ..plt
    
        xor rax,rax
        mov rax,[rel aux]   
        mov rsi,rax
        mov rdi,frm     ;formato para impresion
        mov rax,0          ;no para flotantes
        call printf WRT ..plt

    mov rsp,rbp
    pop rbx
    pop rbp
    
    ret
    
    
    
