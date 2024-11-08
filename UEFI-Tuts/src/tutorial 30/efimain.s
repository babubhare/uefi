	.file	"efimain.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "E://wf//src//uefi//UEFI-Tuts//src//tutorial 30" "efimain.c"
	.globl	EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID
	.data
	.align 16
EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID:
	.long	-1874679330
	.word	9180
	.word	19000
	.ascii "\226\373z\336\320\200Qj"
	.globl	EFI_LOADED_IMAGE_PROTOCOL_GUID
	.align 16
EFI_LOADED_IMAGE_PROTOCOL_GUID:
	.long	1528508833
	.word	-27294
	.word	4562
	.ascii "\216?\0\240\311ir;"
	.globl	EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID
	.align 16
EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID:
	.long	-1773249758
	.word	25689
	.word	4562
	.ascii "\216"
	.ascii "9\0\240\311ir;"
	.globl	EFI_DEVICE_PATH_PROTOCOL_GUID
	.align 16
EFI_DEVICE_PATH_PROTOCOL_GUID:
	.long	156724881
	.word	27967
	.word	4562
	.ascii "\216"
	.ascii "9\0\240\311ir;"
	.globl	EFI_FILE_INFO_GUID
	.align 16
EFI_FILE_INFO_GUID:
	.long	156724882
	.word	27967
	.word	4562
	.ascii "\216"
	.ascii "9\0\240\311ir;"
	.globl	ACPI_20_TABLE_GUID
	.align 16
ACPI_20_TABLE_GUID:
	.long	-2006390671
	.word	-6927
	.word	4563
	.ascii "\274\"\0\200\307<\210\201"
	.globl	ImageHandle
	.bss
	.align 8
ImageHandle:
	.space 8
	.globl	SystemTable
	.align 8
SystemTable:
	.space 8
	.globl	gop
	.align 8
gop:
	.space 8
	.globl	Volume
	.align 8
Volume:
	.space 8
	.globl	RootFS
	.align 8
RootFS:
	.space 8
	.text
	.globl	SetTextPosition
	.def	SetTextPosition;	.scl	2;	.type	32;	.endef
	.seh_proc	SetTextPosition
SetTextPosition:
.LFB2:
	.file 1 "efilibs.h"
	.loc 1 19 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 20 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 20 24
	movq	56(%rax), %r9
	.loc 1 20 5
	movl	24(%rbp), %ecx
	movl	16(%rbp), %edx
	.loc 1 20 55
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 20 5
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
.LVL0:
	.loc 1 21 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.seh_endproc
	.globl	ResetScreen
	.def	ResetScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	ResetScreen
ResetScreen:
.LFB3:
	.loc 1 24 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 1 25 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 25 24
	movq	(%rax), %r8
	.loc 1 25 43
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 25 5
	movl	$1, %edx
	movq	%rax, %rcx
	call	*%r8
.LVL1:
	.loc 1 26 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.seh_endproc
	.globl	ClearScreen
	.def	ClearScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	ClearScreen
ClearScreen:
.LFB4:
	.loc 1 29 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 1 30 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 30 24
	movq	48(%rax), %rdx
	.loc 1 30 49
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 30 5
	movq	%rax, %rcx
	call	*%rdx
.LVL2:
	.loc 1 31 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.seh_endproc
	.globl	SetColor
	.def	SetColor;	.scl	2;	.type	32;	.endef
	.seh_proc	SetColor
SetColor:
.LFB5:
	.loc 1 34 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 35 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 35 24
	movq	40(%rax), %r8
	.loc 1 35 50
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 35 5
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL3:
	.loc 1 36 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.seh_endproc
	.globl	Print
	.def	Print;	.scl	2;	.type	32;	.endef
	.seh_proc	Print
Print:
.LFB6:
	.loc 1 39 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 40 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 40 24
	movq	8(%rax), %r8
	.loc 1 40 50
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 40 5
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL4:
	.loc 1 41 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.seh_endproc
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
.LFB7:
	.loc 1 44 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 45 14
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 47 8
	nop
.L7:
	.loc 1 47 18 discriminator 1
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 47 9 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	.loc 1 48 18
	movq	-8(%rbp), %rax
	subq	16(%rbp), %rax
	.loc 1 48 24
	subq	$1, %rax
	.loc 1 49 1
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.seh_endproc
	.globl	itoa
	.def	itoa;	.scl	2;	.type	32;	.endef
	.seh_proc	itoa
