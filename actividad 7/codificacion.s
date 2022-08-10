%include "io64.inc"
section .data
cad: db "HOLALOLACACEROLA",10,0
loc:	equ $-cad
frim:	db "%d",10,0
;para este caso definiremos 
;a=1,c=2,e=3,h=4,l=5,r=6,*=7,o=8
;defino mis vectores de mi matriz
vec1: dq 4,8,5
vec2: dq 1,5,8
vec3: dq 5,1,2
vec4: dq 1,2,3
vec5: dq 6,8,5
vec6: dq 1,7,7
;matriz
ma1: dq -3,-3,-4
ma2: dq 0,1,1
ma3: dq 4,3,4
section .bss
aux1 resq 1
aux2 resq 1
aux3 resq 1
cont resq 1
section .text
extern printf
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    xor rax, rax
    mov rcx,3
    lea rsi,[rel vec1]
    lea rdi,[rel ma1]
ciclo:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux1]
    add rax,rbx
    mov [rel aux1],rax
    loop ciclo
    
    mov rcx,3
    lea rsi,[rel vec1]
    lea rdi,[rel ma2]
ciclo2:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux2]
    add rax,rbx
    mov [rel aux2],rax
    loop ciclo2
    mov rcx,3
    lea rsi,[rel vec1]
    lea rdi,[rel ma3]
ciclo3:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux3]
    add rax,rbx
    mov [rel aux3],rax
    loop ciclo3
    
    lea rsi,[rel vec1]
    mov rax,[rel aux1]
    mov [rsi],rax
    mov rax,[rel aux2]
    mov [rsi+8],rax
    mov rax,[rel aux3]
    mov [rsi+16],rax
    xor rax,rax
    mov [rel aux1],rax
    mov [rel aux2],rax
    mov [rel aux3],rax
;empezar el numero dos
    xor rax, rax
    mov rcx,3
    lea rsi,[rel vec2]
    lea rdi,[rel ma1]
ciclo4:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux1]
    add rax,rbx
    mov [rel aux1],rax
    loop ciclo4
    
    mov rcx,3
    lea rsi,[rel vec2]
    lea rdi,[rel ma2]
ciclo5:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux2]
    add rax,rbx
    mov [rel aux2],rax
    loop ciclo5
    mov rcx,3
    lea rsi,[rel vec2]
    lea rdi,[rel ma3]
ciclo6:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux3]
    add rax,rbx
    mov [rel aux3],rax
    loop ciclo6
    
    lea rsi,[rel vec2]
    mov rax,[rel aux1]
    mov [rsi],rax
    mov rax,[rel aux2]
    mov [rsi+8],rax
    mov rax,[rel aux3]
    mov [rsi+16],rax
    xor rax,rax
    mov [rel aux1],rax
    mov [rel aux2],rax
    mov [rel aux3],rax
;empieza vector 3
    xor rax, rax
    mov rcx,3
    lea rsi,[rel vec3]
    lea rdi,[rel ma1]
ciclo7:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux1]
    add rax,rbx
    mov [rel aux1],rax
    loop ciclo7
    
    mov rcx,3
    lea rsi,[rel vec3]
    lea rdi,[rel ma2]
ciclo8:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux2]
    add rax,rbx
    mov [rel aux2],rax
    loop ciclo8
    mov rcx,3
    lea rsi,[rel vec3]
    lea rdi,[rel ma3]
ciclo9:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux3]
    add rax,rbx
    mov [rel aux3],rax
    loop ciclo9
    
    lea rsi,[rel vec3]
    mov rax,[rel aux1]
    mov [rsi],rax
    mov rax,[rel aux2]
    mov [rsi+8],rax
    mov rax,[rel aux3]
    mov [rsi+16],rax
    xor rax,rax
    mov [rel aux1],rax
    mov [rel aux2],rax
    mov [rel aux3],rax
 ;empieza el vector 4
     xor rax, rax
    mov rcx,3
    lea rsi,[rel vec4]
    lea rdi,[rel ma1]
ciclo10:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux1]
    add rax,rbx
    mov [rel aux1],rax
    loop ciclo10
    
    mov rcx,3
    lea rsi,[rel vec4]
    lea rdi,[rel ma2]
ciclo11:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux2]
    add rax,rbx
    mov [rel aux2],rax
    loop ciclo11
    mov rcx,3
    lea rsi,[rel vec4]
    lea rdi,[rel ma3]
