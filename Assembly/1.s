	.file	"1.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d %d"
.LC1:
	.string	"%d "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	lea	rdi, .LC0[rip]
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xor	eax, eax
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	lea	rdx, 12[rsp]
	lea	rsi, 8[rsp]
	call	__isoc99_scanf@PLT
	mov	ebx, DWORD PTR 12[rsp]
	mov	eax, DWORD PTR 8[rsp]
	cmp	ebx, eax
	mov	ebp, eax
	cmovge	ebp, ebx
	cmovg	ebx, eax
	cmp	ebp, ebx
	jl	.L2
	lea	r12, .LC1[rip]
	add	ebp, 1
	.p2align 4,,10
	.p2align 3
.L3:
	mov	edx, ebx
	xor	eax, eax
	mov	rsi, r12
	mov	edi, 1
	add	ebx, 1
	call	__printf_chk@PLT
	cmp	ebx, ebp
	jne	.L3
.L2:
	mov	edi, 10
	call	putchar@PLT
	add	rsp, 16
	.cfi_def_cfa_offset 32
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
