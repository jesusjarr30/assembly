BITS 64
section .bss
cat1: resq 2
salida: resq 2

section .text
global TerceraLey
TerceraLey:
	push rbp
	mov rbp,rsp

	movsd qword[rel cat1],xmm0
	
	fld qword [rel cat1]
	fld qword [rel cat1]
	fmul
	fld qword [rel cat1]
	fmul
	fsqrt
	fstp qword [rel salida]

	movsd xmm0,[rel salida]

	mov rsp,rbp
	pop rbp
	ret 
