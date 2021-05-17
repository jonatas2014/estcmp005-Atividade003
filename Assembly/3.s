	.file	"3.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Informe a temperatura em \302\272F: "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%f"
.LC5:
	.string	"%.1f\302\272C\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	lea	rsi, .LC0[rip]
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	lea	rsi, 12[rsp]
	lea	rdi, .LC1[rip]
	xor	eax, eax
	call	__isoc99_scanf@PLT
	movss	xmm0, DWORD PTR 12[rsp]
	lea	rsi, .LC5[rip]
	subss	xmm0, DWORD PTR .LC2[rip]
	mov	edi, 1
	mov	eax, 1
	divss	xmm0, DWORD PTR .LC3[rip]
	mulss	xmm0, DWORD PTR .LC4[rip]
	cvtss2sd	xmm0, xmm0
	call	__printf_chk@PLT
	xor	eax, eax
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1107296256
	.align 4
.LC3:
	.long	1091567616
	.align 4
.LC4:
	.long	1084227584
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