ciclo12:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux3]
    add rax,rbx
    mov [rel aux3],rax
    loop ciclo12
    
    lea rsi,[rel vec4]
    mov rax,[rel aux1]
    mov [rsi],rax
    mov rax,[rel aux2]
    mov [rsi+8],rax
    mov rax,[rel aux3]
    mov [rsi+16],rax
    xor rax,rax
    mov [rel aux1],rax
    mov [rel aux2],rax
    mov [rel aux3],rax
;empieza el vector 5
    xor rax, rax
    mov rcx,3
    lea rsi,[rel vec5]
    lea rdi,[rel ma1]
ciclo13:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux1]
    add rax,rbx
    mov [rel aux1],rax
    loop ciclo13
    
    mov rcx,3
    lea rsi,[rel vec5]
    lea rdi,[rel ma2]
ciclo14:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux2]
    add rax,rbx
    mov [rel aux2],rax
    loop ciclo14
    mov rcx,3
    lea rsi,[rel vec5]
    lea rdi,[rel ma3]
ciclo15:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux3]
    add rax,rbx
    mov [rel aux3],rax
    loop ciclo15
    
    lea rsi,[rel vec5]
    mov rax,[rel aux1]
    mov [rsi],rax
    mov rax,[rel aux2]
    mov [rsi+8],rax
    mov rax,[rel aux3]
    mov [rsi+16],rax
    xor rax,rax
    mov [rel aux1],rax
    mov [rel aux2],rax
    mov [rel aux3],rax
; inicia vector 6

    xor rax, rax
    mov rcx,3
    lea rsi,[rel vec6]
    lea rdi,[rel ma1]
ciclo16:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux1]
    add rax,rbx
    mov [rel aux1],rax
    loop ciclo16
    
    mov rcx,3
    lea rsi,[rel vec6]
    lea rdi,[rel ma2]
ciclo17:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux2]
    add rax,rbx
    mov [rel aux2],rax
    loop ciclo17
    mov rcx,3
    lea rsi,[rel vec6]
    lea rdi,[rel ma3]
ciclo18:
    mov rax,[rsi]
    mov rbx,[rdi]
    mul rbx
    add rsi,8
    add rdi,8
    mov rbx,[rel aux3]
    add rax,rbx
    mov [rel aux3],rax
    loop ciclo18
    
    lea rsi,[rel vec6]
    mov rax,[rel aux1]
    mov [rsi],rax
    mov rax,[rel aux2]
    mov [rsi+8],rax
    mov rax,[rel aux3]
    mov [rsi+16],rax
    xor rax,rax
    mov [rel aux1],rax
    mov [rel aux2],rax
    mov [rel aux3],rax

;TERMINA EL VECTOR 2
;impresion de los vectores
    mov rcx,3   
    lea rbx,[rel vec1]
ciclo_1:
        mov rax,[rbx]
        mov rdi,frim
	mov rsi,rax
	xor rax,rax
        mov [rel cont],rcx
	call printf WRT ..plt
        add rbx,8
        mov rcx,[rel cont]
        loop ciclo_1
 ;2       
 mov rcx,3   
    lea rbx,[rel vec2]
ciclo_2:
        mov rax,[rbx]
        mov rdi,frim
	mov rsi,rax
	xor rax,rax
        mov [rel cont],rcx
	call printf WRT ..plt
        add rbx,8
        mov rcx,[rel cont]
        loop ciclo_2
        
mov rcx,3   
lea rbx,[rel vec3]
ciclo_3:
        mov rax,[rbx]
        mov rdi,frim
	mov rsi,rax
	xor rax,rax
        mov [rel cont],rcx
	call printf WRT ..plt
        add rbx,8
        mov rcx,[rel cont]
        loop ciclo_3
mov rcx,3   
lea rbx,[rel vec4]
ciclo_4:
        mov rax,[rbx]
        mov rdi,frim
	mov rsi,rax
	xor rax,rax
        mov [rel cont],rcx
	call printf WRT ..plt
        add rbx,8
        mov rcx,[rel cont]
        loop ciclo_4
mov rcx,3   
lea rbx,[rel vec5]
ciclo_5:
        mov rax,[rbx]
        mov rdi,frim
	mov rsi,rax
	xor rax,rax
        mov [rel cont],rcx
	call printf WRT ..plt
        add rbx,8
        mov rcx,[rel cont]
        loop ciclo_5
mov rcx,3   
lea rbx,[rel vec6]
ciclo_6:
        mov rax,[rbx]
        mov rdi,frim
	mov rsi,rax
	xor rax,rax
        mov [rel cont],rcx
	call printf WRT ..plt
        add rbx,8
        mov rcx,[rel cont]
        loop ciclo_6
    ret