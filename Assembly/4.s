	.file	"4.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Nota da prova final: "
.LC1:
	.string	"%f"
.LC4:
	.string	"Reprovado na prova final"
.LC5:
	.string	"Aprovado na prova final"
	.text
	.p2align 4,,15
	.globl	pf_evaluation
	.type	pf_evaluation, @function
pf_evaluation:
.LFB23:
	.cfi_startproc
	lea	rsi, .LC0[rip]
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	edi, 1
	xor	eax, eax
	movss	DWORD PTR 12[rsp], xmm0
	movss	DWORD PTR 8[rsp], xmm1
	call	__printf_chk@PLT
	lea	rsi, 28[rsp]
	lea	rdi, .LC1[rip]
	xor	eax, eax
	call	__isoc99_scanf@PLT
	movss	xmm1, DWORD PTR 8[rsp]
	movss	xmm0, DWORD PTR 12[rsp]
	addss	xmm0, xmm1
	movss	xmm1, DWORD PTR .LC3[rip]
	addss	xmm0, DWORD PTR 28[rsp]
	divss	xmm0, DWORD PTR .LC2[rip]
	ucomiss	xmm1, xmm0
	ja	.L9
	lea	rdi, .LC5[rip]
	call	puts@PLT
	add	rsp, 40
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	lea	rdi, .LC4[rip]
	call	puts@PLT
	add	rsp, 40
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	pf_evaluation, .-pf_evaluation
	.section	.rodata.str1.1
.LC8:
	.string	"Aprovado direto"
.LC10:
	.string	"Reprovado direto"
	.text
	.p2align 4,,15
	.globl	uea_evaluation
	.type	uea_evaluation, @function
uea_evaluation:
.LFB24:
	.cfi_startproc
	movaps	xmm2, xmm0
	addss	xmm2, xmm1
	mulss	xmm2, DWORD PTR .LC6[rip]
	ucomiss	xmm2, DWORD PTR .LC7[rip]
	jnb	.L30
	ucomiss	xmm2, DWORD PTR .LC9[rip]
	jnb	.L31
.L25:
	movss	xmm0, DWORD PTR .LC9[rip]
	ucomiss	xmm0, xmm2
	ja	.L32
	rep ret
	.p2align 4,,10
	.p2align 3
.L31:
	movss	xmm3, DWORD PTR .LC7[rip]
	ucomiss	xmm3, xmm2
	jbe	.L25
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	movss	DWORD PTR 12[rsp], xmm2
	call	pf_evaluation
	movss	xmm2, DWORD PTR 12[rsp]
	movss	xmm0, DWORD PTR .LC9[rip]
	ucomiss	xmm0, xmm2
	ja	.L33
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	lea	rdi, .LC8[rip]
	jmp	puts@PLT
	.p2align 4,,10
	.p2align 3
.L32:
	lea	rdi, .LC10[rip]
	jmp	puts@PLT
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_def_cfa_offset 32
	lea	rdi, .LC10[rip]
	add	rsp, 24
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE24:
	.size	uea_evaluation, .-uea_evaluation
	.section	.rodata.str1.1
.LC11:
	.string	"Nota da ap1: "
.LC12:
	.string	"Nota da ap2: "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	lea	rsi, .LC11[rip]
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	lea	rsi, 8[rsp]
	lea	rdi, .LC1[rip]
	xor	eax, eax
	call	__isoc99_scanf@PLT
	lea	rsi, .LC12[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	lea	rsi, 12[rsp]
	lea	rdi, .LC1[rip]
	xor	eax, eax
	call	__isoc99_scanf@PLT
	movss	xmm1, DWORD PTR 12[rsp]
	movss	xmm0, DWORD PTR 8[rsp]
	call	uea_evaluation
	xor	eax, eax
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC3:
	.long	1086324736
	.align 4
.LC6:
	.long	1056964608
	.align 4
.LC7:
	.long	1090519040
	.align 4
.LC9:
	.long	1082130432
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
