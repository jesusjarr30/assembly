BITS 64

section .text align=16
global sumav,productop,matrizs,matrizs2
sumav:
	push rbp
	mov rbp,rsp
	;0
	fld qword[rsi]
	fld qword[rdi]
	fadd
	fst  qword[rdi]
        ;1
	fld qword[rsi+8]
	fld qword[rdi+8]
	fadd
	fst qword[rdi+8]
        ;2
         fld qword[rsi+16]
	fld qword[rdi+16]
	fadd
	fst qword[rdi+16]
        ;3
        fld qword[rsi+24]
	fld qword[rdi+24]
	fadd
	fst qword[rdi+24]
	;4
        fld qword[rsi+40]
	fld qword[rdi+40]
	fadd
	fst qword[rdi+40]
        ;5
        fld qword[rsi+48]
	fld qword[rdi+48]
	fadd
	fst qword[rdi+48]
        ;6
        fld qword[rsi+56]
	fld qword[rdi+56]
	fadd
	fst qword[rdi+56]
        ;7
        fld qword[rsi+64]
	fld qword[rdi+64]
	fadd
	fst qword[rdi+64]
        ;8
        fld qword[rsi+72]
	fld qword[rdi+72]
	fadd
	fst qword[rdi+72]
        ;9
        fld qword[rsi+80]
	fld qword[rdi+80]
	fadd
	fst qword[rdi+80]
        ;10
        fld qword[rsi+88]
	fld qword[rdi+88]
	fadd
	fst qword[rdi+88]
        ;11
        fld qword[rsi+96]
	fld qword[rdi+96]
	fadd
	fst qword[rdi+96]
        ;12
        fld qword[rsi+104]
	fld qword[rdi+104]
	fadd
	fst qword[rdi+104]
        ;13
        fld qword[rsi+112]
	fld qword[rdi+112]
	fadd
	fst qword[rdi+112]
        ;14
        fld qword[rsi+120]
	fld qword[rdi+120]
	fadd
	fst qword[rdi+120]
        ;15
        fld qword[rsi+128]
	fld qword[rdi+128]
	fadd
	fst qword[rdi+128]

	mov rsp,rbp
	pop rbp
	ret
	
productop:

        push rbp
        mov rbp,rsp
       ;0
	fld qword[rsi]
	fld qword[rdi]
	fmul
	fst  qword[rdi]
        ;1
	fld qword[rsi+8]
	fld qword[rdi+8]
	fmul
	fst qword[rdi+8]
        ;2
         fld qword[rsi+16]
	fld qword[rdi+16]
	fmul
	fst qword[rdi+16]
        ;3
        fld qword[rsi+24]
	fld qword[rdi+24]
	fmul
	fst qword[rdi+24]
	;4
        fld qword[rsi+40]
	fld qword[rdi+40]
	fmul
	fst qword[rdi+40]
        ;5
        fld qword[rsi+48]
	fld qword[rdi+48]
	fmul
	fst qword[rdi+48]
        ;6
        fld qword[rsi+56]
	fld qword[rdi+56]
	fmul
	fst qword[rdi+56]
        ;7
        fld qword[rsi+64]
	fld qword[rdi+64]
	fmul
	fst qword[rdi+64]
        ;8
        fld qword[rsi+72]
	fld qword[rdi+72]
	fmul
	fst qword[rdi+72]
        ;9
        fld qword[rsi+80]
	fld qword[rdi+80]
	fmul
	fst qword[rdi+80]
        ;10
        fld qword[rsi+88]
	fld qword[rdi+88]
	fmul
	fst qword[rdi+88]
        ;11
        fld qword[rsi+96]
	fld qword[rdi+96]
	fmul
	fst qword[rdi+96]
        ;12
        fld qword[rsi+104]
	fld qword[rdi+104]
	fmul
	fst qword[rdi+104]
        ;13
        fld qword[rsi+112]
	fld qword[rdi+112]
	fmul
	fst qword[rdi+112]
        ;14
        fld qword[rsi+120]
	fld qword[rdi+120]
	fmul
	fst qword[rdi+120]
        ;15
        fld qword[rsi+128]
	fld qword[rdi+128]
	fmul
	fst qword[rdi+128]
        
;aqui termina la multiplicacion

        mov rsp,rbp
	pop rbp
	ret
matrizs:
        push rbp
	mov rbp,rsp
        fld qword[rsi]
	fld qword[rdi]
	fadd
	fst  qword[rdi]
        ;1
	fld qword[rsi+8]
	fld qword[rdi+8]
	fadd
	fst qword[rdi+8]
        ;2
        fld qword[rsi+16]
	fld qword[rdi+16]
	fadd
	fst qword[rdi+16]
        ;3
        fld qword[rsi+24]
	fld qword[rdi+24]
	fadd
	fst qword[rdi+24]
        mov rsp,rbp
	pop rbp
	ret
matrizs2:
        push rbp
	mov rbp,rsp
        fld qword[rsi]
	fld qword[rdi]
	fadd
	fst  qword[rdi]
        ;1
	fld qword[rsi+8]
	fld qword[rdi+8]
	fadd
	fst qword[rdi+8]
        ;2
        fld qword[rsi+16]
	fld qword[rdi+16]
	fadd
	fst qword[rdi+16]
        ;3
        fld qword[rsi+24]
	fld qword[rdi+24]
	fadd
	fst qword[rdi+24]
        mov rsp,rbp
	pop rbp
	ret