itoa:
.LFB8:
	.loc 1 52 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	.loc 1 55 7
	movl	16(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 56 4
	movl	$0, -4(%rbp)
.L12:
	.loc 1 59 12
	movl	32(%rbp), %ecx
	.loc 1 59 8
	movl	16(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -12(%rbp)
	.loc 1 60 15
	cmpl	$9, -12(%rbp)
	ja	.L10
	.loc 1 60 37 discriminator 1
	movl	-12(%rbp), %eax
	.loc 1 60 15 discriminator 1
	leal	48(%rax), %edx
	jmp	.L11
.L10:
	.loc 1 60 58 discriminator 2
	movl	-12(%rbp), %eax
	.loc 1 60 15 discriminator 2
	leal	87(%rax), %edx
.L11:
	.loc 1 60 11 discriminator 4
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	cltq
	.loc 1 60 9 discriminator 4
	leaq	(%rax,%rax), %rcx
	movq	24(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 60 15 discriminator 4
	movw	%dx, (%rax)
	.loc 1 61 12
	movl	32(%rbp), %ecx
	movl	16(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, 16(%rbp)
	.loc 1 61 10
	cmpl	$0, 16(%rbp)
	jne	.L12
	.loc 1 62 10
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	.loc 1 62 8
	leaq	(%rax,%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 62 14
	movw	$0, (%rax)
	.loc 1 64 8
	movl	$0, -8(%rbp)
	.loc 1 64 2
	jmp	.L13
.L14:
	.loc 1 66 16
	movl	-8(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 66 8
	movzwl	%ax, %eax
	movl	%eax, -12(%rbp)
	.loc 1 67 21
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 67 9
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	movq	24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 67 21
	movzwl	(%rax), %eax
	.loc 1 67 13
	movw	%ax, (%rdx)
	.loc 1 68 9
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 68 13
	movl	-12(%rbp), %edx
	movw	%dx, (%rax)
	.loc 1 64 21 discriminator 3
	addl	$1, -8(%rbp)
	.loc 1 64 26 discriminator 3
	subl	$1, -4(%rbp)
.L13:
	.loc 1 64 15 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L14
	.loc 1 70 1
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
.LFB9:
	.loc 1 73 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 74 15
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	.loc 1 74 6 discriminator 1
	movl	%eax, -8(%rbp)
.LBB2:
	.loc 1 75 10
	movl	$0, -4(%rbp)
	.loc 1 75 2
	jmp	.L16
.L20:
	.loc 1 77 7
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 77 14
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 77 5
	cmpb	%al, %dl
	jge	.L17
	.loc 1 77 26 discriminator 1
	movl	$-1, %eax
	.loc 1 77 26 is_stmt 0
	jmp	.L18
.L17:
	.loc 1 78 7 is_stmt 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 78 14
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 78 5
	cmpb	%al, %dl
	jle	.L19
	.loc 1 78 26 discriminator 1
	movl	$1, %eax
	.loc 1 78 26 is_stmt 0
	jmp	.L18
.L19:
	.loc 1 75 30 is_stmt 1 discriminator 2
	addl	$1, -4(%rbp)
.L16:
	.loc 1 75 19 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L20
.LBE2:
	.loc 1 80 9
	movl	$0, %eax
.L18:
	.loc 1 81 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.globl	bi
	.bss
	.align 32
bi:
	.space 68
	.section .rdata,"dr"
	.align 2
.LC0:
	.ascii "I\0m\0a\0g\0e\0 \0B\0a\0s\0e\0:\0 \0\15\0\12\0\0\0"
	.align 2
.LC1:
	.ascii "0\0x\0\0\0"
	.align 2
.LC2:
	.ascii "\15\0\12\0\0\0"
	.align 8
.LC3:
	.ascii "I\0m\0a\0g\0e\0 \0B\0a\0s\0e\0 \0w\0i\0t\0h\0 \0a\0m\0p\0e\0r\0s\0a\0n\0d\0:\0 \0\15\0\12\0\0\0"
	.align 8
.LC4:
	.ascii "L\0o\0a\0d\0i\0n\0g\0 \0R\0o\0o\0t\0 \0F\0i\0l\0e\0 \0S\0y\0s\0t\0e\0m\0 \0F\0A\0I\0L\0E\0D\0!\0\15\0\12\0\0\0"
	.align 8
.LC5:
	.ascii "V\0o\0l\0u\0m\0e\0 \0H\0a\0n\0d\0l\0e\0 \0F\0A\0I\0L\0E\0D\0!\0\15\0\12\0\0\0"
	.align 8
.LC6:
	.ascii "D\0e\0v\0i\0c\0e\0P\0a\0t\0h\0 \0F\0A\0I\0L\0E\0D\0!\0\15\0\12\0\0\0"
	.align 8
.LC7:
	.ascii "L\0o\0a\0d\0e\0d\0I\0m\0a\0g\0e\0 \0F\0A\0I\0L\0E\0D\0!\0\15\0\12\0\0\0"
	.text
	.globl	InitializeFILESYSTEM
	.def	InitializeFILESYSTEM;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializeFILESYSTEM
InitializeFILESYSTEM:
.LFB10:
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	.loc 1 104 20
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 104 34
	movq	152(%rax), %r9
	.loc 1 104 9
	movq	ImageHandle(%rip), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	leaq	EFI_LOADED_IMAGE_PROTOCOL_GUID(%rip), %rdx
	movq	%rax, %rcx
	call	*%r9
.LVL5:
	.loc 1 104 7 discriminator 1
	testq	%rax, %rax
	jne	.L22
.LBB3:
	.loc 1 107 3
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 108 40
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	.loc 1 108 3
	movl	(%rax), %eax
	leaq	-48(%rbp), %rdx
	movl	$16, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 1 109 3
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 110 6
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 111 3
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 113 3
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 114 41
	movq	-8(%rbp), %rax
	.loc 1 114 29
	addq	$64, %rax
	.loc 1 114 3
	movl	(%rax), %eax
	leaq	-48(%rbp), %rdx
	movl	$16, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 1 115 3
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 116 6
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 117 3
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 120 18
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 120 32
	movq	152(%rax), %r9
	.loc 1 120 60
	movq	-8(%rbp), %rax
	.loc 1 120 7
	movq	24(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %r8
	leaq	EFI_DEVICE_PATH_PROTOCOL_GUID(%rip), %rdx
	movq	%rax, %rcx
	call	*%r9
.LVL6:
	.loc 1 120 5 discriminator 1
	testq	%rax, %rax
	jne	.L23
	.loc 1 122 19
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 122 33
	movq	152(%rax), %r9
	.loc 1 122 61
	movq	-8(%rbp), %rax
	.loc 1 122 8
	movq	24(%rax), %rax
	leaq	Volume(%rip), %r8
	leaq	EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID(%rip), %rdx
	movq	%rax, %rcx
	call	*%r9
.LVL7:
	.loc 1 122 6 discriminator 1
	testq	%rax, %rax
	jne	.L24
	.loc 1 124 15
	movq	Volume(%rip), %rax
	movq	8(%rax), %r8
	.loc 1 124 9
	movq	Volume(%rip), %rax
	leaq	RootFS(%rip), %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL8:
	.loc 1 124 7 discriminator 1
	testq	%rax, %rax
	je	.L27
	.loc 1 126 6
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	Print
.LBE3:
	.loc 1 137 1
	jmp	.L27
.L24:
.LBB4:
	.loc 1 129 11
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	Print
.LBE4:
	.loc 1 137 1
	jmp	.L27
.L23:
.LBB5:
	.loc 1 132 7
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	Print
.LBE5:
	.loc 1 137 1
	jmp	.L27
.L22:
	.loc 1 135 3
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L27:
	.loc 1 137 1
	nop
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "W\0A\0R\0N\0I\0N\0G\0 \0:\0 \0U\0n\0a\0b\0l\0e\0 \0t\0o\0 \0f\0i\0n\0d\0 \0F\0i\0l\0e\0.\0\15\0\12\0\0\0"
	.text
	.globl	getFile
	.def	getFile;	.scl	2;	.type	32;	.endef
	.seh_proc	getFile
getFile:
.LFB11:
	.loc 1 140 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 144 24
	movq	$0, -8(%rbp)
	.loc 1 145 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 145 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$0, 32(%rsp)
	movl	$3, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL9:
	.loc 1 145 7 discriminator 1
	movabsq	$-9223372036854775794, %rdx
	cmpq	%rdx, %rax
	jne	.L29
	.loc 1 147 3
	movl	$3, %ecx
	call	SetColor
	.loc 1 148 3
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L29:
	.loc 1 151 12
	movq	-8(%rbp), %rax
	.loc 1 152 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "W\0A\0R\0N\0I\0N\0G\0 \0:\0 \0U\0n\0a\0b\0l\0e\0 \0t\0o\0 \0f\0i\0n\0d\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0.\0\15\0\12\0\0\0"
	.text
	.globl	getDir
	.def	getDir;	.scl	2;	.type	32;	.endef
	.seh_proc	getDir
getDir:
.LFB12:
	.loc 1 155 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 156 24
	movq	$0, -8(%rbp)
	.loc 1 157 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 157 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$16, 32(%rsp)
	movl	$3, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL10:
	.loc 1 157 7 discriminator 1
	movabsq	$-9223372036854775794, %rdx
	cmpq	%rdx, %rax
	jne	.L32
	.loc 1 159 3
	movl	$3, %ecx
	call	SetColor
	.loc 1 160 3
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L32:
	.loc 1 163 12
	movq	-8(%rbp), %rax
	.loc 1 164 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "C\0l\0o\0s\0i\0n\0g\0 \0F\0i\0l\0e\0 \0H\0a\0n\0d\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	closeFile
	.def	closeFile;	.scl	2;	.type	32;	.endef
	.seh_proc	closeFile
closeFile:
.LFB13:
	.loc 1 167 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 168 19
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 168 9
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL11:
	.loc 1 168 7 discriminator 1
	testq	%rax, %rax
	je	.L36
	.loc 1 170 9
	movl	$6, %ecx
	call	SetColor
	.loc 1 171 9
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L36:
	.loc 1 173 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "C\0l\0o\0s\0i\0n\0g\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0 \0H\0a\0n\0d\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	closeDir
	.def	closeDir;	.scl	2;	.type	32;	.endef
	.seh_proc	closeDir
closeDir:
.LFB14:
	.loc 1 176 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 177 19
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 177 9
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL12:
	.loc 1 177 7 discriminator 1
	testq	%rax, %rax
	je	.L39
	.loc 1 179 3
	movl	$6, %ecx
	call	SetColor
	.loc 1 180 3
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L39:
	.loc 1 182 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "W\0A\0R\0N\0I\0N\0G\0 \0:\0 \0U\0n\0a\0b\0l\0e\0 \0t\0o\0 \0c\0r\0e\0a\0t\0e\0 \0f\0i\0l\0e\0.\0 \0P\0l\0e\0a\0s\0e\0 \0c\0h\0e\0c\0k\0 \0y\0o\0u\0r\0 \0p\0a\0t\0h\0.\0\15\0\12\0\0\0"
	.text
	.globl	createFile
	.def	createFile;	.scl	2;	.type	32;	.endef
	.seh_proc	createFile
createFile:
.LFB15:
	.loc 1 185 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 186 24
	movq	$0, -8(%rbp)
	.loc 1 187 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 187 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$0, 32(%rsp)
	movabsq	$-9223372036854775805, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL13:
	.loc 1 187 7 discriminator 1
	movabsq	$-9223372036854775794, %rdx
	cmpq	%rdx, %rax
	jne	.L41
	.loc 1 189 3
	movl	$3, %ecx
	call	SetColor
	.loc 1 190 3
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L41:
	.loc 1 193 12
	movq	-8(%rbp), %rax
	.loc 1 194 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
	.globl	ENTRY_POINT
	.bss
	.align 4
ENTRY_POINT:
	.space 4
	.globl	OSBuffer_Handle
	.align 8
OSBuffer_Handle:
	.space 8
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "F\0u\0n\0c\0t\0i\0o\0n\0 \0r\0e\0a\0d\0F\0i\0l\0e\0 \0S\0t\0a\0r\0t\0e\0d\0\15\0\12\0\0\0"
	.align 8
.LC14:
	.ascii "F\0i\0l\0e\0h\0a\0n\0d\0l\0e\0 \0n\0o\0t\0 \0n\0u\0l\0l\0\15\0\12\0\0\0"
	.align 8
.LC15:
	.ascii "A\0l\0l\0o\0c\0a\0t\0i\0n\0g\0 \0P\0o\0o\0l\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.align 8
.LC16:
	.ascii "R\0e\0a\0d\0i\0n\0g\0 \0F\0i\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.align 8
.LC17:
	.ascii " \0 \0 \0 \0 \0 \0 \0 \0 \0 \0D\0y\0n\0a\0m\0i\0c\0 \0F\0i\0l\0e\0 \0S\0i\0g\0n\0a\0t\0u\0r\0e\0\15\0\12\0\0\0"
	.align 8
.LC18:
	.ascii " \0 \0 \0 \0 \0 \0 \0 \0 \0 \0B\0I\0N\0A\0R\0Y\0 \0-\0 \0"
	.ascii "8\0"
	.ascii "6\0"
	.ascii "6\0"
	.ascii "4\0 \0S\0i\0g\0n\0a\0t\0u\0r\0e\0\15\0\12\0\15\0\12\0\15\0\12\0\15\0\12\0\0\0"
	.align 2
.LC19:
	.ascii " \0 \0\0\0"
	.align 8
.LC20:
	.ascii " \0 \0\15\0\12\0E\0N\0T\0R\0Y\0 \0P\0O\0I\0N\0T\0 \0:\0 \0\0\0"
	.align 8
.LC21:
	.ascii "E\0L\0F\0 \0-\0 \0"
	.ascii "4\0"
	.ascii "5\0 \0"
	.ascii "4\0C\0 \0"
	.ascii "4\0"
	.ascii "6\0 \0S\0i\0g\0n\0a\0t\0u\0r\0e\0\15\0\12\0\0\0"
	.align 8
.LC22:
	.ascii "A\0d\0d\0 \0y\0o\0u\0r\0 \0o\0w\0n\0 \0c\0o\0d\0e\0 \0+\0 \0t\0h\0e\0 \0E\0L\0F\0 \0H\0e\0a\0d\0e\0r\0 \0f\0i\0l\0e\0 \0t\0o\0 \0m\0a\0k\0e\0 \0t\0h\0i\0s\0 \0w\0o\0r\0k\0.\0\15\0\12\0\0\0"
	.align 8
.LC23:
	.ascii "W\0A\0R\0N\0I\0N\0G\0 \0:\0 \0R\0A\0W\0 \0F\0I\0L\0E\0 \0H\0A\0S\0 \0B\0E\0E\0N\0 \0L\0O\0A\0D\0E\0D\0 \0-\0 \0N\0o\0 \0S\0i\0g\0n\0a\0t\0u\0r\0e\0 \0D\0E\0T\0E\0C\0T\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	readFile
	.def	readFile;	.scl	2;	.type	32;	.endef
	.seh_proc	readFile
readFile:
.LFB16:
	.loc 1 200 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 203 37
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	getFile
	movq	%rax, -8(%rbp)
	.loc 1 204 2
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 205 7
	cmpq	$0, -8(%rbp)
	je	.L50
.LBB6:
	.loc 1 207 3
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 209 11
	movq	$0, -16(%rbp)
	.loc 1 210 13
	movq	-8(%rbp), %rax
	movq	56(%rax), %r8
	.loc 1 210 3
	movq	-8(%rbp), %rax
	movq	$-1, %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL14:
	.loc 1 211 13
	movq	-8(%rbp), %rax
	movq	48(%rax), %r8
	.loc 1 211 3
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	*%r8
.LVL15:
	.loc 1 212 13
	movq	-8(%rbp), %rax
	movq	56(%rax), %r8
	.loc 1 212 3
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	*%r8
.LVL16:
	.loc 1 214 18
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 214 32
	movq	64(%rax), %r9
	.loc 1 214 7
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	OSBuffer_Handle(%rip), %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	*%r9
.LVL17:
	.loc 1 214 5 discriminator 1
	testq	%rax, %rax
	je	.L45
	.loc 1 216 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 217 4
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L45:
	.loc 1 220 13
	movq	-8(%rbp), %rax
	movq	56(%rax), %r8
	.loc 1 220 3
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	*%r8
.LVL18:
	.loc 1 222 23
	movq	-8(%rbp), %rax
	movq	32(%rax), %r9
	.loc 1 222 13
	movq	OSBuffer_Handle(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
.LVL19:
	.loc 1 222 11 discriminator 1
	testq	%rax, %rax
	je	.L46
	.loc 1 224 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 225 4
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L46:
	.loc 1 228 3
	movl	$11, %ecx
	call	SetColor
	.loc 1 229 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 230 3
	movl	$6, %ecx
	call	SetColor
	.loc 1 231 10
	movq	OSBuffer_Handle(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 1 237 6
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	.loc 1 238 8
	addq	$1, -24(%rbp)
	.loc 1 239 6
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -26(%rbp)
	.loc 1 240 8
	addq	$1, -24(%rbp)
	.loc 1 241 6
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -27(%rbp)
	.loc 1 242 8
	addq	$1, -24(%rbp)
	.loc 1 243 6
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -28(%rbp)
	.loc 1 245 5
	cmpb	$100, -25(%rbp)
	jne	.L47
	.loc 1 245 16 discriminator 1
	cmpb	$-122, -26(%rbp)
	jne	.L47
.LBB7:
	.loc 1 247 4
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 248 4
	movl	$15, %ecx
	call	SetColor
	.loc 1 249 9
	addq	$37, -24(%rbp)
	.loc 1 250 7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	.loc 1 251 9
	addq	$1, -24(%rbp)
	.loc 1 252 7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -26(%rbp)
	.loc 1 253 9
	addq	$1, -24(%rbp)
	.loc 1 254 7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -27(%rbp)
	.loc 1 255 9
	addq	$1, -24(%rbp)
	.loc 1 256 7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -28(%rbp)
	.loc 1 259 5
	movzbl	-25(%rbp), %eax
	leaq	-32(%rbp), %rdx
	movl	$16, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 1 260 5
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 261 5
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 263 5
	movzbl	-26(%rbp), %eax
	leaq	-32(%rbp), %rdx
	movl	$16, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 1 264 5
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 265 5
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 267 5
	movzbl	-27(%rbp), %eax
	leaq	-32(%rbp), %rdx
	movl	$16, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 1 268 5
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 269 5
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 271 5
	movzbl	-28(%rbp), %eax
	leaq	-32(%rbp), %rdx
	movl	$16, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 1 272 5
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 273 5
	movl	$6, %ecx
	call	SetColor
	.loc 1 274 5
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 275 5
	movl	$2, %ecx
	call	SetColor
	.loc 1 277 35
	movzbl	-28(%rbp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	.loc 1 277 48
	movzbl	-27(%rbp), %eax
	sall	$16, %eax
	.loc 1 277 42
	orl	%eax, %edx
	.loc 1 277 61
	movzbl	-26(%rbp), %eax
	sall	$8, %eax
	.loc 1 277 55
	orl	%eax, %edx
	.loc 1 277 67
	movzbl	-25(%rbp), %eax
	orl	%edx, %eax
	.loc 1 277 29
	movl	%eax, ENTRY_POINT(%rip)
	.loc 1 280 5
	movl	ENTRY_POINT(%rip), %eax
	leaq	-42(%rbp), %rdx
	movl	$10, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 1 281 5
	leaq	-42(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 282 5
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	Print
.LBE7:
	.loc 1 246 3
	jmp	.L48
.L47:
	.loc 1 284 10
	cmpb	$69, -26(%rbp)
	jne	.L49
	.loc 1 284 20 discriminator 1
	cmpb	$76, -27(%rbp)
	jne	.L49
	.loc 1 284 32 discriminator 2
	cmpb	$70, -28(%rbp)
	jne	.L49
	.loc 1 286 4
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 287 4
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	call	Print
	jmp	.L48
.L49:
	.loc 1 289 16
	movl	$0, ENTRY_POINT(%rip)
	.loc 1 290 4
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L48:
	.loc 1 293 9
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	closeFile
	.loc 1 294 26
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 294 24
	movq	%rax, 28+bi(%rip)
.L50:
.LBE6:
	.loc 1 296 1
	nop
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "D\0e\0l\0e\0t\0i\0n\0g\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	removeDir
	.def	removeDir;	.scl	2;	.type	32;	.endef
	.seh_proc	removeDir
removeDir:
.LFB17:
	.loc 1 299 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 300 34
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	getDir
	movq	%rax, -8(%rbp)
	.loc 1 301 4
	cmpq	$0, -8(%rbp)
	je	.L53
	.loc 1 303 17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 303 7
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL20:
	.loc 1 303 5 discriminator 1
	testq	%rax, %rax
	je	.L53
	.loc 1 305 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 306 7
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L53:
	.loc 1 309 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "C\0r\0e\0a\0t\0i\0n\0g\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	makeDir
	.def	makeDir;	.scl	2;	.type	32;	.endef
	.seh_proc	makeDir
makeDir:
.LFB18:
	.loc 1 312 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 313 24
	movq	$0, -8(%rbp)
	.loc 1 315 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 315 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$16, 32(%rsp)
	movabsq	$-9223372036854775805, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL21:
	.loc 1 315 7 discriminator 1
	testq	%rax, %rax
	je	.L55
	.loc 1 317 3
	movl	$6, %ecx
	call	SetColor
	.loc 1 318 3
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L55:
	.loc 1 320 2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	closeDir
	.loc 1 321 1
	nop
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "D\0e\0l\0e\0t\0i\0n\0g\0 \0F\0i\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	deleteFile
	.def	deleteFile;	.scl	2;	.type	32;	.endef
	.seh_proc	deleteFile
deleteFile:
.LFB19:
	.loc 1 324 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 325 34
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	getFile
	movq	%rax, -8(%rbp)
	.loc 1 326 4
	cmpq	$0, -8(%rbp)
	je	.L59
	.loc 1 328 17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 328 7
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL22:
	.loc 1 328 5 discriminator 1
	testq	%rax, %rax
	je	.L58
	.loc 1 329 3
	movl	$6, %ecx
	call	SetColor
.L58:
	.loc 1 330 3
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L59:
	.loc 1 332 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "W\0r\0i\0t\0i\0n\0g\0 \0t\0o\0 \0F\0i\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	WriteToFile
	.def	WriteToFile;	.scl	2;	.type	32;	.endef
	.seh_proc	WriteToFile
WriteToFile:
.LFB20:
	.loc 1 335 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 336 20
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	.loc 1 336 9 discriminator 1
	movq	%rax, -16(%rbp)
	.loc 1 337 39
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	createFile
	movq	%rax, -8(%rbp)
	.loc 1 338 4
	cmpq	$0, -8(%rbp)
	je	.L63
	.loc 1 340 22
	movq	-8(%rbp), %rax
	movq	40(%rax), %r9
	.loc 1 340 7
	movq	16(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
.LVL23:
	.loc 1 340 5 discriminator 1
	testq	%rax, %rax
	je	.L62
	.loc 1 342 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 343 4
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L62:
	.loc 1 345 3
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	closeFile
.L63:
	.loc 1 347 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC28:
	.ascii " \0 \0 \0 \0 \0 \0 \0 \0 \0 \0D\0u\0r\0i\0n\0g\0 \0t\0h\0e\0 \0t\0e\0s\0t\0i\0n\0g\0 \0p\0h\0a\0s\0e\0 \0w\0e\0 \0w\0i\0l\0l\0 \0u\0s\0e\0 \0t\0h\0e\0 \0d\0e\0f\0a\0u\0l\0t\0 \0G\0O\0P\0.\0\15\0\12\0\0\0"
	.text
	.globl	InitializeGOP
	.def	InitializeGOP;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializeGOP
InitializeGOP:
.LFB21:
	.loc 1 350 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	.loc 1 353 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 353 30
	movq	320(%rax), %rax
	.loc 1 353 5
	leaq	gop(%rip), %r8
	movl	$0, %edx
	leaq	EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID(%rip), %rcx
	call	*%rax
.LVL24:
	.loc 1 355 9
	movl	$9000000, -4(%rbp)
	.loc 1 356 27
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 356 8
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 357 33
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 357 9
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 377 3
	movl	$12, %ecx
	call	SetColor
	.loc 1 379 3
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 380 23
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 380 29
	movq	24(%rax), %rax
	.loc 1 380 18
	movq	%rax, bi(%rip)
	.loc 1 381 22
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 381 28
	movq	32(%rax), %rax
	.loc 1 381 17
	movq	%rax, 8+bi(%rip)
	.loc 1 382 23
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 382 29
	movq	8(%rax), %rax
	.loc 1 382 35
	movl	4(%rax), %eax
	.loc 1 382 18
	movl	%eax, 16+bi(%rip)
	.loc 1 383 24
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 383 30
	movq	8(%rax), %rax
	.loc 1 383 36
	movl	8(%rax), %eax
	.loc 1 383 19
	movl	%eax, 20+bi(%rip)
	.loc 1 384 29
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 384 35
	movq	8(%rax), %rax
	.loc 1 384 41
	movl	32(%rax), %eax
	.loc 1 384 24
	movl	%eax, 24+bi(%rip)
	.loc 1 408 1
	nop
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.seh_endproc
	.globl	InitializeSystem
	.def	InitializeSystem;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializeSystem
InitializeSystem:
.LFB22:
	.loc 1 411 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 1 412 5
	call	ResetScreen
	.loc 1 413 5
	call	InitializeGOP
	.loc 1 414 2
	call	InitializeFILESYSTEM
	.loc 1 415 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC29:
	.ascii "J\0a\0n\0u\0a\0r\0y\0\0\0"
	.align 2
.LC30:
	.ascii "F\0e\0b\0r\0u\0a\0r\0y\0\0\0"
	.align 2
.LC31:
	.ascii "M\0a\0r\0c\0h\0\0\0"
	.align 2
.LC32:
	.ascii "A\0p\0r\0i\0l\0\0\0"
	.align 2
.LC33:
	.ascii "M\0a\0y\0\0\0"
	.align 2
.LC34:
	.ascii "J\0u\0n\0e\0\0\0"
	.align 2
.LC35:
	.ascii "J\0u\0l\0y\0\0\0"
	.align 2
.LC36:
	.ascii "A\0u\0g\0u\0s\0t\0\0\0"
	.align 2
.LC37:
	.ascii "S\0e\0p\0t\0e\0m\0b\0e\0r\0\0\0"
	.align 2
.LC38:
	.ascii "O\0c\0t\0o\0b\0e\0r\0\0\0"
	.align 2
.LC39:
	.ascii "N\0o\0v\0e\0m\0b\0e\0r\0\0\0"
	.align 2
.LC40:
	.ascii "D\0e\0c\0e\0m\0b\0e\0r\0\0\0"
	.align 2
.LC41:
	.ascii "N\0/\0A\0\0\0"
	.text
	.globl	GetMonth
	.def	GetMonth;	.scl	2;	.type	32;	.endef
	.seh_proc	GetMonth
GetMonth:
.LFB23:
	.file 2 "efimain.c"
	.loc 2 11 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movl	%ecx, %eax
	movw	%ax, 16(%rbp)
	.loc 2 12 5
	movzwl	16(%rbp), %eax
	cmpl	$12, %eax
	ja	.L67
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L69(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L69(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L69:
	.long	.L67-.L69
	.long	.L80-.L69
	.long	.L79-.L69
	.long	.L78-.L69
	.long	.L77-.L69
	.long	.L76-.L69
	.long	.L75-.L69
	.long	.L74-.L69
	.long	.L73-.L69
	.long	.L72-.L69
	.long	.L71-.L69
	.long	.L70-.L69
	.long	.L68-.L69
	.text
.L80:
	.loc 2 16 20
	leaq	.LC29(%rip), %rax
	jmp	.L81
.L79:
	.loc 2 20 20
	leaq	.LC30(%rip), %rax
	jmp	.L81
.L78:
	.loc 2 24 20
	leaq	.LC31(%rip), %rax
	jmp	.L81
.L77:
	.loc 2 28 20
	leaq	.LC32(%rip), %rax
	jmp	.L81
.L76:
	.loc 2 32 20
	leaq	.LC33(%rip), %rax
	jmp	.L81
.L75:
	.loc 2 36 20
	leaq	.LC34(%rip), %rax
	jmp	.L81
.L74:
	.loc 2 40 20
	leaq	.LC35(%rip), %rax
	jmp	.L81
.L73:
	.loc 2 44 20
	leaq	.LC36(%rip), %rax
	jmp	.L81
.L72:
	.loc 2 48 20
	leaq	.LC37(%rip), %rax
	jmp	.L81
.L71:
	.loc 2 52 20
	leaq	.LC38(%rip), %rax
	jmp	.L81
.L70:
	.loc 2 56 20
	leaq	.LC39(%rip), %rax
	jmp	.L81
.L68:
	.loc 2 60 20
	leaq	.LC40(%rip), %rax
	jmp	.L81
.L67:
	.loc 2 63 12
	leaq	.LC41(%rip), %rax
.L81:
	.loc 2 64 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC42:
	.ascii "s\0t\0\0\0"
	.align 2
.LC43:
	.ascii "n\0d\0\0\0"
	.align 2
.LC44:
	.ascii "r\0d\0\0\0"
	.align 2
.LC45:
	.ascii "t\0h\0\0\0"
	.text
	.globl	GetDayExtension
	.def	GetDayExtension;	.scl	2;	.type	32;	.endef
	.seh_proc	GetDayExtension
GetDayExtension:
.LFB24:
	.loc 2 67 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movl	%ecx, %eax
	movw	%ax, 16(%rbp)
	.loc 2 68 5
	movzwl	16(%rbp), %eax
	cmpl	$31, %eax
	ja	.L83
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L85(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L85(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L85:
	.long	.L83-.L85
	.long	.L91-.L85
	.long	.L90-.L85
	.long	.L89-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L88-.L85
	.long	.L87-.L85
	.long	.L86-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L83-.L85
	.long	.L84-.L85
	.text
.L91:
	.loc 2 72 20
	leaq	.LC42(%rip), %rax
	jmp	.L92
.L90:
	.loc 2 76 20
	leaq	.LC43(%rip), %rax
	jmp	.L92
.L89:
	.loc 2 80 20
	leaq	.LC44(%rip), %rax
	jmp	.L92
.L88:
	.loc 2 84 11
	leaq	.LC42(%rip), %rax
	jmp	.L92
.L87:
	.loc 2 88 11
	leaq	.LC43(%rip), %rax
	jmp	.L92
.L86:
	.loc 2 92 11
	leaq	.LC44(%rip), %rax
	jmp	.L92
.L84:
	.loc 2 96 11
	leaq	.LC42(%rip), %rax
	jmp	.L92
.L83:
	.loc 2 99 12
	leaq	.LC45(%rip), %rax
.L92:
	.loc 2 100 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.seh_endproc
	.globl	RtCompareGuid
	.def	RtCompareGuid;	.scl	2;	.type	32;	.endef
	.seh_proc	RtCompareGuid
RtCompareGuid:
.LFB25:
	.loc 2 106 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 108 8
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 109 8
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 110 11
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	.loc 2 110 19
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 110 7
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	.loc 2 111 12
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	.loc 2 111 20
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	.loc 2 111 16
	subl	%eax, %edx
	.loc 2 111 7
	orl	%edx, -20(%rbp)
	.loc 2 112 12
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	.loc 2 112 20
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	.loc 2 112 16
	subl	%eax, %edx
	.loc 2 112 7
	orl	%edx, -20(%rbp)
	.loc 2 113 12
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	.loc 2 113 20
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	.loc 2 113 16
	subl	%eax, %edx
	.loc 2 113 7
	orl	%edx, -20(%rbp)
	.loc 2 114 12
	movl	-20(%rbp), %eax
	cltq
	.loc 2 115 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.seh_endproc
	.globl	CompareGuid
	.def	CompareGuid;	.scl	2;	.type	32;	.endef
	.seh_proc	CompareGuid
CompareGuid:
.LFB26:
	.loc 2 118 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 119 12
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	RtCompareGuid
	.loc 2 120 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.seh_endproc
.lcomm gdt,40,32
.lcomm GDTReg,10,8
	.globl	gdt_init
	.def	gdt_init;	.scl	2;	.type	32;	.endef
	.seh_proc	gdt_init
gdt_init:
.LFB27:
	.loc 2 144 17
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	.loc 2 145 28
	movw	$0, gdt(%rip)
	.loc 2 146 27
	movw	$0, 2+gdt(%rip)
	.loc 2 147 27
	movb	$0, 4+gdt(%rip)
	.loc 2 148 25
	movb	$0, 5+gdt(%rip)
	.loc 2 149 30
	movb	$0, 6+gdt(%rip)
	.loc 2 150 28
	movb	$0, 7+gdt(%rip)
	.loc 2 152 28
	movw	$0, 8+gdt(%rip)
	.loc 2 153 27
	movw	$0, 10+gdt(%rip)
	.loc 2 154 27
	movb	$0, 12+gdt(%rip)
	.loc 2 155 25
	movb	$-102, 13+gdt(%rip)
	.loc 2 156 30
	movb	$32, 14+gdt(%rip)
	.loc 2 157 28
	movb	$0, 15+gdt(%rip)
	.loc 2 159 28
	movw	$0, 16+gdt(%rip)
	.loc 2 160 27
	movw	$0, 18+gdt(%rip)
	.loc 2 161 27
	movb	$0, 20+gdt(%rip)
	.loc 2 162 25
	movb	$-110, 21+gdt(%rip)
	.loc 2 163 30
	movb	$0, 22+gdt(%rip)
	.loc 2 164 28
	movb	$0, 23+gdt(%rip)
	.loc 2 166 28
	movw	$0, 24+gdt(%rip)
	.loc 2 167 27
	movw	$0, 26+gdt(%rip)
	.loc 2 168 27
	movb	$0, 28+gdt(%rip)
	.loc 2 169 25
	movb	$-6, 29+gdt(%rip)
	.loc 2 170 30
	movb	$32, 30+gdt(%rip)
	.loc 2 171 28
	movb	$0, 31+gdt(%rip)
	.loc 2 173 28
	movw	$0, 32+gdt(%rip)
	.loc 2 174 27
	movw	$0, 34+gdt(%rip)
	.loc 2 175 27
	movb	$0, 36+gdt(%rip)
	.loc 2 176 25
	movb	$-14, 37+gdt(%rip)
	.loc 2 177 30
	movb	$0, 38+gdt(%rip)
	.loc 2 178 28
	movb	$0, 39+gdt(%rip)
	.loc 2 180 18
	movw	$39, GDTReg(%rip)
	.loc 2 181 19
	leaq	gdt(%rip), %rax
	.loc 2 181 17
	movq	%rax, 2+GDTReg(%rip)
	.loc 2 183 5
/APP
 # 183 "efimain.c" 1
	lgdt GDTReg(%rip)
 # 0 "" 2
	.loc 2 185 2
/NO_APP
	movl	$16, %eax
/APP
 # 185 "efimain.c" 1
	push $8
	push $1f
	lretq
	1:
	mov %eax, %ds
	mov %eax, %es
	mov %eax, %fs
	mov %eax, %gs
	mov %eax, %ss
	
 # 0 "" 2
	.loc 2 198 1
/NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC46:
	.ascii "T\0h\0a\0t\0O\0S\0"
	.ascii "6\0"
	.ascii "4\0\\\0l\0o\0a\0d\0e\0r\0.\0b\0i\0n\0\0\0"
	.align 2
.LC47:
	.ascii "\15\0\12\0\15\0\12\0\0\0"
	.align 8
.LC48:
	.ascii "B\0a\0s\0e\0A\0d\0d\0r\0e\0s\0s\0 \0 \0 \0 \0 \0 \0 \0:\0 \0\0\0"
	.align 8
.LC49:
	.ascii "B\0u\0f\0f\0e\0r\0S\0i\0z\0e\0 \0 \0 \0 \0 \0 \0 \0 \0:\0 \0\0\0"
	.align 8
.LC50:
	.ascii "W\0i\0d\0t\0h\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0:\0 \0\0\0"
	.align 8
.LC51:
	.ascii "H\0e\0i\0g\0h\0t\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0:\0 \0\0\0"
	.align 8
.LC52:
	.ascii "P\0i\0x\0e\0l\0s\0P\0e\0r\0S\0c\0a\0n\0L\0i\0n\0e\0 \0:\0 \0\0\0"
	.align 2
.LC53:
	.ascii "\15\0\12\0\15\0\12\0D\0A\0T\0E\0 \0\0\0"
	.align 2
.LC54:
	.ascii ":\0 \0\0\0"
	.align 2
.LC55:
	.ascii " \0/\0 \0\0\0"
	.align 8
.LC56:
	.ascii "L\0O\0A\0D\0E\0R\0 \0F\0I\0L\0E\0 \0S\0I\0Z\0E\0 \0:\0 \0\0\0"
	.align 2
.LC57:
	.ascii " \0B\0y\0t\0e\0s\0\15\0\12\0\15\0\12\0\0\0"
	.align 8
.LC58:
	.ascii "L\0o\0a\0d\0i\0n\0g\0 \0T\0h\0a\0t\0O\0S\0"
	.ascii "6\0"
	.ascii "4\0 \0.\0.\0.\0\0\0"
.LC59:
	.ascii "RSD PTR \0"
	.text
	.globl	efi_main
	.def	efi_main;	.scl	2;	.type	32;	.endef
	.seh_proc	efi_main
efi_main:
.LFB28:
	.loc 2 201 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.seh_stackalloc	176
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 202 17
	movq	16(%rbp), %rax
	movq	%rax, ImageHandle(%rip)
	.loc 2 203 17
	movq	24(%rbp), %rax
	movq	%rax, SystemTable(%rip)
	.loc 2 205 2
	call	InitializeSystem
	.loc 2 207 2
	leaq	.LC46(%rip), %rax
	movq	%rax, %rcx
	call	readFile
	.loc 2 211 2
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 212 2
	movl	$15, %ecx
	call	SetColor
	.loc 2 213 5
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 214 2
	movl	$14, %ecx
	call	SetColor
	.loc 2 215 5
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 216 31
	leaq	bi(%rip), %rax
	.loc 2 216 5
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movl	$16, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 2 217 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 218 5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 220 5
	movl	$15, %ecx
	call	SetColor
	.loc 2 221 5
	leaq	.LC49(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 222 5
	movl	$14, %ecx
	call	SetColor
	.loc 2 223 5
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 224 12
	movq	8+bi(%rip), %rax
	.loc 2 224 5
	movl	%eax, %ecx
	leaq	-64(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdx
	call	itoa
	.loc 2 225 5
	movl	$14, %ecx
	call	SetColor
	.loc 2 226 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 227 5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 229 5
	movl	$15, %ecx
	call	SetColor
	.loc 2 230 5
	leaq	.LC50(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 231 12
	movl	16+bi(%rip), %eax
	.loc 2 231 5
	leaq	-64(%rbp), %rdx
	movl	$10, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 2 232 5
	movl	$14, %ecx
	call	SetColor
	.loc 2 233 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 234 5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 236 5
	movl	$15, %ecx
	call	SetColor
	.loc 2 237 5
	leaq	.LC51(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 238 12
	movl	20+bi(%rip), %eax
	.loc 2 238 5
	leaq	-64(%rbp), %rdx
	movl	$10, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 2 239 5
	movl	$14, %ecx
	call	SetColor
	.loc 2 240 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 241 5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 243 5
	movl	$15, %ecx
	call	SetColor
	.loc 2 244 5
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 245 12
	movl	24+bi(%rip), %eax
	.loc 2 245 5
	leaq	-64(%rbp), %rdx
	movl	$10, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 2 246 5
	movl	$14, %ecx
	call	SetColor
	.loc 2 247 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 249 2
	movl	$3, %ecx
	call	SetColor
	.loc 2 250 2
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 251 2
	movl	$15, %ecx
	call	SetColor
	.loc 2 252 2
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 254 13
	movq	SystemTable(%rip), %rax
	movq	88(%rax), %rax
	.loc 2 254 30
	movq	24(%rax), %r8
	.loc 2 254 2
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	*%r8
.LVL25:
	.loc 2 257 2
	movl	$14, %ecx
	call	SetColor
	.loc 2 258 21
	movzbl	-78(%rbp), %eax
	.loc 2 258 8
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	GetMonth
	.loc 2 258 2 discriminator 1
	movq	%rax, %rcx
	call	Print
	.loc 2 259 2
	movl	$12, %ecx
	call	SetColor
	.loc 2 260 2
	leaq	.LC55(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 261 2
	movl	$14, %ecx
	call	SetColor
	.loc 2 262 11
	movzbl	-77(%rbp), %eax
	.loc 2 262 2
	movzbl	%al, %eax
	leaq	-88(%rbp), %rdx
	movl	$10, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 2 263 2
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 264 28
	movzbl	-77(%rbp), %eax
	.loc 2 264 8
	movzbl	%al, %eax
	movl	%eax, %ecx
	call	GetDayExtension
	.loc 2 264 2 discriminator 1
	movq	%rax, %rcx
	call	Print
	.loc 2 265 2
	movl	$12, %ecx
	call	SetColor
	.loc 2 266 5
	leaq	.LC55(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 267 2
	movl	$14, %ecx
	call	SetColor
	.loc 2 268 11
	movzwl	-80(%rbp), %eax
	.loc 2 268 2
	movzwl	%ax, %eax
	leaq	-88(%rbp), %rdx
	movl	$10, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 2 269 2
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 270 2
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 272 9
	movq	OSBuffer_Handle(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 274 2
	movl	$15, %ecx
	call	SetColor
	.loc 2 275 5
	leaq	.LC56(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 276 31
	leaq	28+bi(%rip), %rax
	.loc 2 276 5
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movl	$10, %r8d
	movl	%eax, %ecx
	call	itoa
	.loc 2 277 5
	movl	$14, %ecx
	call	SetColor
	.loc 2 278 5
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 279 2
	movl	$3, %ecx
	call	SetColor
	.loc 2 280 5
	leaq	.LC57(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 282 2
	movl	$15, %ecx
	call	SetColor
	.loc 2 283 5
	leaq	.LC58(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 285 11
	movq	$0, -96(%rbp)
	.loc 2 291 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 291 30
	movq	56(%rax), %r10
	.loc 2 291 5
	movq	-104(%rbp), %rdx
	leaq	-120(%rbp), %r9
	leaq	-112(%rbp), %r8
	leaq	-96(%rbp), %rax
	leaq	-124(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	*%r10
.LVL26:
	.loc 2 292 24
	movq	-120(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	.loc 2 292 19
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	.loc 2 293 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 293 30
	movq	64(%rax), %r9
	.loc 2 293 5
	movq	-96(%rbp), %rax
	leaq	-104(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	*%r9
.LVL27:
	.loc 2 294 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 294 30
	movq	56(%rax), %r10
	.loc 2 294 5
	movq	-104(%rbp), %rdx
	leaq	-120(%rbp), %r9
	leaq	-112(%rbp), %r8
	leaq	-96(%rbp), %rax
	leaq	-124(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	*%r10
.LVL28:
	.loc 2 299 55
	movq	SystemTable(%rip), %rax
	.loc 2 299 30
	movq	112(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 300 22
	movq	$0, -16(%rbp)
.LBB8:
	.loc 2 301 12
	movq	$0, -24(%rbp)
	.loc 2 301 2
	jmp	.L99
.L101:
	.loc 2 303 30
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 303 6
	movq	%rax, %rcx
	leaq	ACPI_20_TABLE_GUID(%rip), %rax
	movq	%rax, %rdx
	call	CompareGuid
	.loc 2 303 5 discriminator 1
	testq	%rax, %rax
	je	.L100
	.loc 2 305 51
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 305 7
	movq	%rax, %rdx
	leaq	.LC59(%rip), %rax
	movq	%rax, %rcx
	call	strcmp
	.loc 2 305 6 discriminator 1
	testl	%eax, %eax
	jne	.L100
	.loc 2 307 14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L100:
	.loc 2 310 14
	addq	$24, -8(%rbp)
	.loc 2 301 71 discriminator 2
	addq	$1, -24(%rbp)
.L99:
	.loc 2 301 42 discriminator 1
	movq	SystemTable(%rip), %rax
	movq	104(%rax), %rax
	.loc 2 301 29 discriminator 1
	cmpq	%rax, -24(%rbp)
	jb	.L101
.LBE8:
	.loc 2 313 87
	movl	ENTRY_POINT(%rip), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 313 9
	movq	%rax, -40(%rbp)
	.loc 2 315 10
	movq	-104(%rbp), %rax
	movq	%rax, 36+bi(%rip)
	.loc 2 316 14
	movq	-96(%rbp), %rax
	movq	%rax, 44+bi(%rip)
	.loc 2 317 24
	movq	-120(%rbp), %rax
	movq	%rax, 52+bi(%rip)
	.loc 2 318 10
	movq	-16(%rbp), %rax
	movq	%rax, 60+bi(%rip)
	.loc 2 320 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 320 30
	movq	232(%rax), %r8
	.loc 2 320 5
	movq	-112(%rbp), %rdx
	movq	ImageHandle(%rip), %rax
	movq	%rax, %rcx
	call	*%r8
.LVL29:
	.loc 2 322 2
	call	gdt_init
	.loc 2 324 5
	movq	-40(%rbp), %rax
	leaq	bi(%rip), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL30:
	.loc 2 329 12
	movl	$0, %eax
	.loc 2 330 1
	addq	$176, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.seh_endproc
.Letext0:
	.file 3 "C:/msys64/mingw64/include/stdint.h"
	.file 4 "efi.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x3937
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x25
	.ascii "GNU C17 14.1.0 -m64 -mabi=ms -mtune=generic -march=nocona -g\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x26
	.long	0x67
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.long	0x67
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.long	0x9f
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x11
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0xd
	.ascii "uint_least16_t\0"
	.byte	0x3
	.byte	0x30
	.byte	0x18
	.long	0x9f
	.uleb128 0xd
	.ascii "CHAR16\0"
	.byte	0x4
	.byte	0x62
	.byte	0x18
	.long	0x133
	.uleb128 0xd
	.ascii "UINT8\0"
	.byte	0x4
	.byte	0x64
	.byte	0x17
	.long	0xf7
	.uleb128 0xd
	.ascii "UINT16\0"
	.byte	0x4
	.byte	0x65
	.byte	0x18
	.long	0x9f
	.uleb128 0xd
	.ascii "UINT32\0"
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.long	0xcd
	.uleb128 0xd
	.ascii "UINT64\0"
	.byte	0x4
	.byte	0x67
	.byte	0x1c
	.long	0x74
	.uleb128 0xd
	.ascii "INT32\0"
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.long	0xb5
	.uleb128 0xd
	.ascii "UINTN\0"
	.byte	0x4
	.byte	0x6e
	.byte	0x1c
	.long	0x74
	.uleb128 0xd
	.ascii "BOOLEAN\0"
	.byte	0x4
	.byte	0x70
	.byte	0x17
	.long	0xf7
	.uleb128 0xd
	.ascii "EFI_TPL\0"
	.byte	0x4
	.byte	0x72
	.byte	0xf
	.long	0x1a2
	.uleb128 0xd
	.ascii "EFI_HANDLE\0"
	.byte	0x4
	.byte	0x73
	.byte	0xf
	.long	0x1e3
	.uleb128 0x27
	.byte	0x8
	.uleb128 0xd
	.ascii "EFI_STATUS\0"
	.byte	0x4
	.byte	0x74
	.byte	0x10
	.long	0x185
	.uleb128 0xd
	.ascii "EFI_EVENT\0"
	.byte	0x4
	.byte	0x75
	.byte	0xf
	.long	0x1e3
	.uleb128 0xd
	.ascii "EFI_PHYSICAL_ADDRESS\0"
	.byte	0x4
	.byte	0x76
	.byte	0x10
	.long	0x185
	.uleb128 0xd
	.ascii "EFI_VIRTUAL_ADDRESS\0"
	.byte	0x4
	.byte	0x77
	.byte	0x10
	.long	0x185
	.uleb128 0x13
	.secrel32	.LASF2
	.byte	0x10
	.byte	0x4
	.byte	0x7b
	.long	0x28c
	.uleb128 0x6
	.ascii "Data1\0"
	.byte	0x4
	.byte	0x7d
	.byte	0xc
	.long	0x176
	.byte	0
	.uleb128 0x6
	.ascii "Data2\0"
	.byte	0x4
	.byte	0x7e
	.byte	0xc
	.long	0x167
	.byte	0x4
	.uleb128 0x6
	.ascii "Data3\0"
	.byte	0x4
	.byte	0x7f
	.byte	0xc
	.long	0x167
	.byte	0x6
	.uleb128 0x6
	.ascii "Data4\0"
	.byte	0x4
	.byte	0x80
	.byte	0xb
	.long	0x28c
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x159
	.long	0x29c
	.uleb128 0x15
	.long	0x74
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF2
	.byte	0x4
	.byte	0x81
	.byte	0x3
	.long	0x243
	.uleb128 0x10
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x85
	.byte	0x11
	.long	0x243
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID
	.uleb128 0x10
	.ascii "EFI_LOADED_IMAGE_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x86
	.byte	0x11
	.long	0x243
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_LOADED_IMAGE_PROTOCOL_GUID
	.uleb128 0x10
	.ascii "EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x87
	.byte	0x11
	.long	0x243
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID
	.uleb128 0x10
	.ascii "EFI_DEVICE_PATH_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x88
	.byte	0x11
	.long	0x243
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_DEVICE_PATH_PROTOCOL_GUID
	.uleb128 0x10
	.ascii "EFI_FILE_INFO_GUID\0"
	.byte	0x4
	.byte	0x89
	.byte	0x11
	.long	0x243
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_FILE_INFO_GUID
	.uleb128 0x10
	.ascii "ACPI_20_TABLE_GUID\0"
	.byte	0x4
	.byte	0x8a
	.byte	0x11
	.long	0x243
	.uleb128 0x9
	.byte	0x3
	.quad	ACPI_20_TABLE_GUID
	.uleb128 0x28
	.ascii "EFI_MEMORY_TYPE\0"
	.byte	0x7
	.byte	0x4
	.long	0xcd
	.byte	0x4
	.byte	0x95
	.byte	0xe
	.long	0x54a
	.uleb128 0x7
	.ascii "EfiReservedMemoryType\0"
	.byte	0
	.uleb128 0x7
	.ascii "EfiLoaderCode\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "EfiLoaderData\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "EfiBootServicesCode\0"
	.byte	0x3
	.uleb128 0x7
	.ascii "EfiBootServicesData\0"
	.byte	0x4
	.uleb128 0x7
	.ascii "EfiRuntimeServicesCode\0"
	.byte	0x5
	.uleb128 0x7
	.ascii "EfiRuntimeServicesData\0"
	.byte	0x6
	.uleb128 0x7
	.ascii "EfiConventionalMemory\0"
	.byte	0x7
	.uleb128 0x7
	.ascii "EfiUnusableMemory\0"
	.byte	0x8
	.uleb128 0x7
	.ascii "EfiACPIReclaimMemory\0"
	.byte	0x9
	.uleb128 0x7
	.ascii "EfiACPIMemoryNVS\0"
	.byte	0xa
	.uleb128 0x7
	.ascii "EfiMemoryMappedIO\0"
	.byte	0xb
	.uleb128 0x7
	.ascii "EfiMemoryMappedIOPortSpace\0"
	.byte	0xc
	.uleb128 0x7
	.ascii "EfiPalCode\0"
	.byte	0xd
	.uleb128 0x7
	.ascii "EfiPersistentMemory\0"
	.byte	0xe
	.uleb128 0x7
	.ascii "EfiUnacceptedMemoryType\0"
	.byte	0xf
	.uleb128 0x7
	.ascii "EfiMaxMemoryType\0"
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF3
	.byte	0x10
	.byte	0x4
	.byte	0xab
	.long	0x603
	.uleb128 0x6
	.ascii "Year\0"
	.byte	0x4
	.byte	0xad
	.byte	0x9
	.long	0x167
	.byte	0
	.uleb128 0x6
	.ascii "Month\0"
	.byte	0x4
	.byte	0xae
	.byte	0x8
	.long	0x159
	.byte	0x2
	.uleb128 0x6
	.ascii "Day\0"
	.byte	0x4
	.byte	0xaf
	.byte	0x8
	.long	0x159
	.byte	0x3
	.uleb128 0x6
	.ascii "Hour\0"
	.byte	0x4
	.byte	0xb0
	.byte	0x8
	.long	0x159
	.byte	0x4
	.uleb128 0x6
	.ascii "Minute\0"
	.byte	0x4
	.byte	0xb1
	.byte	0x8
	.long	0x159
	.byte	0x5
	.uleb128 0x6
	.ascii "Second\0"
	.byte	0x4
	.byte	0xb2
	.byte	0x8
	.long	0x159
	.byte	0x6
	.uleb128 0x6
	.ascii "Pad1\0"
	.byte	0x4
	.byte	0xb3
	.byte	0x8
	.long	0x159
	.byte	0x7
	.uleb128 0x6
	.ascii "Nanosecond\0"
	.byte	0x4
	.byte	0xb4
	.byte	0x9
	.long	0x176
	.byte	0x8
	.uleb128 0x6
	.ascii "TimeZone\0"
	.byte	0x4
	.byte	0xb5
	.byte	0x9
	.long	0x167
	.byte	0xc
	.uleb128 0x6
	.ascii "DayLight\0"
	.byte	0x4
	.byte	0xb6
	.byte	0x8
	.long	0x159
	.byte	0xe
	.uleb128 0x6
	.ascii "Pad2\0"
	.byte	0x4
	.byte	0xb7
	.byte	0x8
	.long	0x159
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF3
	.byte	0x4
	.byte	0xb8
	.byte	0x3
	.long	0x54a
	.uleb128 0x13
	.secrel32	.LASF4
	.byte	0xc
	.byte	0x4
	.byte	0xbb
	.long	0x656
	.uleb128 0x6
	.ascii "Resolution\0"
	.byte	0x4
	.byte	0xbd
	.byte	0x9
	.long	0x176
	.byte	0
	.uleb128 0x6
	.ascii "Accuracy\0"
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.long	0x176
	.byte	0x4
	.uleb128 0x6
	.ascii "SetsToZero\0"
	.byte	0x4
	.byte	0xbf
	.byte	0xa
	.long	0x1b0
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF4
	.byte	0x4
	.byte	0xc0
	.byte	0x3
	.long	0x60f
	.uleb128 0x1a
	.secrel32	.LASF5
	.long	0xcd
	.byte	0xc4
	.long	0x6bd
	.uleb128 0x7
	.ascii "EfiResetCold\0"
	.byte	0
	.uleb128 0x7
	.ascii "EfiResetWarm\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "EfiResetShutdown\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "EfiResetPlatformSpecific\0"
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF5
	.byte	0x4
	.byte	0xca
	.byte	0x3
	.long	0x662
	.uleb128 0x13
	.secrel32	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0xcd
	.long	0x6ff
	.uleb128 0x6
	.ascii "VendorGuid\0"
	.byte	0x4
	.byte	0xcf
	.byte	0xe
	.long	0x29c
	.byte	0
	.uleb128 0x6
	.ascii "VendorTable\0"
	.byte	0x4
	.byte	0xd0
	.byte	0xb
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF6
	.byte	0x4
	.byte	0xd1
	.byte	0x3
	.long	0x6c9
	.uleb128 0x13
	.secrel32	.LASF7
	.byte	0x18
	.byte	0x4
	.byte	0xd5
	.long	0x761
	.uleb128 0x6
	.ascii "Signature\0"
	.byte	0x4
	.byte	0xd7
	.byte	0xc
	.long	0x185
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF8
	.byte	0x4
	.byte	0xd8
	.byte	0xc
	.long	0x176
	.byte	0x8
	.uleb128 0x16
	.secrel32	.LASF9
	.byte	0x4
	.byte	0xd9
	.byte	0xc
	.long	0x176
	.byte	0xc
	.uleb128 0x6
	.ascii "CRC32\0"
	.byte	0x4
	.byte	0xda
	.byte	0xc
	.long	0x176
	.byte	0x10
	.uleb128 0x16
	.secrel32	.LASF10
	.byte	0x4
	.byte	0xdb
	.byte	0xc
	.long	0x176
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF7
	.byte	0x4
	.byte	0xdc
	.byte	0x3
	.long	0x70b
	.uleb128 0x1a
	.secrel32	.LASF11
	.long	0xcd
	.byte	0xdf
	.long	0x7c8
	.uleb128 0x7
	.ascii "AllocateAnyPages\0"
	.byte	0
	.uleb128 0x7
	.ascii "AllocateMaxAddress\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "AllocateAddress\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "MaxAllocateType\0"
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF11
	.byte	0x4
	.byte	0xe5
	.byte	0x3
	.long	0x76d
	.uleb128 0x1a
	.secrel32	.LASF12
	.long	0xcd
	.byte	0xe8
	.long	0x811
	.uleb128 0x7
	.ascii "TimerCancel\0"
	.byte	0
	.uleb128 0x7
	.ascii "TimerPeriodic\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "TimerRelative\0"
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF12
	.byte	0x4
	.byte	0xed
	.byte	0x3
	.long	0x7d4
	.uleb128 0x13
	.secrel32	.LASF13
	.byte	0x28
	.byte	0x4
	.byte	0xf0
	.long	0x889
	.uleb128 0x6
	.ascii "Type\0"
	.byte	0x4
	.byte	0xf2
	.byte	0xc
	.long	0x176
	.byte	0
	.uleb128 0x6
	.ascii "PhysicalStart\0"
	.byte	0x4
	.byte	0xf3
	.byte	0x1a
	.long	0x20a
	.byte	0x8
	.uleb128 0x6
	.ascii "VirtualStart\0"
	.byte	0x4
	.byte	0xf4
	.byte	0x19
	.long	0x227
	.byte	0x10
	.uleb128 0x6
	.ascii "NumberOfPages\0"
	.byte	0x4
	.byte	0xf5
	.byte	0xc
	.long	0x185
	.byte	0x18
	.uleb128 0x16
	.secrel32	.LASF14
	.byte	0x4
	.byte	0xf6
	.byte	0xc
	.long	0x185
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF13
	.byte	0x4
	.byte	0xf7
	.byte	0x3
	.long	0x81d
	.uleb128 0x1a
	.secrel32	.LASF15
	.long	0xcd
	.byte	0xfa
	.long	0x8bb
	.uleb128 0x7
	.ascii "EFI_NATIVE_INTERFACE\0"
	.byte	0
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF15
	.byte	0x4
	.byte	0xfd
	.byte	0x3
	.long	0x895
	.uleb128 0x1f
	.secrel32	.LASF16
	.long	0xcd
	.word	0x100
	.long	0x904
	.uleb128 0x7
	.ascii "AllHandles\0"
	.byte	0
	.uleb128 0x7
	.ascii "ByRegisterNotify\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "ByProtocol\0"
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF16
	.word	0x105
	.byte	0x3
	.long	0x8c7
	.uleb128 0xa
	.secrel32	.LASF17
	.byte	0x18
	.word	0x108
	.long	0x973
	.uleb128 0x2
	.ascii "AgentHandle\0"
	.word	0x10a
	.byte	0x10
	.long	0x1d0
	.byte	0
	.uleb128 0x2
	.ascii "ControllerHandle\0"
	.word	0x10b
	.byte	0x10
	.long	0x1d0
	.byte	0x8
	.uleb128 0x2
	.ascii "Attributes\0"
	.word	0x10c
	.byte	0xc
	.long	0x176
	.byte	0x10
	.uleb128 0x2
	.ascii "OpenCount\0"
	.word	0x10d
	.byte	0xc
	.long	0x176
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF17
	.word	0x10e
	.byte	0x3
	.long	0x910
	.uleb128 0xa
	.secrel32	.LASF18
	.byte	0x4
	.word	0x111
	.long	0x9bb
	.uleb128 0x2
	.ascii "Type\0"
	.word	0x113
	.byte	0xb
	.long	0x159
	.byte	0
	.uleb128 0x2
	.ascii "SubType\0"
	.word	0x114
	.byte	0xb
	.long	0x159
	.byte	0x1
	.uleb128 0x2
	.ascii "Length\0"
	.word	0x115
	.byte	0xb
	.long	0x9bb
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	0x159
	.long	0x9cb
	.uleb128 0x15
	.long	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF18
	.word	0x116
	.byte	0x3
	.long	0x97f
	.uleb128 0xa
	.secrel32	.LASF19
	.byte	0x1c
	.word	0x119
	.long	0xa2f
	.uleb128 0x2
	.ascii "CapsuleGuid\0"
	.word	0x11b
	.byte	0xe
	.long	0x29c
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF9
	.word	0x11c
	.byte	0xc
	.long	0x176
	.byte	0x10
	.uleb128 0x2
	.ascii "Flags\0"
	.word	0x11d
	.byte	0xc
	.long	0x176
	.byte	0x14
	.uleb128 0x2
	.ascii "CapsuleImageSize\0"
	.word	0x11e
	.byte	0xc
	.long	0x176
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF19
	.word	0x11f
	.byte	0x3
	.long	0x9d7
	.uleb128 0xa
	.secrel32	.LASF20
	.byte	0x4
	.word	0x125
	.long	0xa6f
	.uleb128 0x2
	.ascii "ScanCode\0"
	.word	0x127
	.byte	0x9
	.long	0x167
	.byte	0
	.uleb128 0x2
	.ascii "UnicodeChar\0"
	.word	0x128
	.byte	0x9
	.long	0x167
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF20
	.word	0x129
	.byte	0x2
	.long	0xa3b
	.uleb128 0x4
	.ascii "EFI_EVENT_NOTIFY\0"
	.word	0x12c
	.byte	0xf
	.long	0xa94
	.uleb128 0x3
	.long	0xa99
	.uleb128 0x22
	.long	0xaa9
	.uleb128 0x1
	.long	0x1f8
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INPUT_RESET\0"
	.word	0x12f
	.byte	0x16
	.long	0xac1
	.uleb128 0x3
	.long	0xac6
	.uleb128 0x5
	.long	0x1e5
	.long	0xada
	.uleb128 0x1
	.long	0xada
	.uleb128 0x1
	.long	0x1b0
	.byte	0
	.uleb128 0x3
	.long	0xadf
	.uleb128 0xa
	.secrel32	.LASF21
	.byte	0x18
	.word	0x136
	.long	0xb26
	.uleb128 0x2
	.ascii "Reset\0"
	.word	0x138
	.byte	0x12
	.long	0xaa9
	.byte	0
	.uleb128 0x2
	.ascii "ReadKeyStroke\0"
	.word	0x139
	.byte	0x15
	.long	0xb26
	.byte	0x8
	.uleb128 0x2
	.ascii "WaitForKey\0"
	.word	0x13a
	.byte	0xc
	.long	0x1f8
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INPUT_READ_KEY\0"
	.word	0x132
	.byte	0x16
	.long	0xb41
	.uleb128 0x3
	.long	0xb46
	.uleb128 0x5
	.long	0x1e5
	.long	0xb5a
	.uleb128 0x1
	.long	0xada
	.uleb128 0x1
	.long	0xb5a
	.byte	0
	.uleb128 0x3
	.long	0xa6f
	.uleb128 0x8
	.secrel32	.LASF21
	.word	0x13b
	.byte	0x3
	.long	0xadf
	.uleb128 0xa
	.secrel32	.LASF22
	.byte	0x18
	.word	0x13f
	.long	0xbe4
	.uleb128 0x2
	.ascii "MaxMode\0"
	.word	0x141
	.byte	0xb
	.long	0x194
	.byte	0
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x142
	.byte	0xb
	.long	0x194
	.byte	0x4
	.uleb128 0xf
	.secrel32	.LASF14
	.word	0x143
	.byte	0xb
	.long	0x194
	.byte	0x8
	.uleb128 0x2
	.ascii "CursorColumn\0"
	.word	0x144
	.byte	0xb
	.long	0x194
	.byte	0xc
	.uleb128 0x2
	.ascii "CursorRow\0"
	.word	0x145
	.byte	0xb
	.long	0x194
	.byte	0x10
	.uleb128 0x2
	.ascii "CursorVisible\0"
	.word	0x146
	.byte	0xd
	.long	0x1b0
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF22
	.word	0x147
	.byte	0x3
	.long	0xb6b
	.uleb128 0x4
	.ascii "EFI_TEXT_RESET\0"
	.word	0x14a
	.byte	0x16
	.long	0xc07
	.uleb128 0x3
	.long	0xc0c
	.uleb128 0x5
	.long	0x1e5
	.long	0xc20
	.uleb128 0x1
	.long	0xc20
	.uleb128 0x1
	.long	0x1b0
	.byte	0
	.uleb128 0x3
	.long	0xc25
	.uleb128 0xa
	.secrel32	.LASF23
	.byte	0x50
	.word	0x163
	.long	0xceb
	.uleb128 0x2
	.ascii "Reset\0"
	.word	0x165
	.byte	0x14
	.long	0xbf0
	.byte	0
	.uleb128 0x2
	.ascii "OutputString\0"
	.word	0x166
	.byte	0x15
	.long	0xceb
	.byte	0x8
	.uleb128 0x2
	.ascii "TestString\0"
	.word	0x167
	.byte	0x1a
	.long	0xd21
	.byte	0x10
	.uleb128 0xf
	.secrel32	.LASF24
	.word	0x168
	.byte	0x19
	.long	0xd3e
	.byte	0x18
	.uleb128 0x2
	.ascii "SetMode\0"
	.word	0x169
	.byte	0x17
	.long	0xd82
	.byte	0x20
	.uleb128 0x2
	.ascii "SetAttribute\0"
	.word	0x16a
	.byte	0x1c
	.long	0xdb5
	.byte	0x28
	.uleb128 0xf
	.secrel32	.LASF25
	.word	0x16b
	.byte	0x1b
	.long	0xdd4
	.byte	0x30
	.uleb128 0x2
	.ascii "SetCursorPosition\0"
	.word	0x16c
	.byte	0x22
	.long	0xe06
	.byte	0x38
	.uleb128 0x2
	.ascii "EnableCursor\0"
	.word	0x16d
	.byte	0x1c
	.long	0xe49
	.byte	0x40
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x16e
	.byte	0x1e
	.long	0xe68
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_STRING\0"
	.word	0x14d
	.byte	0x16
	.long	0xd03
	.uleb128 0x3
	.long	0xd08
	.uleb128 0x5
	.long	0x1e5
	.long	0xd1c
	.uleb128 0x1
	.long	0xc20
	.uleb128 0x1
	.long	0xd1c
	.byte	0
	.uleb128 0x3
	.long	0x14a
	.uleb128 0x4
	.ascii "EFI_TEXT_TEST_STRING\0"
	.word	0x151
	.byte	0x16
	.long	0xd03
	.uleb128 0x4
	.ascii "EFI_TEXT_QUERY_MODE\0"
	.word	0x152
	.byte	0x16
	.long	0xd5a
	.uleb128 0x3
	.long	0xd5f
	.uleb128 0x5
	.long	0x1e5
	.long	0xd7d
	.uleb128 0x1
	.long	0xc20
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0xd7d
	.byte	0
	.uleb128 0x3
	.long	0x1a2
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_MODE\0"
	.word	0x153
	.byte	0x16
	.long	0xd9c
	.uleb128 0x3
	.long	0xda1
	.uleb128 0x5
	.long	0x1e5
	.long	0xdb5
	.uleb128 0x1
	.long	0xc20
	.uleb128 0x1
	.long	0x1a2
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_ATTRIBUTE\0"
	.word	0x156
	.byte	0x16
	.long	0xd9c
	.uleb128 0x4
	.ascii "EFI_TEXT_CLEAR_SCREEN\0"
	.word	0x159
	.byte	0x16
	.long	0xdf2
	.uleb128 0x3
	.long	0xdf7
	.uleb128 0x5
	.long	0x1e5
	.long	0xe06
	.uleb128 0x1
	.long	0xc20
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_CURSOR_POSITION\0"
	.word	0x15c
	.byte	0x16
	.long	0xe2b
	.uleb128 0x3
	.long	0xe30
	.uleb128 0x5
	.long	0x1e5
	.long	0xe49
	.uleb128 0x1
	.long	0xc20
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_ENABLE_CURSOR\0"
	.word	0x15f
	.byte	0x16
	.long	0xc07
	.uleb128 0x3
	.long	0xbe4
	.uleb128 0x8
	.secrel32	.LASF23
	.word	0x16f
	.byte	0x3
	.long	0xc25
	.uleb128 0x4
	.ascii "EFI_RAISE_TPL\0"
	.word	0x171
	.byte	0x16
	.long	0xe8f
	.uleb128 0x3
	.long	0xe94
	.uleb128 0x5
	.long	0x1e5
	.long	0xea3
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_RESTORE_TPL\0"
	.word	0x172
	.byte	0x16
	.long	0xe8f
	.uleb128 0x4
	.ascii "EFI_ALLOCATE_PAGES\0"
	.word	0x173
	.byte	0x16
	.long	0xed6
	.uleb128 0x3
	.long	0xedb
	.uleb128 0x5
	.long	0x1e5
	.long	0xef9
	.uleb128 0x1
	.long	0x7c8
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0xef9
	.byte	0
	.uleb128 0x3
	.long	0x20a
	.uleb128 0x4
	.ascii "EFI_FREE_PAGES\0"
	.word	0x174
	.byte	0x16
	.long	0xf15
	.uleb128 0x3
	.long	0xf1a
	.uleb128 0x5
	.long	0x1e5
	.long	0xf2e
	.uleb128 0x1
	.long	0x20a
	.uleb128 0x1
	.long	0x1a2
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_MEMORY_MAP\0"
	.word	0x175
	.byte	0x16
	.long	0xf49
	.uleb128 0x3
	.long	0xf4e
	.uleb128 0x5
	.long	0x1e5
	.long	0xf71
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0xf71
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0xf76
	.byte	0
	.uleb128 0x3
	.long	0x889
	.uleb128 0x3
	.long	0x176
	.uleb128 0x4
	.ascii "EFI_ALLOCATE_POOL\0"
	.word	0x176
	.byte	0x16
	.long	0xf95
	.uleb128 0x3
	.long	0xf9a
	.uleb128 0x5
	.long	0x1e5
	.long	0xfb3
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0xfb3
	.byte	0
	.uleb128 0x3
	.long	0x1e3
	.uleb128 0x4
	.ascii "EFI_FREE_POOL\0"
	.word	0x177
	.byte	0x16
	.long	0xfce
	.uleb128 0x3
	.long	0xfd3
	.uleb128 0x5
	.long	0x1e5
	.long	0xfe2
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CREATE_EVENT\0"
	.word	0x178
	.byte	0x16
	.long	0xffb
	.uleb128 0x3
	.long	0x1000
	.uleb128 0x5
	.long	0x1e5
	.long	0x1028
	.uleb128 0x1
	.long	0x176
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0xa7b
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x102d
	.byte	0
	.uleb128 0x3
	.long	0x29c
	.uleb128 0x3
	.long	0x1f8
	.uleb128 0x4
	.ascii "EFI_SET_TIMER\0"
	.word	0x179
	.byte	0x16
	.long	0x1048
	.uleb128 0x3
	.long	0x104d
	.uleb128 0x5
	.long	0x1e5
	.long	0x1066
	.uleb128 0x1
	.long	0x1f8
	.uleb128 0x1
	.long	0x811
	.uleb128 0x1
	.long	0x185
	.byte	0
	.uleb128 0x4
	.ascii "EFI_WAIT_FOR_EVENT\0"
	.word	0x17a
	.byte	0x16
	.long	0x1081
	.uleb128 0x3
	.long	0x1086
	.uleb128 0x5
	.long	0x1e5
	.long	0x109f
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x102d
	.uleb128 0x1
	.long	0xd7d
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SIGNAL_EVENT\0"
	.word	0x17b
	.byte	0x16
	.long	0x10b8
	.uleb128 0x3
	.long	0x10bd
	.uleb128 0x5
	.long	0x1e5
	.long	0x10cc
	.uleb128 0x1
	.long	0x1f8
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CLOSE_EVENT\0"
	.word	0x17c
	.byte	0x16
	.long	0x10b8
	.uleb128 0x4
	.ascii "EFI_CHECK_EVENT\0"
	.word	0x17d
	.byte	0x16
	.long	0x10b8
	.uleb128 0x4
	.ascii "EFI_INSTALL_PROTOCOL_INTERFACE\0"
	.word	0x17e
	.byte	0x16
	.long	0x1123
	.uleb128 0x3
	.long	0x1128
	.uleb128 0x5
	.long	0x1e5
	.long	0x1146
	.uleb128 0x1
	.long	0x1146
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x8bb
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.long	0x1d0
	.uleb128 0x4
	.ascii "EFI_REINSTALL_PROTOCOL_INTERFACE\0"
	.word	0x17f
	.byte	0x16
	.long	0x1174
	.uleb128 0x3
	.long	0x1179
	.uleb128 0x5
	.long	0x1e5
	.long	0x1197
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UNINSTALL_PROTOCOL_INTERFACE\0"
	.word	0x180
	.byte	0x16
	.long	0x11c0
	.uleb128 0x3
	.long	0x11c5
	.uleb128 0x5
	.long	0x1e5
	.long	0x11de
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_HANDLE_PROTOCOL\0"
	.word	0x181
	.byte	0x16
	.long	0x11fa
	.uleb128 0x3
	.long	0x11ff
	.uleb128 0x5
	.long	0x1e5
	.long	0x1218
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0xfb3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_REGISTER_PROTOCOL_NOTIFY\0"
	.word	0x182
	.byte	0x16
	.long	0x123d
	.uleb128 0x3
	.long	0x1242
	.uleb128 0x5
	.long	0x1e5
	.long	0x125b
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1f8
	.uleb128 0x1
	.long	0xfb3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_LOCATE_HANDLE\0"
	.word	0x183
	.byte	0x16
	.long	0x1275
	.uleb128 0x3
	.long	0x127a
	.uleb128 0x5
	.long	0x1e5
	.long	0x129d
	.uleb128 0x1
	.long	0x904
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0x1146
	.byte	0
	.uleb128 0x4
	.ascii "EFI_LOCATE_DEVICE_PATH\0"
	.word	0x184
	.byte	0x16
	.long	0x12bc
	.uleb128 0x3
	.long	0x12c1
	.uleb128 0x5
	.long	0x1e5
	.long	0x12da
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x12da
	.uleb128 0x1
	.long	0x1146
	.byte	0
	.uleb128 0x3
	.long	0x12df
	.uleb128 0x3
	.long	0x9cb
	.uleb128 0x4
	.ascii "EFI_INSTALL_CONFIGURATION_TABLE\0"
	.word	0x185
	.byte	0x16
	.long	0x130c
	.uleb128 0x3
	.long	0x1311
	.uleb128 0x5
	.long	0x1e5
	.long	0x1325
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_LOAD\0"
	.word	0x186
	.byte	0x16
	.long	0x133c
	.uleb128 0x3
	.long	0x1341
	.uleb128 0x5
	.long	0x1e5
	.long	0x1369
	.uleb128 0x1
	.long	0x1b0
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x12df
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1146
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_START\0"
	.word	0x187
	.byte	0x16
	.long	0x1381
	.uleb128 0x3
	.long	0x1386
	.uleb128 0x5
	.long	0x1e5
	.long	0x139f
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0x139f
	.byte	0
	.uleb128 0x3
	.long	0xd1c
	.uleb128 0x4
	.ascii "EFI_EXIT\0"
	.word	0x188
	.byte	0x16
	.long	0x13b5
	.uleb128 0x3
	.long	0x13ba
	.uleb128 0x5
	.long	0x1e5
	.long	0x13d8
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1e5
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0xd1c
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_UNLOAD\0"
	.word	0x189
	.byte	0x16
	.long	0x13f1
	.uleb128 0x3
	.long	0x13f6
	.uleb128 0x5
	.long	0x1e5
	.long	0x1405
	.uleb128 0x1
	.long	0x1d0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_EXIT_BOOT_SERVICES\0"
	.word	0x18a
	.byte	0x16
	.long	0x1424
	.uleb128 0x3
	.long	0x1429
	.uleb128 0x5
	.long	0x1e5
	.long	0x143d
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1a2
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_MONOTONIC_COUNT\0"
	.word	0x18b
	.byte	0x16
	.long	0x1462
	.uleb128 0x3
	.long	0x1467
	.uleb128 0x5
	.long	0x1e5
	.long	0x1476
	.uleb128 0x1
	.long	0x1476
	.byte	0
	.uleb128 0x3
	.long	0x185
	.uleb128 0x4
	.ascii "EFI_STALL\0"
	.word	0x18c
	.byte	0x16
	.long	0x148d
	.uleb128 0x3
	.long	0x1492
	.uleb128 0x5
	.long	0x1e5
	.long	0x14a1
	.uleb128 0x1
	.long	0x1a2
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_WATCHDOG_TIMER\0"
	.word	0x18d
	.byte	0x16
	.long	0x14c0
	.uleb128 0x3
	.long	0x14c5
	.uleb128 0x5
	.long	0x1e5
	.long	0x14e3
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x185
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0xd1c
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CONNECT_CONTROLLER\0"
	.word	0x18e
	.byte	0x16
	.long	0x1502
	.uleb128 0x3
	.long	0x1507
	.uleb128 0x5
	.long	0x1e5
	.long	0x1525
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1146
	.uleb128 0x1
	.long	0x12df
	.uleb128 0x1
	.long	0x1b0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_DISCONNECT_CONTROLLER\0"
	.word	0x18f
	.byte	0x16
	.long	0x1547
	.uleb128 0x3
	.long	0x154c
	.uleb128 0x5
	.long	0x1e5
	.long	0x1565
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1d0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_OPEN_PROTOCOL\0"
	.word	0x190
	.byte	0x16
	.long	0x157f
	.uleb128 0x3
	.long	0x1584
	.uleb128 0x5
	.long	0x1e5
	.long	0x15ac
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0xfb3
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x176
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CLOSE_PROTOCOL\0"
	.word	0x191
	.byte	0x16
	.long	0x15c7
	.uleb128 0x3
	.long	0x15cc
	.uleb128 0x5
	.long	0x1e5
	.long	0x15ea
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1d0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_OPEN_PROTOCOL_INFORMATION\0"
	.word	0x192
	.byte	0x16
	.long	0x1610
	.uleb128 0x3
	.long	0x1615
	.uleb128 0x5
	.long	0x1e5
	.long	0x1633
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1633
	.uleb128 0x1
	.long	0xd7d
	.byte	0
	.uleb128 0x3
	.long	0x1638
	.uleb128 0x3
	.long	0x973
	.uleb128 0x4
	.ascii "EFI_PROTOCOLS_PER_HANDLE\0"
	.word	0x193
	.byte	0x16
	.long	0x165e
	.uleb128 0x3
	.long	0x1663
	.uleb128 0x5
	.long	0x1e5
	.long	0x167c
	.uleb128 0x1
	.long	0x1d0
	.uleb128 0x1
	.long	0x167c
	.uleb128 0x1
	.long	0xd7d
	.byte	0
	.uleb128 0x3
	.long	0x1681
	.uleb128 0x3
	.long	0x1028
	.uleb128 0x4
	.ascii "EFI_LOCATE_HANDLE_BUFFER\0"
	.word	0x194
	.byte	0x16
	.long	0x16a7
	.uleb128 0x3
	.long	0x16ac
	.uleb128 0x5
	.long	0x1e5
	.long	0x16cf
	.uleb128 0x1
	.long	0x904
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0x16cf
	.byte	0
	.uleb128 0x3
	.long	0x1146
	.uleb128 0x4
	.ascii "EFI_LOCATE_PROTOCOL\0"
	.word	0x195
	.byte	0x16
	.long	0x16f0
	.uleb128 0x3
	.long	0x16f5
	.uleb128 0x5
	.long	0x1e5
	.long	0x170e
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0xfb3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES\0"
	.word	0x196
	.byte	0x16
	.long	0x173f
	.uleb128 0x3
	.long	0x1744
	.uleb128 0x5
	.long	0x1e5
	.long	0x1754
	.uleb128 0x1
	.long	0x1146
	.uleb128 0x29
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES\0"
	.word	0x197
	.byte	0x16
	.long	0x173f
	.uleb128 0x4
	.ascii "EFI_CALCULATE_CRC32\0"
	.word	0x198
	.byte	0x16
	.long	0x17a3
	.uleb128 0x3
	.long	0x17a8
	.uleb128 0x5
	.long	0x1e5
	.long	0x17c1
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0xf76
	.byte	0
	.uleb128 0x4
	.ascii "EFI_COPY_MEM\0"
	.word	0x199
	.byte	0x16
	.long	0x17d6
	.uleb128 0x3
	.long	0x17db
	.uleb128 0x5
	.long	0x1e5
	.long	0x17f4
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0x1a2
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_MEM\0"
	.word	0x19a
	.byte	0x16
	.long	0x1808
	.uleb128 0x3
	.long	0x180d
	.uleb128 0x5
	.long	0x1e5
	.long	0x1826
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x159
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CREATE_EVENT_EX\0"
	.word	0x19b
	.byte	0x16
	.long	0xffb
	.uleb128 0x2a
	.secrel32	.LASF26
	.word	0x178
	.byte	0x4
	.word	0x19f
	.byte	0x10
	.long	0x1ca3
	.uleb128 0x2
	.ascii "Hdr\0"
	.word	0x1a1
	.byte	0x16
	.long	0x761
	.byte	0
	.uleb128 0x2
	.ascii "RaiseTPL\0"
	.word	0x1a2
	.byte	0x13
	.long	0xe79
	.byte	0x18
	.uleb128 0x2
	.ascii "RestoreTPL\0"
	.word	0x1a3
	.byte	0x15
	.long	0xea3
	.byte	0x20
	.uleb128 0x2
	.ascii "AllocatePages\0"
	.word	0x1a4
	.byte	0x18
	.long	0xebb
	.byte	0x28
	.uleb128 0x2
	.ascii "FreePages\0"
	.word	0x1a5
	.byte	0x14
	.long	0xefe
	.byte	0x30
	.uleb128 0x2
	.ascii "GetMemoryMap\0"
	.word	0x1a6
	.byte	0x18
	.long	0xf2e
	.byte	0x38
	.uleb128 0x2
	.ascii "AllocatePool\0"
	.word	0x1a7
	.byte	0x17
	.long	0xf7b
	.byte	0x40
	.uleb128 0x2
	.ascii "FreePool\0"
	.word	0x1a8
	.byte	0x13
	.long	0xfb8
	.byte	0x48
	.uleb128 0x2
	.ascii "CreateEvent\0"
	.word	0x1a9
	.byte	0x16
	.long	0xfe2
	.byte	0x50
	.uleb128 0x2
	.ascii "SetTimer\0"
	.word	0x1aa
	.byte	0x13
	.long	0x1032
	.byte	0x58
	.uleb128 0x2
	.ascii "WaitForEvent\0"
	.word	0x1ab
	.byte	0x18
	.long	0x1066
	.byte	0x60
	.uleb128 0x2
	.ascii "SignalEvent\0"
	.word	0x1ac
	.byte	0x16
	.long	0x109f
	.byte	0x68
	.uleb128 0x2
	.ascii "CloseEvent\0"
	.word	0x1ad
	.byte	0x15
	.long	0x10cc
	.byte	0x70
	.uleb128 0x2
	.ascii "CheckEvent\0"
	.word	0x1ae
	.byte	0x15
	.long	0x10e4
	.byte	0x78
	.uleb128 0x2
	.ascii "InstallProtocolInterface\0"
	.word	0x1af
	.byte	0x24
	.long	0x10fc
	.byte	0x80
	.uleb128 0x2
	.ascii "ReinstallProtocolInterface\0"
	.word	0x1b0
	.byte	0x26
	.long	0x114b
	.byte	0x88
	.uleb128 0x2
	.ascii "UninstallProtocolInterface\0"
	.word	0x1b1
	.byte	0x26
	.long	0x1197
	.byte	0x90
	.uleb128 0x2
	.ascii "HandleProtocol\0"
	.word	0x1b2
	.byte	0x19
	.long	0x11de
	.byte	0x98
	.uleb128 0xf
	.secrel32	.LASF10
	.word	0x1b3
	.byte	0xb
	.long	0x1e3
	.byte	0xa0
	.uleb128 0x2
	.ascii "RegisterProtocolNotify\0"
	.word	0x1b4
	.byte	0x22
	.long	0x1218
	.byte	0xa8
	.uleb128 0x2
	.ascii "LocateHandle\0"
	.word	0x1b5
	.byte	0x17
	.long	0x125b
	.byte	0xb0
	.uleb128 0x2
	.ascii "LocateDevicePath\0"
	.word	0x1b6
	.byte	0x1c
	.long	0x129d
	.byte	0xb8
	.uleb128 0x2
	.ascii "InstallConfigurationTable\0"
	.word	0x1b7
	.byte	0x25
	.long	0x12e4
	.byte	0xc0
	.uleb128 0x2
	.ascii "LoadImage\0"
	.word	0x1b8
	.byte	0x14
	.long	0x1325
	.byte	0xc8
	.uleb128 0x2
	.ascii "StartImage\0"
	.word	0x1b9
	.byte	0x15
	.long	0x1369
	.byte	0xd0
	.uleb128 0x2
	.ascii "Exit\0"
	.word	0x1ba
	.byte	0xe
	.long	0x13a4
	.byte	0xd8
	.uleb128 0x2
	.ascii "UnloadImage\0"
	.word	0x1bb
	.byte	0x16
	.long	0x13d8
	.byte	0xe0
	.uleb128 0x2
	.ascii "ExitBootServices\0"
	.word	0x1bc
	.byte	0x1c
	.long	0x1405
	.byte	0xe8
	.uleb128 0x2
	.ascii "GetNextMonotonicCount\0"
	.word	0x1bd
	.byte	0x22
	.long	0x143d
	.byte	0xf0
	.uleb128 0x2
	.ascii "Stall\0"
	.word	0x1be
	.byte	0xf
	.long	0x147b
	.byte	0xf8
	.uleb128 0xe
	.ascii "SetWatchdogTimer\0"
	.word	0x1bf
	.byte	0x1c
	.long	0x14a1
	.word	0x100
	.uleb128 0xe
	.ascii "ConnectController\0"
	.word	0x1c0
	.byte	0x1c
	.long	0x14e3
	.word	0x108
	.uleb128 0xe
	.ascii "DisconnectController\0"
	.word	0x1c1
	.byte	0x1f
	.long	0x1525
	.word	0x110
	.uleb128 0xe
	.ascii "OpenProtocol\0"
	.word	0x1c2
	.byte	0x17
	.long	0x1565
	.word	0x118
	.uleb128 0xe
	.ascii "CloseProtocol\0"
	.word	0x1c3
	.byte	0x18
	.long	0x15ac
	.word	0x120
	.uleb128 0xe
	.ascii "OpenProtocolInformation\0"
	.word	0x1c4
	.byte	0x23
	.long	0x15ea
	.word	0x128
	.uleb128 0xe
	.ascii "ProtocolsPerHandle\0"
	.word	0x1c5
	.byte	0x1e
	.long	0x163d
	.word	0x130
	.uleb128 0xe
	.ascii "LocateHandleBuffer\0"
	.word	0x1c6
	.byte	0x1e
	.long	0x1686
	.word	0x138
	.uleb128 0xe
	.ascii "LocateProtocol\0"
	.word	0x1c7
	.byte	0x19
	.long	0x16d4
	.word	0x140
	.uleb128 0xe
	.ascii "InstallMultipleProtocolInterfaces\0"
	.word	0x1c8
	.byte	0x2e
	.long	0x170e
	.word	0x148
	.uleb128 0xe
	.ascii "UninstallMultipleProtocolInterfaces\0"
	.word	0x1c9
	.byte	0x30
	.long	0x1754
	.word	0x150
	.uleb128 0xe
	.ascii "CalculateCrc32\0"
	.word	0x1ca
	.byte	0x19
	.long	0x1787
	.word	0x158
	.uleb128 0xe
	.ascii "CopyMem\0"
	.word	0x1cb
	.byte	0x12
	.long	0x17c1
	.word	0x160
	.uleb128 0xe
	.ascii "SetMem\0"
	.word	0x1cc
	.byte	0x11
	.long	0x17f4
	.word	0x168
	.uleb128 0xe
	.ascii "CreateEventEx\0"
	.word	0x1cd
	.byte	0x19
	.long	0x1826
	.word	0x170
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF26
	.word	0x1ce
	.byte	0x3
	.long	0x1842
	.uleb128 0x4
	.ascii "EFI_GET_TIME\0"
	.word	0x1d1
	.byte	0x16
	.long	0x1cc4
	.uleb128 0x3
	.long	0x1cc9
	.uleb128 0x5
	.long	0x1e5
	.long	0x1cdd
	.uleb128 0x1
	.long	0x1cdd
	.uleb128 0x1
	.long	0x1ce2
	.byte	0
	.uleb128 0x3
	.long	0x603
	.uleb128 0x3
	.long	0x656
	.uleb128 0x4
	.ascii "EFI_SET_TIME\0"
	.word	0x1d2
	.byte	0x16
	.long	0x1cfc
	.uleb128 0x3
	.long	0x1d01
	.uleb128 0x5
	.long	0x1e5
	.long	0x1d10
	.uleb128 0x1
	.long	0x1cdd
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_WAKEUP_TIME\0"
	.word	0x1d3
	.byte	0x16
	.long	0x1d2c
	.uleb128 0x3
	.long	0x1d31
	.uleb128 0x5
	.long	0x1e5
	.long	0x1d4a
	.uleb128 0x1
	.long	0x1d4a
	.uleb128 0x1
	.long	0x1d4a
	.uleb128 0x1
	.long	0x1cdd
	.byte	0
	.uleb128 0x3
	.long	0x1b0
	.uleb128 0x4
	.ascii "EFI_SET_WAKEUP_TIME\0"
	.word	0x1d4
	.byte	0x16
	.long	0x1d6b
	.uleb128 0x3
	.long	0x1d70
	.uleb128 0x5
	.long	0x1e5
	.long	0x1d84
	.uleb128 0x1
	.long	0x1b0
	.uleb128 0x1
	.long	0x1cdd
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_VIRTUAL_ADDRESS_MAP\0"
	.word	0x1d5
	.byte	0x16
	.long	0x1da8
	.uleb128 0x3
	.long	0x1dad
	.uleb128 0x5
	.long	0x1e5
	.long	0x1dcb
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x176
	.uleb128 0x1
	.long	0xf71
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CONVERT_POINTER\0"
	.word	0x1d6
	.byte	0x16
	.long	0x1de7
	.uleb128 0x3
	.long	0x1dec
	.uleb128 0x5
	.long	0x1e5
	.long	0x1e00
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0xfb3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_VARIABLE\0"
	.word	0x1d7
	.byte	0x16
	.long	0x1e19
	.uleb128 0x3
	.long	0x1e1e
	.uleb128 0x5
	.long	0x1e5
	.long	0x1e41
	.uleb128 0x1
	.long	0xd1c
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0xf76
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_VARIABLE_NAME\0"
	.word	0x1d8
	.byte	0x16
	.long	0x1e64
	.uleb128 0x3
	.long	0x1e69
	.uleb128 0x5
	.long	0x1e5
	.long	0x1e82
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0xd1c
	.uleb128 0x1
	.long	0x1028
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_VARIABLE\0"
	.word	0x1d9
	.byte	0x16
	.long	0x1e9b
	.uleb128 0x3
	.long	0x1ea0
	.uleb128 0x5
	.long	0x1e5
	.long	0x1ec3
	.uleb128 0x1
	.long	0xd1c
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x176
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_HIGH_MONO_COUNT\0"
	.word	0x1da
	.byte	0x16
	.long	0x1ee8
	.uleb128 0x3
	.long	0x1eed
	.uleb128 0x5
	.long	0x1e5
	.long	0x1efc
	.uleb128 0x1
	.long	0xf76
	.byte	0
	.uleb128 0x4
	.ascii "EFI_RESET_SYSTEM\0"
	.word	0x1db
	.byte	0x16
	.long	0x1f15
	.uleb128 0x3
	.long	0x1f1a
	.uleb128 0x5
	.long	0x1e5
	.long	0x1f38
	.uleb128 0x1
	.long	0x6bd
	.uleb128 0x1
	.long	0x1e5
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UPDATE_CAPSULE\0"
	.word	0x1dc
	.byte	0x16
	.long	0x1f53
	.uleb128 0x3
	.long	0x1f58
	.uleb128 0x5
	.long	0x1e5
	.long	0x1f71
	.uleb128 0x1
	.long	0x1f71
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x20a
	.byte	0
	.uleb128 0x3
	.long	0x1f76
	.uleb128 0x3
	.long	0xa2f
	.uleb128 0x4
	.ascii "EFI_QUERY_CAPSULE_CAPABILITIES\0"
	.word	0x1dd
	.byte	0x16
	.long	0x1fa2
	.uleb128 0x3
	.long	0x1fa7
	.uleb128 0x5
	.long	0x1e5
	.long	0x1fc5
	.uleb128 0x1
	.long	0x1f71
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1476
	.uleb128 0x1
	.long	0x1fc5
	.byte	0
	.uleb128 0x3
	.long	0x6bd
	.uleb128 0x4
	.ascii "EFI_QUERY_VARIABLE_INFO\0"
	.word	0x1de
	.byte	0x16
	.long	0x1fea
	.uleb128 0x3
	.long	0x1fef
	.uleb128 0x5
	.long	0x1e5
	.long	0x200d
	.uleb128 0x1
	.long	0x176
	.uleb128 0x1
	.long	0x1476
	.uleb128 0x1
	.long	0x1476
	.uleb128 0x1
	.long	0x1476
	.byte	0
	.uleb128 0xa
	.secrel32	.LASF27
	.byte	0x88
	.word	0x1e1
	.long	0x2180
	.uleb128 0x2
	.ascii "Hdr\0"
	.word	0x1e3
	.byte	0x16
	.long	0x761
	.byte	0
	.uleb128 0x2
	.ascii "GetTime\0"
	.word	0x1e4
	.byte	0x12
	.long	0x1caf
	.byte	0x18
	.uleb128 0x2
	.ascii "SetTime\0"
	.word	0x1e5
	.byte	0x12
	.long	0x1ce7
	.byte	0x20
	.uleb128 0x2
	.ascii "GetWakeupTime\0"
	.word	0x1e6
	.byte	0x19
	.long	0x1d10
	.byte	0x28
	.uleb128 0x2
	.ascii "SetWakeupTime\0"
	.word	0x1e7
	.byte	0x19
	.long	0x1d4f
	.byte	0x30
	.uleb128 0x2
	.ascii "SetVirtualAddressMap\0"
	.word	0x1e8
	.byte	0x21
	.long	0x1d84
	.byte	0x38
	.uleb128 0x2
	.ascii "ConvertPointer\0"
	.word	0x1e9
	.byte	0x19
	.long	0x1dcb
	.byte	0x40
	.uleb128 0x2
	.ascii "GetVariable\0"
	.word	0x1ea
	.byte	0x16
	.long	0x1e00
	.byte	0x48
	.uleb128 0x2
	.ascii "GetNextVariableName\0"
	.word	0x1eb
	.byte	0x20
	.long	0x1e41
	.byte	0x50
	.uleb128 0x2
	.ascii "SetVariable\0"
	.word	0x1ec
	.byte	0x16
	.long	0x1e82
	.byte	0x58
	.uleb128 0x2
	.ascii "GetNextHighMonotonicCount\0"
	.word	0x1ed
	.byte	0x22
	.long	0x1ec3
	.byte	0x60
	.uleb128 0x2
	.ascii "ResetSystem\0"
	.word	0x1ee
	.byte	0x16
	.long	0x1efc
	.byte	0x68
	.uleb128 0x2
	.ascii "UpdateCapsule\0"
	.word	0x1ef
	.byte	0x18
	.long	0x1f38
	.byte	0x70
	.uleb128 0x2
	.ascii "QueryCapsuleCapabilities\0"
	.word	0x1f0
	.byte	0x24
	.long	0x1f7b
	.byte	0x78
	.uleb128 0x2
	.ascii "QueryVariableInfo\0"
	.word	0x1f1
	.byte	0x1d
	.long	0x1fca
	.byte	0x80
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF27
	.word	0x1f2
	.byte	0x3
	.long	0x200d
	.uleb128 0xa
	.secrel32	.LASF28
	.byte	0x20
	.word	0x1f7
	.long	0x21d5
	.uleb128 0x2
	.ascii "Event\0"
	.word	0x1f9
	.byte	0xf
	.long	0x1f8
	.byte	0
	.uleb128 0x2
	.ascii "Status\0"
	.word	0x1fa
	.byte	0x10
	.long	0x1e5
	.byte	0x8
	.uleb128 0xf
	.secrel32	.LASF29
	.word	0x1fb
	.byte	0xb
	.long	0x1a2
	.byte	0x10
	.uleb128 0x2
	.ascii "Buffer\0"
	.word	0x1fc
	.byte	0xb
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF28
	.word	0x1fd
	.byte	0x3
	.long	0x218c
	.uleb128 0x4
	.ascii "EFI_FILE_OPEN\0"
	.word	0x20b
	.byte	0x16
	.long	0x21f7
	.uleb128 0x3
	.long	0x21fc
	.uleb128 0x5
	.long	0x1e5
	.long	0x221f
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0x2325
	.uleb128 0x1
	.long	0xd1c
	.uleb128 0x1
	.long	0x185
	.uleb128 0x1
	.long	0x185
	.byte	0
	.uleb128 0x3
	.long	0x2224
	.uleb128 0xa
	.secrel32	.LASF30
	.byte	0x78
	.word	0x21b
	.long	0x2325
	.uleb128 0xf
	.secrel32	.LASF8
	.word	0x21d
	.byte	0xc
	.long	0x185
	.byte	0
	.uleb128 0x2
	.ascii "Open\0"
	.word	0x21e
	.byte	0x13
	.long	0x21e1
	.byte	0x8
	.uleb128 0x2
	.ascii "Close\0"
	.word	0x21f
	.byte	0x14
	.long	0x232a
	.byte	0x10
	.uleb128 0x2
	.ascii "Delete\0"
	.word	0x220
	.byte	0x15
	.long	0x2355
	.byte	0x18
	.uleb128 0x2
	.ascii "Read\0"
	.word	0x221
	.byte	0x13
	.long	0x236d
	.byte	0x20
	.uleb128 0x2
	.ascii "Write\0"
	.word	0x222
	.byte	0x14
	.long	0x23a1
	.byte	0x28
	.uleb128 0x2
	.ascii "GetPosition\0"
	.word	0x223
	.byte	0x1b
	.long	0x23b8
	.byte	0x30
	.uleb128 0x2
	.ascii "SetPosition\0"
	.word	0x224
	.byte	0x1b
	.long	0x23ef
	.byte	0x38
	.uleb128 0x2
	.ascii "GetInfo\0"
	.word	0x225
	.byte	0x17
	.long	0x2426
	.byte	0x40
	.uleb128 0x2
	.ascii "SetInfo\0"
	.word	0x226
	.byte	0x17
	.long	0x2463
	.byte	0x48
	.uleb128 0x2
	.ascii "Flush\0"
	.word	0x227
	.byte	0x14
	.long	0x24a0
	.byte	0x50
	.uleb128 0x2
	.ascii "OpenEx\0"
	.word	0x228
	.byte	0x16
	.long	0x24b7
	.byte	0x58
	.uleb128 0x2
	.ascii "ReadEx\0"
	.word	0x229
	.byte	0x16
	.long	0x2502
	.byte	0x60
	.uleb128 0x2
	.ascii "WriteEx\0"
	.word	0x22a
	.byte	0x17
	.long	0x2534
	.byte	0x68
	.uleb128 0x2
	.ascii "FlushEx\0"
	.word	0x22b
	.byte	0x17
	.long	0x254e
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.long	0x221f
	.uleb128 0x4
	.ascii "EFI_FILE_CLOSE\0"
	.word	0x20c
	.byte	0x16
	.long	0x2341
	.uleb128 0x3
	.long	0x2346
	.uleb128 0x5
	.long	0x1e5
	.long	0x2355
	.uleb128 0x1
	.long	0x221f
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_DELETE\0"
	.word	0x20d
	.byte	0x16
	.long	0x2341
	.uleb128 0x4
	.ascii "EFI_FILE_READ\0"
	.word	0x20e
	.byte	0x16
	.long	0x2383
	.uleb128 0x3
	.long	0x2388
	.uleb128 0x5
	.long	0x1e5
	.long	0x23a1
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_WRITE\0"
	.word	0x20f
	.byte	0x16
	.long	0x2383
	.uleb128 0x4
	.ascii "EFI_FILE_GET_POSITION\0"
	.word	0x210
	.byte	0x16
	.long	0x23d6
	.uleb128 0x3
	.long	0x23db
	.uleb128 0x5
	.long	0x1e5
	.long	0x23ef
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0x1476
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_SET_POSITION\0"
	.word	0x211
	.byte	0x16
	.long	0x240d
	.uleb128 0x3
	.long	0x2412
	.uleb128 0x5
	.long	0x1e5
	.long	0x2426
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0x185
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_GET_INFO\0"
	.word	0x212
	.byte	0x16
	.long	0x2440
	.uleb128 0x3
	.long	0x2445
	.uleb128 0x5
	.long	0x1e5
	.long	0x2463
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0x1e3
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_SET_INFO\0"
	.word	0x213
	.byte	0x16
	.long	0x247d
	.uleb128 0x3
	.long	0x2482
	.uleb128 0x5
	.long	0x1e5
	.long	0x24a0
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0x1028
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_FLUSH\0"
	.word	0x214
	.byte	0x16
	.long	0x2341
	.uleb128 0x4
	.ascii "EFI_FILE_OPEN_EX\0"
	.word	0x215
	.byte	0x16
	.long	0x24d0
	.uleb128 0x3
	.long	0x24d5
	.uleb128 0x5
	.long	0x1e5
	.long	0x24fd
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0x2325
	.uleb128 0x1
	.long	0xd1c
	.uleb128 0x1
	.long	0x185
	.uleb128 0x1
	.long	0x185
	.uleb128 0x1
	.long	0x24fd
	.byte	0
	.uleb128 0x3
	.long	0x21d5
	.uleb128 0x4
	.ascii "EFI_FILE_READ_EX\0"
	.word	0x216
	.byte	0x16
	.long	0x251b
	.uleb128 0x3
	.long	0x2520
	.uleb128 0x5
	.long	0x1e5
	.long	0x2534
	.uleb128 0x1
	.long	0x221f
	.uleb128 0x1
	.long	0x24fd
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_WRITE_EX\0"
	.word	0x217
	.byte	0x16
	.long	0x251b
	.uleb128 0x4
	.ascii "EFI_FILE_FLUSH_EX\0"
	.word	0x218
	.byte	0x16
	.long	0x251b
	.uleb128 0x8
	.secrel32	.LASF30
	.word	0x22c
	.byte	0x3
	.long	0x2224
	.uleb128 0x4
	.ascii "EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_OPEN_VOLUME\0"
	.word	0x22e
	.byte	0x16
	.long	0x25a8
	.uleb128 0x3
	.long	0x25ad
	.uleb128 0x5
	.long	0x1e5
	.long	0x25c1
	.uleb128 0x1
	.long	0x25c1
	.uleb128 0x1
	.long	0x25f4
	.byte	0
	.uleb128 0x3
	.long	0x25c6
	.uleb128 0xa
	.secrel32	.LASF31
	.byte	0x10
	.word	0x231
	.long	0x25f4
	.uleb128 0xf
	.secrel32	.LASF8
	.word	0x233
	.byte	0xc
	.long	0x185
	.byte	0
	.uleb128 0x2
	.ascii "OpenVolume\0"
	.word	0x234
	.byte	0x31
	.long	0x2574
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x25f9
	.uleb128 0x3
	.long	0x2568
	.uleb128 0x8
	.secrel32	.LASF31
	.word	0x235
	.byte	0x3
	.long	0x25c6
	.uleb128 0xa
	.secrel32	.LASF32
	.byte	0x78
	.word	0x23b
	.long	0x273d
	.uleb128 0x2
	.ascii "hdr\0"
	.word	0x23d
	.byte	0x13
	.long	0x761
	.byte	0
	.uleb128 0x2
	.ascii "FirmwareVendor\0"
	.word	0x23e
	.byte	0xa
	.long	0xd1c
	.byte	0x18
	.uleb128 0x2
	.ascii "FirmwareVersion\0"
	.word	0x23f
	.byte	0x9
	.long	0x176
	.byte	0x20
	.uleb128 0x2
	.ascii "ConsoleInHandle\0"
	.word	0x240
	.byte	0xd
	.long	0x1d0
	.byte	0x28
	.uleb128 0x2
	.ascii "ConIn\0"
	.word	0x241
	.byte	0x22
	.long	0x273d
	.byte	0x30
	.uleb128 0x2
	.ascii "ConsoleOutHandle\0"
	.word	0x242
	.byte	0xd
	.long	0x1d0
	.byte	0x38
	.uleb128 0x2
	.ascii "ConOut\0"
	.word	0x243
	.byte	0x23
	.long	0x2742
	.byte	0x40
	.uleb128 0x2
	.ascii "StandardErrorHandle\0"
	.word	0x244
	.byte	0xd
	.long	0x1d0
	.byte	0x48
	.uleb128 0x2
	.ascii "StdErr\0"
	.word	0x245
	.byte	0x23
	.long	0x2742
	.byte	0x50
	.uleb128 0x2
	.ascii "RuntimeServices\0"
	.word	0x246
	.byte	0x18
	.long	0x2747
	.byte	0x58
	.uleb128 0x2
	.ascii "BootServices\0"
	.word	0x247
	.byte	0x15
	.long	0x274c
	.byte	0x60
	.uleb128 0x2
	.ascii "NumberOfTableEntries\0"
	.word	0x248
	.byte	0x8
	.long	0x1a2
	.byte	0x68
	.uleb128 0x2
	.ascii "ConfigurationTable\0"
	.word	0x249
	.byte	0x1b
	.long	0x2751
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.long	0xb5f
	.uleb128 0x3
	.long	0xe6d
	.uleb128 0x3
	.long	0x2180
	.uleb128 0x3
	.long	0x1ca3
	.uleb128 0x3
	.long	0x6ff
	.uleb128 0x8
	.secrel32	.LASF32
	.word	0x24a
	.byte	0x3
	.long	0x260a
	.uleb128 0xa
	.secrel32	.LASF33
	.byte	0x50
	.word	0x24d
	.long	0x2828
	.uleb128 0xf
	.secrel32	.LASF8
	.word	0x24f
	.byte	0xc
	.long	0x176
	.byte	0
	.uleb128 0x2
	.ascii "ParentHandle\0"
	.word	0x250
	.byte	0x10
	.long	0x1d0
	.byte	0x8
	.uleb128 0xf
	.secrel32	.LASF34
	.word	0x251
	.byte	0x17
	.long	0x2828
	.byte	0x10
	.uleb128 0x2
	.ascii "DeviceHandle\0"
	.word	0x252
	.byte	0x10
	.long	0x1d0
	.byte	0x18
	.uleb128 0x2
	.ascii "FilePath\0"
	.word	0x253
	.byte	0x1f
	.long	0x12df
	.byte	0x20
	.uleb128 0xf
	.secrel32	.LASF10
	.word	0x254
	.byte	0xb
	.long	0x1e3
	.byte	0x28
	.uleb128 0x2
	.ascii "LoadOptionsSize\0"
	.word	0x255
	.byte	0xc
	.long	0x176
	.byte	0x30
	.uleb128 0x2
	.ascii "LoadOptions\0"
	.word	0x256
	.byte	0xb
	.long	0x1e3
	.byte	0x38
	.uleb128 0x2
	.ascii "ImageBase\0"
	.word	0x257
	.byte	0xb
	.long	0x1e3
	.byte	0x40
	.uleb128 0x2
	.ascii "ImageSize\0"
	.word	0x258
	.byte	0xc
	.long	0x185
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.long	0x2756
	.uleb128 0x8
	.secrel32	.LASF33
	.word	0x259
	.byte	0x3
	.long	0x2762
	.uleb128 0x1f
	.secrel32	.LASF35
	.long	0xcd
	.word	0x25d
	.long	0x28c2
	.uleb128 0x7
	.ascii "EfiBltVideoFill\0"
	.byte	0
	.uleb128 0x7
	.ascii "EfiBltVideoToBltBuffer\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "EfiBltBufferToVideo\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "EfiBltVideoToVideo\0"
	.byte	0x3
	.uleb128 0x7
	.ascii "EfiGraphicsOutputBltOperationMax\0"
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF35
	.word	0x264
	.byte	0x3
	.long	0x2839
	.uleb128 0xa
	.secrel32	.LASF36
	.byte	0x4
	.word	0x267
	.long	0x2912
	.uleb128 0x2
	.ascii "Blue\0"
	.word	0x269
	.byte	0xb
	.long	0x159
	.byte	0
	.uleb128 0x2
	.ascii "Green\0"
	.word	0x26a
	.byte	0xb
	.long	0x159
	.byte	0x1
	.uleb128 0x2
	.ascii "Red\0"
	.word	0x26b
	.byte	0xb
	.long	0x159
	.byte	0x2
	.uleb128 0xf
	.secrel32	.LASF10
	.word	0x26c
	.byte	0xb
	.long	0x159
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF36
	.word	0x26d
	.byte	0x3
	.long	0x28ce
	.uleb128 0x1f
	.secrel32	.LASF37
	.long	0xcd
	.word	0x270
	.long	0x29ad
	.uleb128 0x7
	.ascii "PixelRedGreenBlueReserved8BitPerColor\0"
	.byte	0
	.uleb128 0x7
	.ascii "PixelBlueGreenRedReserved8BitPerColor\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "PixelBitMask\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "PixelBltOnly\0"
	.byte	0x3
	.uleb128 0x7
	.ascii "PixelFormatMax\0"
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF37
	.word	0x277
	.byte	0x3
	.long	0x291e
	.uleb128 0xa
	.secrel32	.LASF38
	.byte	0x10
	.word	0x27a
	.long	0x2a12
	.uleb128 0x2
	.ascii "RedMask\0"
	.word	0x27c
	.byte	0xc
	.long	0x176
	.byte	0
	.uleb128 0x2
	.ascii "GreenMask\0"
	.word	0x27d
	.byte	0xc
	.long	0x176
	.byte	0x4
	.uleb128 0x2
	.ascii "BlueMask\0"
	.word	0x27e
	.byte	0xc
	.long	0x176
	.byte	0x8
	.uleb128 0x2
	.ascii "ReservedMask\0"
	.word	0x27f
	.byte	0xc
	.long	0x176
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF38
	.word	0x280
	.byte	0x3
	.long	0x29b9
	.uleb128 0xa
	.secrel32	.LASF39
	.byte	0x24
	.word	0x283
	.long	0x2ab2
	.uleb128 0x2
	.ascii "Version\0"
	.word	0x285
	.byte	0xc
	.long	0x176
	.byte	0
	.uleb128 0x2
	.ascii "HorizontalResolution\0"
	.word	0x286
	.byte	0xc
	.long	0x176
	.byte	0x4
	.uleb128 0x2
	.ascii "VerticalResolution\0"
	.word	0x287
	.byte	0xc
	.long	0x176
	.byte	0x8
	.uleb128 0x2
	.ascii "PixelFormat\0"
	.word	0x288
	.byte	0x1f
	.long	0x29ad
	.byte	0xc
	.uleb128 0x2
	.ascii "PixelInformation\0"
	.word	0x289
	.byte	0x17
	.long	0x2a12
	.byte	0x10
	.uleb128 0xf
	.secrel32	.LASF40
	.word	0x28a
	.byte	0xc
	.long	0x176
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF39
	.word	0x28b
	.byte	0x3
	.long	0x2a1e
	.uleb128 0xa
	.secrel32	.LASF41
	.byte	0x28
	.word	0x28e
	.long	0x2b3e
	.uleb128 0x2
	.ascii "MaxMode\0"
	.word	0x290
	.byte	0xc
	.long	0x176
	.byte	0
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x291
	.byte	0xc
	.long	0x176
	.byte	0x4
	.uleb128 0x2
	.ascii "Info\0"
	.word	0x292
	.byte	0x2b
	.long	0x2b3e
	.byte	0x8
	.uleb128 0x2
	.ascii "SizeOfInfo\0"
	.word	0x293
	.byte	0xb
	.long	0x1a2
	.byte	0x10
	.uleb128 0x2
	.ascii "FrameBufferBase\0"
	.word	0x294
	.byte	0x1a
	.long	0x20a
	.byte	0x18
	.uleb128 0x2
	.ascii "FrameBufferSize\0"
	.word	0x295
	.byte	0xb
	.long	0x1a2
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	0x2ab2
	.uleb128 0x8
	.secrel32	.LASF41
	.word	0x296
	.byte	0x3
	.long	0x2abe
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_QUERY_MODE\0"
	.word	0x298
	.byte	0x16
	.long	0x2b7f
	.uleb128 0x3
	.long	0x2b84
	.uleb128 0x5
	.long	0x1e5
	.long	0x2ba2
	.uleb128 0x1
	.long	0x2ba2
	.uleb128 0x1
	.long	0x176
	.uleb128 0x1
	.long	0xd7d
	.uleb128 0x1
	.long	0x2bed
	.byte	0
	.uleb128 0x3
	.long	0x2ba7
	.uleb128 0xa
	.secrel32	.LASF42
	.byte	0x20
	.word	0x29d
	.long	0x2bed
	.uleb128 0xf
	.secrel32	.LASF24
	.word	0x29f
	.byte	0x2d
	.long	0x2b4f
	.byte	0
	.uleb128 0x2
	.ascii "SetMode\0"
	.word	0x2a0
	.byte	0x2b
	.long	0x2bf2
	.byte	0x8
	.uleb128 0x2
	.ascii "Blt\0"
	.word	0x2a1
	.byte	0x26
	.long	0x2c39
	.byte	0x10
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x2a2
	.byte	0x28
	.long	0x2ca8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	0x2b3e
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_SET_MODE\0"
	.word	0x299
	.byte	0x16
	.long	0x2c20
	.uleb128 0x3
	.long	0x2c25
	.uleb128 0x5
	.long	0x1e5
	.long	0x2c39
	.uleb128 0x1
	.long	0x2ba2
	.uleb128 0x1
	.long	0x176
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_BLT\0"
	.word	0x29a
	.byte	0x16
	.long	0x2c62
	.uleb128 0x3
	.long	0x2c67
	.uleb128 0x5
	.long	0x1e5
	.long	0x2ca3
	.uleb128 0x1
	.long	0x2ba2
	.uleb128 0x1
	.long	0x2ca3
	.uleb128 0x1
	.long	0x28c2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.uleb128 0x1
	.long	0x1a2
	.byte	0
	.uleb128 0x3
	.long	0x2912
	.uleb128 0x3
	.long	0x2b43
	.uleb128 0x8
	.secrel32	.LASF42
	.word	0x2a3
	.byte	0x3
	.long	0x2ba7
	.uleb128 0x10
	.ascii "ImageHandle\0"
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.long	0x1d0
	.uleb128 0x9
	.byte	0x3
	.quad	ImageHandle
	.uleb128 0x2b
	.secrel32	.LASF34
	.byte	0x1
	.byte	0xd
	.byte	0x13
	.long	0x2828
	.uleb128 0x9
	.byte	0x3
	.quad	SystemTable
	.uleb128 0x10
	.ascii "gop\0"
	.byte	0x1
	.byte	0xe
	.byte	0x1f
	.long	0x2d03
	.uleb128 0x9
	.byte	0x3
	.quad	gop
	.uleb128 0x3
	.long	0x2cad
	.uleb128 0x10
	.ascii "Volume\0"
	.byte	0x1
	.byte	0xf
	.byte	0x22
	.long	0x2d21
	.uleb128 0x9
	.byte	0x3
	.quad	Volume
	.uleb128 0x3
	.long	0x25fe
	.uleb128 0x10
	.ascii "RootFS\0"
	.byte	0x1
	.byte	0x10
	.byte	0x14
	.long	0x25f9
	.uleb128 0x9
	.byte	0x3
	.quad	RootFS
	.uleb128 0x13
	.secrel32	.LASF43
	.byte	0x44
	.byte	0x1
	.byte	0x53
	.long	0x2e08
	.uleb128 0x6
	.ascii "BaseAddress\0"
	.byte	0x1
	.byte	0x55
	.byte	0x18
	.long	0x74
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF29
	.byte	0x1
	.byte	0x56
	.byte	0x18
	.long	0x74
	.byte	0x8
	.uleb128 0x6
	.ascii "ScreenWidth\0"
	.byte	0x1
	.byte	0x57
	.byte	0x12
	.long	0xcd
	.byte	0x10
	.uleb128 0x6
	.ascii "ScreenHeight\0"
	.byte	0x1
	.byte	0x58
	.byte	0x12
	.long	0xcd
	.byte	0x14
	.uleb128 0x16
	.secrel32	.LASF40
	.byte	0x1
	.byte	0x59
	.byte	0x12
	.long	0xcd
	.byte	0x18
	.uleb128 0x6
	.ascii "LoaderFileSize\0"
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.long	0x74
	.byte	0x1c
	.uleb128 0x6
	.ascii "MMap\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.long	0xf71
	.byte	0x24
	.uleb128 0x6
	.ascii "MMapSize\0"
	.byte	0x1
	.byte	0x5c
	.byte	0x15
	.long	0x74
	.byte	0x2c
	.uleb128 0x6
	.ascii "MMapDescriptorSize\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x15
	.long	0x74
	.byte	0x34
	.uleb128 0x6
	.ascii "rsdp\0"
	.byte	0x1
	.byte	0x5e
	.byte	0x16
	.long	0x2e08
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.long	0x74
	.uleb128 0x12
	.secrel32	.LASF43
	.byte	0x1
	.byte	0x5f
	.byte	0x1f
	.long	0x2d3f
	.uleb128 0x10
	.ascii "bi\0"
	.byte	0x1
	.byte	0x61
	.byte	0xb
	.long	0x2e0d
	.uleb128 0x9
	.byte	0x3
	.quad	bi
	.uleb128 0x10
	.ascii "ENTRY_POINT\0"
	.byte	0x1
	.byte	0xc4
	.byte	0xe
	.long	0xcd
	.uleb128 0x9
	.byte	0x3
	.quad	ENTRY_POINT
	.uleb128 0x10
	.ascii "OSBuffer_Handle\0"
	.byte	0x1
	.byte	0xc5
	.byte	0x7
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	OSBuffer_Handle
	.uleb128 0xd
	.ascii "INTN\0"
	.byte	0x2
	.byte	0x66
	.byte	0x13
	.long	0x8e
	.uleb128 0x23
	.ascii "GDTEntry\0"
	.byte	0x8
	.byte	0x7a
	.long	0x2efb
	.uleb128 0x6
	.ascii "limit_low\0"
	.byte	0x2
	.byte	0x7c
	.byte	0xc
	.long	0x167
	.byte	0
	.uleb128 0x6
	.ascii "base_low\0"
	.byte	0x2
	.byte	0x7d
	.byte	0xc
	.long	0x167
	.byte	0x2
	.uleb128 0x6
	.ascii "base_mid\0"
	.byte	0x2
	.byte	0x7e
	.byte	0xb
	.long	0x159
	.byte	0x4
	.uleb128 0x6
	.ascii "access\0"
	.byte	0x2
	.byte	0x7f
	.byte	0xb
	.long	0x159
	.byte	0x5
	.uleb128 0x6
	.ascii "granularity\0"
	.byte	0x2
	.byte	0x80
	.byte	0xb
	.long	0x159
	.byte	0x6
	.uleb128 0x6
	.ascii "base_high\0"
	.byte	0x2
	.byte	0x81
	.byte	0xb
	.long	0x159
	.byte	0x7
	.byte	0
	.uleb128 0x23
	.ascii "GDTRegister\0"
	.byte	0xa
	.byte	0x84
	.long	0x2f2c
	.uleb128 0x6
	.ascii "limit\0"
	.byte	0x2
	.byte	0x86
	.byte	0xc
	.long	0x167
	.byte	0
	.uleb128 0x6
	.ascii "base\0"
	.byte	0x2
	.byte	0x87
	.byte	0xc
	.long	0x185
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.byte	0x28
	.byte	0x2
	.byte	0x8a
	.byte	0x8
	.long	0x2f45
	.uleb128 0x6
	.ascii "entry\0"
	.byte	0x2
	.byte	0x8b
	.byte	0x15
	.long	0x2f45
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2e7b
	.long	0x2f55
	.uleb128 0x15
	.long	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.ascii "gdt\0"
	.byte	0x2
	.byte	0x8c
	.byte	0x1f
	.long	0x2f2c
	.uleb128 0x9
	.byte	0x3
	.quad	gdt
	.uleb128 0x9
	.ascii "GDTReg\0"
	.byte	0x2
	.byte	0x8e
	.byte	0x1b
	.long	0x2efb
	.uleb128 0x9
	.byte	0x3
	.quad	GDTReg
	.uleb128 0x17
	.ascii "efi_main\0"
	.byte	0x2
	.byte	0xc8
	.byte	0xc
	.long	0x1e5
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x30fe
	.uleb128 0xb
	.ascii "IH\0"
	.byte	0x2
	.byte	0xc8
	.byte	0x20
	.long	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "ST\0"
	.byte	0x2
	.byte	0xc8
	.byte	0x36
	.long	0x2828
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "GOPINFO\0"
	.byte	0x2
	.byte	0xd1
	.byte	0xc
	.long	0x30fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.ascii "Time\0"
	.byte	0x2
	.byte	0xfd
	.byte	0xb
	.long	0x603
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.ascii "snum\0"
	.byte	0x2
	.word	0x100
	.byte	0x9
	.long	0x310e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xc
	.ascii "loader\0"
	.byte	0x2
	.word	0x110
	.byte	0x9
	.long	0x311e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.ascii "MemoryMapSize\0"
	.byte	0x2
	.word	0x11d
	.byte	0xb
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xc
	.ascii "MemoryMap\0"
	.byte	0x2
	.word	0x11e
	.byte	0x1c
	.long	0xf71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xc
	.ascii "MapKey\0"
	.byte	0x2
	.word	0x11f
	.byte	0xb
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xc
	.ascii "DescriptorSize\0"
	.byte	0x2
	.word	0x120
	.byte	0xb
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xc
	.ascii "DescriptorVersion\0"
	.byte	0x2
	.word	0x121
	.byte	0xc
	.long	0x176
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0xc
	.ascii "configTable\0"
	.byte	0x2
	.word	0x12b
	.byte	0x1e
	.long	0x2751
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.ascii "tempRSDP\0"
	.byte	0x2
	.word	0x12c
	.byte	0x16
	.long	0x2e08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.ascii "KernelBinFile\0"
	.byte	0x2
	.word	0x139
	.byte	0x9
	.long	0x3133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0xc
	.ascii "index\0"
	.byte	0x2
	.word	0x12d
	.byte	0xc
	.long	0x1a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x167
	.long	0x310e
	.uleb128 0x15
	.long	0x74
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.long	0x14a
	.long	0x311e
	.uleb128 0x15
	.long	0x74
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	0x159
	.uleb128 0x22
	.long	0x312e
	.uleb128 0x1
	.long	0x312e
	.byte	0
	.uleb128 0x3
	.long	0x2e0d
	.uleb128 0x3
	.long	0x3123
	.uleb128 0x2d
	.ascii "gdt_init\0"
	.byte	0x2
	.byte	0x90
	.byte	0x6
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.ascii "CompareGuid\0"
	.byte	0x2
	.byte	0x75
	.byte	0x6
	.long	0x2e6e
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x31a4
	.uleb128 0xb
	.ascii "Guid1\0"
	.byte	0x2
	.byte	0x75
	.byte	0x1c
	.long	0x1028
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "Guid2\0"
	.byte	0x2
	.byte	0x75
	.byte	0x2d
	.long	0x1028
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x1c
	.ascii "RtCompareGuid\0"
	.byte	0x2
	.byte	0x69
	.byte	0x6
	.long	0x2e6e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x321c
	.uleb128 0xb
	.ascii "Guid1\0"
	.byte	0x2
	.byte	0x69
	.byte	0x1e
	.long	0x1028
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "Guid2\0"
	.byte	0x2
	.byte	0x69
	.byte	0x2f
	.long	0x1028
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "g1\0"
	.byte	0x2
	.byte	0x6b
	.byte	0xc
	.long	0x321c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "g2\0"
	.byte	0x2
	.byte	0x6b
	.byte	0x11
	.long	0x321c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.ascii "r\0"
	.byte	0x2
	.byte	0x6b
	.byte	0x15
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.long	0x194
	.uleb128 0x1c
	.ascii "GetDayExtension\0"
	.byte	0x2
	.byte	0x42
	.byte	0x15
	.long	0xf2
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x325d
	.uleb128 0xb
	.ascii "m\0"
	.byte	0x2
	.byte	0x42
	.byte	0x34
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.ascii "GetMonth\0"
	.byte	0x2
	.byte	0xa
	.byte	0x15
	.long	0xf2
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3292
	.uleb128 0xb
	.ascii "m\0"
	.byte	0x2
	.byte	0xa
	.byte	0x2d
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.ascii "InitializeSystem\0"
	.byte	0x1
	.word	0x19a
	.byte	0x6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.ascii "InitializeGOP\0"
	.byte	0x1
	.word	0x15d
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3337
	.uleb128 0xc
	.ascii "NewNativeMode\0"
	.byte	0x1
	.word	0x163
	.byte	0x9
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.ascii "GOPSizeOfInfo\0"
	.byte	0x1
	.word	0x164
	.byte	0x8
	.long	0x1a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.ascii "MaxResolutionModes\0"
	.byte	0x1
	.word	0x165
	.byte	0x9
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.ascii "WriteToFile\0"
	.word	0x14e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x33ac
	.uleb128 0x20
	.ascii "buf\0"
	.word	0x14e
	.byte	0x18
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.secrel32	.LASF44
	.word	0x14e
	.byte	0x25
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii "fileSize\0"
	.byte	0x1
	.word	0x150
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.ascii "writefilehandle\0"
	.byte	0x1
	.word	0x151
	.byte	0x15
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.ascii "deleteFile\0"
	.word	0x143
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x33ef
	.uleb128 0x24
	.secrel32	.LASF44
	.word	0x143
	.byte	0x19
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.secrel32	.LASF45
	.word	0x145
	.byte	0x15
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.ascii "makeDir\0"
	.word	0x137
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3433
	.uleb128 0x20
	.ascii "dirName\0"
	.word	0x137
	.byte	0x16
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.secrel32	.LASF45
	.word	0x139
	.byte	0x18
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.ascii "removeDir\0"
	.word	0x12a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3479
	.uleb128 0x20
	.ascii "dirName\0"
	.word	0x12a
	.byte	0x18
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.secrel32	.LASF45
	.word	0x12c
	.byte	0x15
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.ascii "readFile\0"
	.byte	0xc7
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3554
	.uleb128 0x18
	.secrel32	.LASF44
	.byte	0xc7
	.byte	0x17
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.secrel32	.LASF45
	.byte	0xcb
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x9
	.ascii "FileSize\0"
	.byte	0x1
	.byte	0xd1
	.byte	0xb
	.long	0x1476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.ascii "test1\0"
	.byte	0x1
	.byte	0xe7
	.byte	0xa
	.long	0x311e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.ascii "p1\0"
	.byte	0x1
	.byte	0xec
	.byte	0x9
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x9
	.ascii "p2\0"
	.byte	0x1
	.byte	0xec
	.byte	0xc
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x9
	.ascii "p3\0"
	.byte	0x1
	.byte	0xec
	.byte	0xf
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x9
	.ascii "p4\0"
	.byte	0x1
	.byte	0xec
	.byte	0x12
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0xc
	.ascii "s\0"
	.byte	0x1
	.word	0x102
	.byte	0xc
	.long	0x3554
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.ascii "s2\0"
	.byte	0x1
	.word	0x117
	.byte	0xc
	.long	0x3564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x167
	.long	0x3564
	.uleb128 0x15
	.long	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x167
	.long	0x3574
	.uleb128 0x15
	.long	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.ascii "createFile\0"
	.byte	0x1
	.byte	0xb8
	.byte	0x14
	.long	0x25f9
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x35b9
	.uleb128 0x18
	.secrel32	.LASF44
	.byte	0xb8
	.byte	0x27
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.secrel32	.LASF45
	.byte	0xba
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.ascii "closeDir\0"
	.byte	0xaf
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x35e9
	.uleb128 0x18
	.secrel32	.LASF45
	.byte	0xaf
	.byte	0x22
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.ascii "closeFile\0"
	.byte	0xa6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x361a
	.uleb128 0x18
	.secrel32	.LASF45
	.byte	0xa6
	.byte	0x23
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.ascii "getDir\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x14
	.long	0x25f9
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3660
	.uleb128 0xb
	.ascii "DirName\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x23
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.secrel32	.LASF45
	.byte	0x9c
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.ascii "getFile\0"
	.byte	0x1
	.byte	0x8b
	.byte	0x14
	.long	0x25f9
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a2
	.uleb128 0x18
	.secrel32	.LASF44
	.byte	0x8b
	.byte	0x24
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.secrel32	.LASF45
	.byte	0x90
	.long	0x25f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.ascii "InitializeFILESYSTEM\0"
	.byte	0x1
	.byte	0x63
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3718
	.uleb128 0x9
	.ascii "LoadedImage\0"
	.byte	0x1
	.byte	0x65
	.byte	0x20
	.long	0x3718
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "DevicePath\0"
	.byte	0x1
	.byte	0x66
	.byte	0x1c
	.long	0x12df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.secrel32	.LLRL0
	.uleb128 0x9
	.ascii "GOPINFO\0"
	.byte	0x1
	.byte	0x6a
	.byte	0xa
	.long	0x30fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x282d
	.uleb128 0x17
	.ascii "strcmp\0"
	.byte	0x1
	.byte	0x48
	.byte	0x5
	.long	0xb5
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x378e
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0x48
	.byte	0x18
	.long	0x378e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "b\0"
	.byte	0x1
	.byte	0x48
	.byte	0x27
	.long	0x378e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "length\0"
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.ascii "i\0"
	.byte	0x1
	.byte	0x4b
	.byte	0xa
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x6f
	.uleb128 0x32
	.ascii "itoa\0"
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3812
	.uleb128 0xb
	.ascii "n\0"
	.byte	0x1
	.byte	0x33
	.byte	0x1d
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x33
	.byte	0x34
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.ascii "basenumber\0"
	.byte	0x1
	.byte	0x33
	.byte	0x40
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.ascii "hold\0"
	.byte	0x1
	.byte	0x35
	.byte	0x14
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii "i\0"
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "j\0"
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.ascii "strlen\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x14
	.long	0x74
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x385b
	.uleb128 0xb
	.ascii "str\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x27
	.long	0x378e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "strCount\0"
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.long	0x378e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.ascii "Print\0"
	.byte	0x26
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3889
	.uleb128 0xb
	.ascii "str\0"
	.byte	0x1
	.byte	0x26
	.byte	0x14
	.long	0xd1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.ascii "SetColor\0"
	.byte	0x21
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b9
	.uleb128 0x18
	.secrel32	.LASF14
	.byte	0x21
	.byte	0x15
	.long	0x1a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.secrel32	.LASF25
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.ascii "ResetScreen\0"
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.ascii "SetTextPosition\0"
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.ascii "Col\0"
	.byte	0x1
	.byte	0x12
	.byte	0x1d
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "Row\0"
	.byte	0x1
	.byte	0x12
	.byte	0x29
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"dr"
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.word	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0x4
	.uleb128 .LBB5-.Ltext0
	.uleb128 .LBE5-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF18:
	.ascii "EFI_DEVICE_PATH_PROTOCOL\0"
.LASF10:
	.ascii "Reserved\0"
.LASF6:
	.ascii "EFI_CONFIGURATION_TABLE\0"
.LASF30:
	.ascii "EFI_FILE_PROTOCOL\0"
.LASF19:
	.ascii "EFI_CAPSULE_HEADER\0"
.LASF15:
	.ascii "EFI_INTERFACE_TYPE\0"
.LASF32:
	.ascii "EFI_SYSTEM_TABLE\0"
.LASF45:
	.ascii "FileHandle\0"
.LASF26:
	.ascii "EFI_BOOT_SERVICES\0"
.LASF5:
	.ascii "EFI_RESET_TYPE\0"
.LASF29:
	.ascii "BufferSize\0"
.LASF25:
	.ascii "ClearScreen\0"
.LASF41:
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_MODE\0"
.LASF13:
	.ascii "EFI_MEMORY_DESCRIPTOR\0"
.LASF3:
	.ascii "EFI_TIME\0"
.LASF2:
	.ascii "EFI_GUID\0"
.LASF33:
	.ascii "EFI_LOADED_IMAGE_PROTOCOL\0"
.LASF14:
	.ascii "Attribute\0"
.LASF37:
	.ascii "EFI_GRAPHICS_PIXEL_FORMAT\0"
.LASF11:
	.ascii "EFI_ALLOCATE_TYPE\0"
.LASF31:
	.ascii "EFI_SIMPLE_FILE_SYSTEM_PROTOCOL\0"
.LASF35:
	.ascii "EFI_GRAPHICS_OUTPUT_BLT_OPERATION\0"
.LASF39:
	.ascii "EFI_GRAPHICS_OUTPUT_MODE_INFORMATION\0"
.LASF42:
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL\0"
.LASF27:
	.ascii "EFI_RUNTIME_SERVICES\0"
.LASF8:
	.ascii "Revision\0"
.LASF12:
	.ascii "EFI_TIMER_DELAY\0"
.LASF21:
	.ascii "EFI_SIMPLE_TEXT_INPUT_PROTOCOL\0"
.LASF38:
	.ascii "EFI_PIXEL_BITMASK\0"
.LASF22:
	.ascii "SIMPLE_TEXT_OUTPUT_MODE\0"
.LASF16:
	.ascii "EFI_LOCATE_SEARCH_TYPE\0"
.LASF34:
	.ascii "SystemTable\0"
.LASF28:
	.ascii "EFI_FILE_IO_TOKEN\0"
.LASF43:
	.ascii "BLOCKINFO\0"
.LASF17:
	.ascii "EFI_OPEN_PROTOCOL_INFORMATION_ENTRY\0"
.LASF44:
	.ascii "FileName\0"
.LASF24:
	.ascii "QueryMode\0"
.LASF20:
	.ascii "EFI_INPUT_KEY\0"
.LASF23:
	.ascii "EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL\0"
.LASF7:
	.ascii "EFI_TABLE_HEADER\0"
.LASF40:
	.ascii "PixelsPerScanLine\0"
.LASF9:
	.ascii "HeaderSize\0"
.LASF4:
	.ascii "EFI_TIME_CAPABILITIES\0"
.LASF36:
	.ascii "EFI_GRAPHICS_OUTPUT_BLT_PIXEL\0"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "E:\\\\wf\\\\src\\\\uefi\\\\UEFI-Tuts\\\\src\\\\tutorial 30\0"
.LASF0:
	.ascii "efimain.c\0"
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.1.0"
