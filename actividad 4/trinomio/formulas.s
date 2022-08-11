BITS 64

section .bss

cat1:	resq 2
cat2:	resq 2
cat3:	resq 2
cat4:	resq 2
salida: resq 2

section .text
global Raiz
Raiz:
	
	push rbp
	mov rbp,rsp
	
	movsd qword[rel cat1],xmm0;esta es a
	movsd qword[rel cat2],xmm1;esta es b
	movsd qword[rel cat3],xmm2; esta es c
	movsd qword[rel cat4],xmm3;esta el numero 4


	;operaciones
	
;	fld qword [rel cat1]
;	fld qword [rel cat3]
;	fld qword [rel cat4]
;	fmul
;	fmul
; la letra b  al cuadrado
	fld qword [rel cat2]
	fld qword [rel cat2]
	fmul
	

;prueba
fld qword [rel cat1]
        fld qword [rel cat3]
        fld qword [rel cat4]
        fmul
        fmul
	fsub


;	fsqrt

		
	fstp qword [rel salida]	
	movsd xmm0,[rel salida]

	mov rsp,rbp
	pop rbp
	ret 

