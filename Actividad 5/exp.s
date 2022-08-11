BITS 64
section .data  align=16

a:	dd 3.1, 4.5, 9.0, 1.1

b:	dd 6.2, 7.1, 4.0, 1.0

frm:	db 'salida := %f :  %f',0x0a,0

section .bss align=16

salida:	resq	8

section .text

global vecMUL
extern printf

vecMUL:	push rbp
	
	mov rbp,rsp
	sub rsp,128
	
	mov rbx,salida
	
	movaps xmm1,[rel a]
	
	movaps xmm2,[rel b]
	mulps xmm1,xmm2

	
	movaps [rel salida],xmm1

	;sub rsp,16
	movss xmm0, [rel salida]
	cvtss2sd xmm0,xmm0
	movss xmm1, [rel (salida+4)]
	cvtss2sd xmm1,xmm1
	movss xmm2, [rel (salida+8)]
	cvtss2sd xmm2,xmm2
	movss xmm3, [rel (salida+12)]
	cvtss2sd xmm3,xmm3
	mov rdi,frm
	mov rax,4
	call printf WRT ..plt
	;add rsp,16


	
	mov rsp,rbp
	
	pop  rbp

	mov rax,60
	mov rdi,0
	syscall

