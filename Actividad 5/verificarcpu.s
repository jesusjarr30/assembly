%include "io64.inc"
section .data
cad: db "El procesador cuenta con capacidad ssE3",10,0
cad2: db "El procesador no cuenta con capacidad ssE3",10,0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    push rbp
    push rbx
;pedir datos al procesador

	mov rax,01
	cpuid
		
	bt ecx,0;probar bit 0 para ss3
	jnc ns3
	;impresion
         
         mov rsi,cad
         mov rdi,1
         mov rdx,39;cantidad
         mov rax,1
         syscall
        jmp salida
ns3:
	
         mov rsi,cad2
         mov rdi,1
         mov rdx,42;cantidad
         mov rax,1
         syscall
        jmp salida
salida:

	pop rbx
	pop rbp
	ret