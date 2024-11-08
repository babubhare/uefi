	.file	"loader.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "E://wf//src//uefi//UEFI-Tuts//src//tutorial 30" "loader/loader.c"
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
	.file 1 "loader/../efilibs.h"
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
	.globl	biStruct
	.section	.text,"w"
	.align 8
biStruct:
	.space 8
	.section .rdata,"dr"
	.align 8
.LC29:
	.ascii "M\0A\0I\0N\0 \0F\0U\0N\0C\0T\0I\0O\0N\0 \0C\0A\0L\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB23:
	.file 2 "loader/loader.c"
	.loc 2 54 1
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
	.loc 2 54 1
	call	__main
	.loc 2 55 11
	movq	16(%rbp), %rax
	movq	%rax, biStruct(%rip)
	.loc 2 56 10
	movq	biStruct(%rip), %rax
	.loc 2 56 28
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 2 56 24
	movq	%rdx, (%rax)
	.loc 2 57 2
	leaq	.LC29(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 58 2
	movl	$-23296, 32(%rsp)
	movl	$150, %r9d
	movl	$150, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	call	CreateBufferFilledBox
.L67:
	.loc 2 60 11 discriminator 1
/APP
 # 60 "loader/loader.c" 1
	hlt
 # 0 "" 2
/NO_APP
	jmp	.L67
	.cfi_endproc
.LFE23:
	.seh_endproc
	.globl	CreateBufferFilledBox
	.def	CreateBufferFilledBox;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBufferFilledBox
CreateBufferFilledBox:
.LFB24:
	.loc 2 64 1
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
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	.loc 2 66 14
	movl	24(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 2 67 14
	movl	16(%rbp), %edx
	movl	32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	.loc 2 68 14
	movl	24(%rbp), %edx
	movl	40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 2 70 11
	movl	24(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 2 70 5
	jmp	.L69
.L72:
	.loc 2 72 15
	movl	16(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 2 72 9
	jmp	.L70
.L71:
	.loc 2 74 32
	movq	biStruct(%rip), %rax
	movl	24(%rax), %eax
	.loc 2 74 22
	imull	-8(%rbp), %eax
	movl	%eax, %edx
	.loc 2 74 17
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	.loc 2 74 53
	leaq	0(,%rax,4), %rdx
	.loc 2 74 75
	movq	biStruct(%rip), %rax
	movq	(%rax), %rax
	.loc 2 74 53
	addq	%rdx, %rax
	movq	%rax, %rdx
	.loc 2 74 91
	movl	48(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 2 72 36 discriminator 3
	addl	$1, -4(%rbp)
.L70:
	.loc 2 72 25 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L71
	.loc 2 70 33 discriminator 2
	addl	$1, -8(%rbp)
.L69:
	.loc 2 70 21 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jnb	.L72
	.loc 2 77 1
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.seh_endproc
.Letext0:
	.file 3 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint-gcc.h"
	.file 4 "loader/../efi.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x3646
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x23
	.ascii "GNU C17 14.1.0 -m64 -mabi=ms -mtune=generic -march=nocona -g -O0 -ffreestanding\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0xb
	.ascii "uint32_t\0"
	.byte	0x3
	.byte	0x34
	.byte	0x16
	.long	0xe6
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0xb
	.ascii "uint_least16_t\0"
	.byte	0x3
	.byte	0x41
	.byte	0x1c
	.long	0xbf
	.uleb128 0xb
	.ascii "CHAR16\0"
	.byte	0x4
	.byte	0x62
	.byte	0x18
	.long	0x110
	.uleb128 0xb
	.ascii "UINT8\0"
	.byte	0x4
	.byte	0x64
	.byte	0x17
	.long	0xae
	.uleb128 0xb
	.ascii "UINT16\0"
	.byte	0x4
	.byte	0x65
	.byte	0x18
	.long	0xbf
	.uleb128 0xb
	.ascii "UINT32\0"
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.long	0xe6
	.uleb128 0xb
	.ascii "UINT64\0"
	.byte	0x4
	.byte	0x67
	.byte	0x1c
	.long	0xf6
	.uleb128 0xb
	.ascii "INT32\0"
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.long	0x96
	.uleb128 0xb
	.ascii "UINTN\0"
	.byte	0x4
	.byte	0x6e
	.byte	0x1c
	.long	0xf6
	.uleb128 0xb
	.ascii "BOOLEAN\0"
	.byte	0x4
	.byte	0x70
	.byte	0x17
	.long	0xae
	.uleb128 0xb
	.ascii "EFI_TPL\0"
	.byte	0x4
	.byte	0x72
	.byte	0xf
	.long	0x17f
	.uleb128 0xb
	.ascii "EFI_HANDLE\0"
	.byte	0x4
	.byte	0x73
	.byte	0xf
	.long	0x1c0
	.uleb128 0x24
	.byte	0x8
	.uleb128 0xb
	.ascii "EFI_STATUS\0"
	.byte	0x4
	.byte	0x74
	.byte	0x10
	.long	0x162
	.uleb128 0xb
	.ascii "EFI_EVENT\0"
	.byte	0x4
	.byte	0x75
	.byte	0xf
	.long	0x1c0
	.uleb128 0xb
	.ascii "EFI_PHYSICAL_ADDRESS\0"
	.byte	0x4
	.byte	0x76
	.byte	0x10
	.long	0x162
	.uleb128 0xb
	.ascii "EFI_VIRTUAL_ADDRESS\0"
	.byte	0x4
	.byte	0x77
	.byte	0x10
	.long	0x162
	.uleb128 0x12
	.secrel32	.LASF2
	.byte	0x10
	.byte	0x4
	.byte	0x7b
	.long	0x269
	.uleb128 0x7
	.ascii "Data1\0"
	.byte	0x4
	.byte	0x7d
	.byte	0xc
	.long	0x153
	.byte	0
	.uleb128 0x7
	.ascii "Data2\0"
	.byte	0x4
	.byte	0x7e
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x7
	.ascii "Data3\0"
	.byte	0x4
	.byte	0x7f
	.byte	0xc
	.long	0x144
	.byte	0x6
	.uleb128 0x7
	.ascii "Data4\0"
	.byte	0x4
	.byte	0x80
	.byte	0xb
	.long	0x269
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	0x136
	.long	0x279
	.uleb128 0x18
	.long	0xf6
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0x4
	.byte	0x81
	.byte	0x3
	.long	0x220
	.uleb128 0xe
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x85
	.byte	0x11
	.long	0x220
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID
	.uleb128 0xe
	.ascii "EFI_LOADED_IMAGE_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x86
	.byte	0x11
	.long	0x220
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_LOADED_IMAGE_PROTOCOL_GUID
	.uleb128 0xe
	.ascii "EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x87
	.byte	0x11
	.long	0x220
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID
	.uleb128 0xe
	.ascii "EFI_DEVICE_PATH_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x88
	.byte	0x11
	.long	0x220
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_DEVICE_PATH_PROTOCOL_GUID
	.uleb128 0xe
	.ascii "EFI_FILE_INFO_GUID\0"
	.byte	0x4
	.byte	0x89
	.byte	0x11
	.long	0x220
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_FILE_INFO_GUID
	.uleb128 0xe
	.ascii "ACPI_20_TABLE_GUID\0"
	.byte	0x4
	.byte	0x8a
	.byte	0x11
	.long	0x220
	.uleb128 0x9
	.byte	0x3
	.quad	ACPI_20_TABLE_GUID
	.uleb128 0x25
	.ascii "EFI_MEMORY_TYPE\0"
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x4
	.byte	0x95
	.byte	0xe
	.long	0x527
	.uleb128 0x6
	.ascii "EfiReservedMemoryType\0"
	.byte	0
	.uleb128 0x6
	.ascii "EfiLoaderCode\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "EfiLoaderData\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "EfiBootServicesCode\0"
	.byte	0x3
	.uleb128 0x6
	.ascii "EfiBootServicesData\0"
	.byte	0x4
	.uleb128 0x6
	.ascii "EfiRuntimeServicesCode\0"
	.byte	0x5
	.uleb128 0x6
	.ascii "EfiRuntimeServicesData\0"
	.byte	0x6
	.uleb128 0x6
	.ascii "EfiConventionalMemory\0"
	.byte	0x7
	.uleb128 0x6
	.ascii "EfiUnusableMemory\0"
	.byte	0x8
	.uleb128 0x6
	.ascii "EfiACPIReclaimMemory\0"
	.byte	0x9
	.uleb128 0x6
	.ascii "EfiACPIMemoryNVS\0"
	.byte	0xa
	.uleb128 0x6
	.ascii "EfiMemoryMappedIO\0"
	.byte	0xb
	.uleb128 0x6
	.ascii "EfiMemoryMappedIOPortSpace\0"
	.byte	0xc
	.uleb128 0x6
	.ascii "EfiPalCode\0"
	.byte	0xd
	.uleb128 0x6
	.ascii "EfiPersistentMemory\0"
	.byte	0xe
	.uleb128 0x6
	.ascii "EfiUnacceptedMemoryType\0"
	.byte	0xf
	.uleb128 0x6
	.ascii "EfiMaxMemoryType\0"
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF3
	.byte	0x10
	.byte	0x4
	.byte	0xab
	.long	0x5e0
	.uleb128 0x7
	.ascii "Year\0"
	.byte	0x4
	.byte	0xad
	.byte	0x9
	.long	0x144
	.byte	0
	.uleb128 0x7
	.ascii "Month\0"
	.byte	0x4
	.byte	0xae
	.byte	0x8
	.long	0x136
	.byte	0x2
	.uleb128 0x7
	.ascii "Day\0"
	.byte	0x4
	.byte	0xaf
	.byte	0x8
	.long	0x136
	.byte	0x3
	.uleb128 0x7
	.ascii "Hour\0"
	.byte	0x4
	.byte	0xb0
	.byte	0x8
	.long	0x136
	.byte	0x4
	.uleb128 0x7
	.ascii "Minute\0"
	.byte	0x4
	.byte	0xb1
	.byte	0x8
	.long	0x136
	.byte	0x5
	.uleb128 0x7
	.ascii "Second\0"
	.byte	0x4
	.byte	0xb2
	.byte	0x8
	.long	0x136
	.byte	0x6
	.uleb128 0x7
	.ascii "Pad1\0"
	.byte	0x4
	.byte	0xb3
	.byte	0x8
	.long	0x136
	.byte	0x7
	.uleb128 0x7
	.ascii "Nanosecond\0"
	.byte	0x4
	.byte	0xb4
	.byte	0x9
	.long	0x153
	.byte	0x8
	.uleb128 0x7
	.ascii "TimeZone\0"
	.byte	0x4
	.byte	0xb5
	.byte	0x9
	.long	0x144
	.byte	0xc
	.uleb128 0x7
	.ascii "DayLight\0"
	.byte	0x4
	.byte	0xb6
	.byte	0x8
	.long	0x136
	.byte	0xe
	.uleb128 0x7
	.ascii "Pad2\0"
	.byte	0x4
	.byte	0xb7
	.byte	0x8
	.long	0x136
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF3
	.byte	0x4
	.byte	0xb8
	.byte	0x3
	.long	0x527
	.uleb128 0x12
	.secrel32	.LASF4
	.byte	0xc
	.byte	0x4
	.byte	0xbb
	.long	0x633
	.uleb128 0x7
	.ascii "Resolution\0"
	.byte	0x4
	.byte	0xbd
	.byte	0x9
	.long	0x153
	.byte	0
	.uleb128 0x7
	.ascii "Accuracy\0"
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.long	0x153
	.byte	0x4
	.uleb128 0x7
	.ascii "SetsToZero\0"
	.byte	0x4
	.byte	0xbf
	.byte	0xa
	.long	0x18d
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF4
	.byte	0x4
	.byte	0xc0
	.byte	0x3
	.long	0x5ec
	.uleb128 0x19
	.secrel32	.LASF5
	.long	0xe6
	.byte	0xc4
	.long	0x69a
	.uleb128 0x6
	.ascii "EfiResetCold\0"
	.byte	0
	.uleb128 0x6
	.ascii "EfiResetWarm\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "EfiResetShutdown\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "EfiResetPlatformSpecific\0"
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF5
	.byte	0x4
	.byte	0xca
	.byte	0x3
	.long	0x63f
	.uleb128 0x12
	.secrel32	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0xcd
	.long	0x6dc
	.uleb128 0x7
	.ascii "VendorGuid\0"
	.byte	0x4
	.byte	0xcf
	.byte	0xe
	.long	0x279
	.byte	0
	.uleb128 0x7
	.ascii "VendorTable\0"
	.byte	0x4
	.byte	0xd0
	.byte	0xb
	.long	0x1c0
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF6
	.byte	0x4
	.byte	0xd1
	.byte	0x3
	.long	0x6a6
	.uleb128 0x12
	.secrel32	.LASF7
	.byte	0x18
	.byte	0x4
	.byte	0xd5
	.long	0x73e
	.uleb128 0x7
	.ascii "Signature\0"
	.byte	0x4
	.byte	0xd7
	.byte	0xc
	.long	0x162
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF8
	.byte	0x4
	.byte	0xd8
	.byte	0xc
	.long	0x153
	.byte	0x8
	.uleb128 0x14
	.secrel32	.LASF9
	.byte	0x4
	.byte	0xd9
	.byte	0xc
	.long	0x153
	.byte	0xc
	.uleb128 0x7
	.ascii "CRC32\0"
	.byte	0x4
	.byte	0xda
	.byte	0xc
	.long	0x153
	.byte	0x10
	.uleb128 0x14
	.secrel32	.LASF10
	.byte	0x4
	.byte	0xdb
	.byte	0xc
	.long	0x153
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF7
	.byte	0x4
	.byte	0xdc
	.byte	0x3
	.long	0x6e8
	.uleb128 0x19
	.secrel32	.LASF11
	.long	0xe6
	.byte	0xdf
	.long	0x7a5
	.uleb128 0x6
	.ascii "AllocateAnyPages\0"
	.byte	0
	.uleb128 0x6
	.ascii "AllocateMaxAddress\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "AllocateAddress\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "MaxAllocateType\0"
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF11
	.byte	0x4
	.byte	0xe5
	.byte	0x3
	.long	0x74a
	.uleb128 0x19
	.secrel32	.LASF12
	.long	0xe6
	.byte	0xe8
	.long	0x7ee
	.uleb128 0x6
	.ascii "TimerCancel\0"
	.byte	0
	.uleb128 0x6
	.ascii "TimerPeriodic\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "TimerRelative\0"
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF12
	.byte	0x4
	.byte	0xed
	.byte	0x3
	.long	0x7b1
	.uleb128 0x12
	.secrel32	.LASF13
	.byte	0x28
	.byte	0x4
	.byte	0xf0
	.long	0x866
	.uleb128 0x7
	.ascii "Type\0"
	.byte	0x4
	.byte	0xf2
	.byte	0xc
	.long	0x153
	.byte	0
	.uleb128 0x7
	.ascii "PhysicalStart\0"
	.byte	0x4
	.byte	0xf3
	.byte	0x1a
	.long	0x1e7
	.byte	0x8
	.uleb128 0x7
	.ascii "VirtualStart\0"
	.byte	0x4
	.byte	0xf4
	.byte	0x19
	.long	0x204
	.byte	0x10
	.uleb128 0x7
	.ascii "NumberOfPages\0"
	.byte	0x4
	.byte	0xf5
	.byte	0xc
	.long	0x162
	.byte	0x18
	.uleb128 0x14
	.secrel32	.LASF14
	.byte	0x4
	.byte	0xf6
	.byte	0xc
	.long	0x162
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF13
	.byte	0x4
	.byte	0xf7
	.byte	0x3
	.long	0x7fa
	.uleb128 0x19
	.secrel32	.LASF15
	.long	0xe6
	.byte	0xfa
	.long	0x898
	.uleb128 0x6
	.ascii "EFI_NATIVE_INTERFACE\0"
	.byte	0
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF15
	.byte	0x4
	.byte	0xfd
	.byte	0x3
	.long	0x872
	.uleb128 0x1d
	.secrel32	.LASF16
	.long	0xe6
	.word	0x100
	.long	0x8e1
	.uleb128 0x6
	.ascii "AllHandles\0"
	.byte	0
	.uleb128 0x6
	.ascii "ByRegisterNotify\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "ByProtocol\0"
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF16
	.word	0x105
	.byte	0x3
	.long	0x8a4
	.uleb128 0xa
	.secrel32	.LASF17
	.byte	0x18
	.word	0x108
	.long	0x950
	.uleb128 0x2
	.ascii "AgentHandle\0"
	.word	0x10a
	.byte	0x10
	.long	0x1ad
	.byte	0
	.uleb128 0x2
	.ascii "ControllerHandle\0"
	.word	0x10b
	.byte	0x10
	.long	0x1ad
	.byte	0x8
	.uleb128 0x2
	.ascii "Attributes\0"
	.word	0x10c
	.byte	0xc
	.long	0x153
	.byte	0x10
	.uleb128 0x2
	.ascii "OpenCount\0"
	.word	0x10d
	.byte	0xc
	.long	0x153
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF17
	.word	0x10e
	.byte	0x3
	.long	0x8ed
	.uleb128 0xa
	.secrel32	.LASF18
	.byte	0x4
	.word	0x111
	.long	0x998
	.uleb128 0x2
	.ascii "Type\0"
	.word	0x113
	.byte	0xb
	.long	0x136
	.byte	0
	.uleb128 0x2
	.ascii "SubType\0"
	.word	0x114
	.byte	0xb
	.long	0x136
	.byte	0x1
	.uleb128 0x2
	.ascii "Length\0"
	.word	0x115
	.byte	0xb
	.long	0x998
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.long	0x136
	.long	0x9a8
	.uleb128 0x18
	.long	0xf6
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF18
	.word	0x116
	.byte	0x3
	.long	0x95c
	.uleb128 0xa
	.secrel32	.LASF19
	.byte	0x1c
	.word	0x119
	.long	0xa0c
	.uleb128 0x2
	.ascii "CapsuleGuid\0"
	.word	0x11b
	.byte	0xe
	.long	0x279
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF9
	.word	0x11c
	.byte	0xc
	.long	0x153
	.byte	0x10
	.uleb128 0x2
	.ascii "Flags\0"
	.word	0x11d
	.byte	0xc
	.long	0x153
	.byte	0x14
	.uleb128 0x2
	.ascii "CapsuleImageSize\0"
	.word	0x11e
	.byte	0xc
	.long	0x153
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF19
	.word	0x11f
	.byte	0x3
	.long	0x9b4
	.uleb128 0xa
	.secrel32	.LASF20
	.byte	0x4
	.word	0x125
	.long	0xa4c
	.uleb128 0x2
	.ascii "ScanCode\0"
	.word	0x127
	.byte	0x9
	.long	0x144
	.byte	0
	.uleb128 0x2
	.ascii "UnicodeChar\0"
	.word	0x128
	.byte	0x9
	.long	0x144
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF20
	.word	0x129
	.byte	0x2
	.long	0xa18
	.uleb128 0x4
	.ascii "EFI_EVENT_NOTIFY\0"
	.word	0x12c
	.byte	0xf
	.long	0xa71
	.uleb128 0x3
	.long	0xa76
	.uleb128 0x26
	.long	0xa86
	.uleb128 0x1
	.long	0x1d5
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INPUT_RESET\0"
	.word	0x12f
	.byte	0x16
	.long	0xa9e
	.uleb128 0x3
	.long	0xaa3
	.uleb128 0x5
	.long	0x1c2
	.long	0xab7
	.uleb128 0x1
	.long	0xab7
	.uleb128 0x1
	.long	0x18d
	.byte	0
	.uleb128 0x3
	.long	0xabc
	.uleb128 0xa
	.secrel32	.LASF21
	.byte	0x18
	.word	0x136
	.long	0xb03
	.uleb128 0x2
	.ascii "Reset\0"
	.word	0x138
	.byte	0x12
	.long	0xa86
	.byte	0
	.uleb128 0x2
	.ascii "ReadKeyStroke\0"
	.word	0x139
	.byte	0x15
	.long	0xb03
	.byte	0x8
	.uleb128 0x2
	.ascii "WaitForKey\0"
	.word	0x13a
	.byte	0xc
	.long	0x1d5
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INPUT_READ_KEY\0"
	.word	0x132
	.byte	0x16
	.long	0xb1e
	.uleb128 0x3
	.long	0xb23
	.uleb128 0x5
	.long	0x1c2
	.long	0xb37
	.uleb128 0x1
	.long	0xab7
	.uleb128 0x1
	.long	0xb37
	.byte	0
	.uleb128 0x3
	.long	0xa4c
	.uleb128 0x8
	.secrel32	.LASF21
	.word	0x13b
	.byte	0x3
	.long	0xabc
	.uleb128 0xa
	.secrel32	.LASF22
	.byte	0x18
	.word	0x13f
	.long	0xbc1
	.uleb128 0x2
	.ascii "MaxMode\0"
	.word	0x141
	.byte	0xb
	.long	0x171
	.byte	0
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x142
	.byte	0xb
	.long	0x171
	.byte	0x4
	.uleb128 0xf
	.secrel32	.LASF14
	.word	0x143
	.byte	0xb
	.long	0x171
	.byte	0x8
	.uleb128 0x2
	.ascii "CursorColumn\0"
	.word	0x144
	.byte	0xb
	.long	0x171
	.byte	0xc
	.uleb128 0x2
	.ascii "CursorRow\0"
	.word	0x145
	.byte	0xb
	.long	0x171
	.byte	0x10
	.uleb128 0x2
	.ascii "CursorVisible\0"
	.word	0x146
	.byte	0xd
	.long	0x18d
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF22
	.word	0x147
	.byte	0x3
	.long	0xb48
	.uleb128 0x4
	.ascii "EFI_TEXT_RESET\0"
	.word	0x14a
	.byte	0x16
	.long	0xbe4
	.uleb128 0x3
	.long	0xbe9
	.uleb128 0x5
	.long	0x1c2
	.long	0xbfd
	.uleb128 0x1
	.long	0xbfd
	.uleb128 0x1
	.long	0x18d
	.byte	0
	.uleb128 0x3
	.long	0xc02
	.uleb128 0xa
	.secrel32	.LASF23
	.byte	0x50
	.word	0x163
	.long	0xcc8
	.uleb128 0x2
	.ascii "Reset\0"
	.word	0x165
	.byte	0x14
	.long	0xbcd
	.byte	0
	.uleb128 0x2
	.ascii "OutputString\0"
	.word	0x166
	.byte	0x15
	.long	0xcc8
	.byte	0x8
	.uleb128 0x2
	.ascii "TestString\0"
	.word	0x167
	.byte	0x1a
	.long	0xcfe
	.byte	0x10
	.uleb128 0xf
	.secrel32	.LASF24
	.word	0x168
	.byte	0x19
	.long	0xd1b
	.byte	0x18
	.uleb128 0x2
	.ascii "SetMode\0"
	.word	0x169
	.byte	0x17
	.long	0xd5f
	.byte	0x20
	.uleb128 0x2
	.ascii "SetAttribute\0"
	.word	0x16a
	.byte	0x1c
	.long	0xd92
	.byte	0x28
	.uleb128 0xf
	.secrel32	.LASF25
	.word	0x16b
	.byte	0x1b
	.long	0xdb1
	.byte	0x30
	.uleb128 0x2
	.ascii "SetCursorPosition\0"
	.word	0x16c
	.byte	0x22
	.long	0xde3
	.byte	0x38
	.uleb128 0x2
	.ascii "EnableCursor\0"
	.word	0x16d
	.byte	0x1c
	.long	0xe26
	.byte	0x40
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x16e
	.byte	0x1e
	.long	0xe45
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_STRING\0"
	.word	0x14d
	.byte	0x16
	.long	0xce0
	.uleb128 0x3
	.long	0xce5
	.uleb128 0x5
	.long	0x1c2
	.long	0xcf9
	.uleb128 0x1
	.long	0xbfd
	.uleb128 0x1
	.long	0xcf9
	.byte	0
	.uleb128 0x3
	.long	0x127
	.uleb128 0x4
	.ascii "EFI_TEXT_TEST_STRING\0"
	.word	0x151
	.byte	0x16
	.long	0xce0
	.uleb128 0x4
	.ascii "EFI_TEXT_QUERY_MODE\0"
	.word	0x152
	.byte	0x16
	.long	0xd37
	.uleb128 0x3
	.long	0xd3c
	.uleb128 0x5
	.long	0x1c2
	.long	0xd5a
	.uleb128 0x1
	.long	0xbfd
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0xd5a
	.byte	0
	.uleb128 0x3
	.long	0x17f
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_MODE\0"
	.word	0x153
	.byte	0x16
	.long	0xd79
	.uleb128 0x3
	.long	0xd7e
	.uleb128 0x5
	.long	0x1c2
	.long	0xd92
	.uleb128 0x1
	.long	0xbfd
	.uleb128 0x1
	.long	0x17f
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_ATTRIBUTE\0"
	.word	0x156
	.byte	0x16
	.long	0xd79
	.uleb128 0x4
	.ascii "EFI_TEXT_CLEAR_SCREEN\0"
	.word	0x159
	.byte	0x16
	.long	0xdcf
	.uleb128 0x3
	.long	0xdd4
	.uleb128 0x5
	.long	0x1c2
	.long	0xde3
	.uleb128 0x1
	.long	0xbfd
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_CURSOR_POSITION\0"
	.word	0x15c
	.byte	0x16
	.long	0xe08
	.uleb128 0x3
	.long	0xe0d
	.uleb128 0x5
	.long	0x1c2
	.long	0xe26
	.uleb128 0x1
	.long	0xbfd
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_ENABLE_CURSOR\0"
	.word	0x15f
	.byte	0x16
	.long	0xbe4
	.uleb128 0x3
	.long	0xbc1
	.uleb128 0x8
	.secrel32	.LASF23
	.word	0x16f
	.byte	0x3
	.long	0xc02
	.uleb128 0x4
	.ascii "EFI_RAISE_TPL\0"
	.word	0x171
	.byte	0x16
	.long	0xe6c
	.uleb128 0x3
	.long	0xe71
	.uleb128 0x5
	.long	0x1c2
	.long	0xe80
	.uleb128 0x1
	.long	0x19d
	.byte	0
	.uleb128 0x4
	.ascii "EFI_RESTORE_TPL\0"
	.word	0x172
	.byte	0x16
	.long	0xe6c
	.uleb128 0x4
	.ascii "EFI_ALLOCATE_PAGES\0"
	.word	0x173
	.byte	0x16
	.long	0xeb3
	.uleb128 0x3
	.long	0xeb8
	.uleb128 0x5
	.long	0x1c2
	.long	0xed6
	.uleb128 0x1
	.long	0x7a5
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0xed6
	.byte	0
	.uleb128 0x3
	.long	0x1e7
	.uleb128 0x4
	.ascii "EFI_FREE_PAGES\0"
	.word	0x174
	.byte	0x16
	.long	0xef2
	.uleb128 0x3
	.long	0xef7
	.uleb128 0x5
	.long	0x1c2
	.long	0xf0b
	.uleb128 0x1
	.long	0x1e7
	.uleb128 0x1
	.long	0x17f
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_MEMORY_MAP\0"
	.word	0x175
	.byte	0x16
	.long	0xf26
	.uleb128 0x3
	.long	0xf2b
	.uleb128 0x5
	.long	0x1c2
	.long	0xf4e
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0xf4e
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0xf53
	.byte	0
	.uleb128 0x3
	.long	0x866
	.uleb128 0x3
	.long	0x153
	.uleb128 0x4
	.ascii "EFI_ALLOCATE_POOL\0"
	.word	0x176
	.byte	0x16
	.long	0xf72
	.uleb128 0x3
	.long	0xf77
	.uleb128 0x5
	.long	0x1c2
	.long	0xf90
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0xf90
	.byte	0
	.uleb128 0x3
	.long	0x1c0
	.uleb128 0x4
	.ascii "EFI_FREE_POOL\0"
	.word	0x177
	.byte	0x16
	.long	0xfab
	.uleb128 0x3
	.long	0xfb0
	.uleb128 0x5
	.long	0x1c2
	.long	0xfbf
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CREATE_EVENT\0"
	.word	0x178
	.byte	0x16
	.long	0xfd8
	.uleb128 0x3
	.long	0xfdd
	.uleb128 0x5
	.long	0x1c2
	.long	0x1005
	.uleb128 0x1
	.long	0x153
	.uleb128 0x1
	.long	0x19d
	.uleb128 0x1
	.long	0xa58
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x100a
	.byte	0
	.uleb128 0x3
	.long	0x279
	.uleb128 0x3
	.long	0x1d5
	.uleb128 0x4
	.ascii "EFI_SET_TIMER\0"
	.word	0x179
	.byte	0x16
	.long	0x1025
	.uleb128 0x3
	.long	0x102a
	.uleb128 0x5
	.long	0x1c2
	.long	0x1043
	.uleb128 0x1
	.long	0x1d5
	.uleb128 0x1
	.long	0x7ee
	.uleb128 0x1
	.long	0x162
	.byte	0
	.uleb128 0x4
	.ascii "EFI_WAIT_FOR_EVENT\0"
	.word	0x17a
	.byte	0x16
	.long	0x105e
	.uleb128 0x3
	.long	0x1063
	.uleb128 0x5
	.long	0x1c2
	.long	0x107c
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x100a
	.uleb128 0x1
	.long	0xd5a
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SIGNAL_EVENT\0"
	.word	0x17b
	.byte	0x16
	.long	0x1095
	.uleb128 0x3
	.long	0x109a
	.uleb128 0x5
	.long	0x1c2
	.long	0x10a9
	.uleb128 0x1
	.long	0x1d5
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CLOSE_EVENT\0"
	.word	0x17c
	.byte	0x16
	.long	0x1095
	.uleb128 0x4
	.ascii "EFI_CHECK_EVENT\0"
	.word	0x17d
	.byte	0x16
	.long	0x1095
	.uleb128 0x4
	.ascii "EFI_INSTALL_PROTOCOL_INTERFACE\0"
	.word	0x17e
	.byte	0x16
	.long	0x1100
	.uleb128 0x3
	.long	0x1105
	.uleb128 0x5
	.long	0x1c2
	.long	0x1123
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x898
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x3
	.long	0x1ad
	.uleb128 0x4
	.ascii "EFI_REINSTALL_PROTOCOL_INTERFACE\0"
	.word	0x17f
	.byte	0x16
	.long	0x1151
	.uleb128 0x3
	.long	0x1156
	.uleb128 0x5
	.long	0x1c2
	.long	0x1174
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UNINSTALL_PROTOCOL_INTERFACE\0"
	.word	0x180
	.byte	0x16
	.long	0x119d
	.uleb128 0x3
	.long	0x11a2
	.uleb128 0x5
	.long	0x1c2
	.long	0x11bb
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_HANDLE_PROTOCOL\0"
	.word	0x181
	.byte	0x16
	.long	0x11d7
	.uleb128 0x3
	.long	0x11dc
	.uleb128 0x5
	.long	0x1c2
	.long	0x11f5
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0xf90
	.byte	0
	.uleb128 0x4
	.ascii "EFI_REGISTER_PROTOCOL_NOTIFY\0"
	.word	0x182
	.byte	0x16
	.long	0x121a
	.uleb128 0x3
	.long	0x121f
	.uleb128 0x5
	.long	0x1c2
	.long	0x1238
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1d5
	.uleb128 0x1
	.long	0xf90
	.byte	0
	.uleb128 0x4
	.ascii "EFI_LOCATE_HANDLE\0"
	.word	0x183
	.byte	0x16
	.long	0x1252
	.uleb128 0x3
	.long	0x1257
	.uleb128 0x5
	.long	0x1c2
	.long	0x127a
	.uleb128 0x1
	.long	0x8e1
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0x1123
	.byte	0
	.uleb128 0x4
	.ascii "EFI_LOCATE_DEVICE_PATH\0"
	.word	0x184
	.byte	0x16
	.long	0x1299
	.uleb128 0x3
	.long	0x129e
	.uleb128 0x5
	.long	0x1c2
	.long	0x12b7
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x12b7
	.uleb128 0x1
	.long	0x1123
	.byte	0
	.uleb128 0x3
	.long	0x12bc
	.uleb128 0x3
	.long	0x9a8
	.uleb128 0x4
	.ascii "EFI_INSTALL_CONFIGURATION_TABLE\0"
	.word	0x185
	.byte	0x16
	.long	0x12e9
	.uleb128 0x3
	.long	0x12ee
	.uleb128 0x5
	.long	0x1c2
	.long	0x1302
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_LOAD\0"
	.word	0x186
	.byte	0x16
	.long	0x1319
	.uleb128 0x3
	.long	0x131e
	.uleb128 0x5
	.long	0x1c2
	.long	0x1346
	.uleb128 0x1
	.long	0x18d
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x12bc
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x1123
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_START\0"
	.word	0x187
	.byte	0x16
	.long	0x135e
	.uleb128 0x3
	.long	0x1363
	.uleb128 0x5
	.long	0x1c2
	.long	0x137c
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0x137c
	.byte	0
	.uleb128 0x3
	.long	0xcf9
	.uleb128 0x4
	.ascii "EFI_EXIT\0"
	.word	0x188
	.byte	0x16
	.long	0x1392
	.uleb128 0x3
	.long	0x1397
	.uleb128 0x5
	.long	0x1c2
	.long	0x13b5
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1c2
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0xcf9
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_UNLOAD\0"
	.word	0x189
	.byte	0x16
	.long	0x13ce
	.uleb128 0x3
	.long	0x13d3
	.uleb128 0x5
	.long	0x1c2
	.long	0x13e2
	.uleb128 0x1
	.long	0x1ad
	.byte	0
	.uleb128 0x4
	.ascii "EFI_EXIT_BOOT_SERVICES\0"
	.word	0x18a
	.byte	0x16
	.long	0x1401
	.uleb128 0x3
	.long	0x1406
	.uleb128 0x5
	.long	0x1c2
	.long	0x141a
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x17f
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_MONOTONIC_COUNT\0"
	.word	0x18b
	.byte	0x16
	.long	0x143f
	.uleb128 0x3
	.long	0x1444
	.uleb128 0x5
	.long	0x1c2
	.long	0x1453
	.uleb128 0x1
	.long	0x1453
	.byte	0
	.uleb128 0x3
	.long	0x162
	.uleb128 0x4
	.ascii "EFI_STALL\0"
	.word	0x18c
	.byte	0x16
	.long	0x146a
	.uleb128 0x3
	.long	0x146f
	.uleb128 0x5
	.long	0x1c2
	.long	0x147e
	.uleb128 0x1
	.long	0x17f
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_WATCHDOG_TIMER\0"
	.word	0x18d
	.byte	0x16
	.long	0x149d
	.uleb128 0x3
	.long	0x14a2
	.uleb128 0x5
	.long	0x1c2
	.long	0x14c0
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x162
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0xcf9
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CONNECT_CONTROLLER\0"
	.word	0x18e
	.byte	0x16
	.long	0x14df
	.uleb128 0x3
	.long	0x14e4
	.uleb128 0x5
	.long	0x1c2
	.long	0x1502
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x12bc
	.uleb128 0x1
	.long	0x18d
	.byte	0
	.uleb128 0x4
	.ascii "EFI_DISCONNECT_CONTROLLER\0"
	.word	0x18f
	.byte	0x16
	.long	0x1524
	.uleb128 0x3
	.long	0x1529
	.uleb128 0x5
	.long	0x1c2
	.long	0x1542
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1ad
	.byte	0
	.uleb128 0x4
	.ascii "EFI_OPEN_PROTOCOL\0"
	.word	0x190
	.byte	0x16
	.long	0x155c
	.uleb128 0x3
	.long	0x1561
	.uleb128 0x5
	.long	0x1c2
	.long	0x1589
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0xf90
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x153
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CLOSE_PROTOCOL\0"
	.word	0x191
	.byte	0x16
	.long	0x15a4
	.uleb128 0x3
	.long	0x15a9
	.uleb128 0x5
	.long	0x1c2
	.long	0x15c7
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1ad
	.byte	0
	.uleb128 0x4
	.ascii "EFI_OPEN_PROTOCOL_INFORMATION\0"
	.word	0x192
	.byte	0x16
	.long	0x15ed
	.uleb128 0x3
	.long	0x15f2
	.uleb128 0x5
	.long	0x1c2
	.long	0x1610
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1610
	.uleb128 0x1
	.long	0xd5a
	.byte	0
	.uleb128 0x3
	.long	0x1615
	.uleb128 0x3
	.long	0x950
	.uleb128 0x4
	.ascii "EFI_PROTOCOLS_PER_HANDLE\0"
	.word	0x193
	.byte	0x16
	.long	0x163b
	.uleb128 0x3
	.long	0x1640
	.uleb128 0x5
	.long	0x1c2
	.long	0x1659
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x1659
	.uleb128 0x1
	.long	0xd5a
	.byte	0
	.uleb128 0x3
	.long	0x165e
	.uleb128 0x3
	.long	0x1005
	.uleb128 0x4
	.ascii "EFI_LOCATE_HANDLE_BUFFER\0"
	.word	0x194
	.byte	0x16
	.long	0x1684
	.uleb128 0x3
	.long	0x1689
	.uleb128 0x5
	.long	0x1c2
	.long	0x16ac
	.uleb128 0x1
	.long	0x8e1
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0x16ac
	.byte	0
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x4
	.ascii "EFI_LOCATE_PROTOCOL\0"
	.word	0x195
	.byte	0x16
	.long	0x16cd
	.uleb128 0x3
	.long	0x16d2
	.uleb128 0x5
	.long	0x1c2
	.long	0x16eb
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0xf90
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES\0"
	.word	0x196
	.byte	0x16
	.long	0x171c
	.uleb128 0x3
	.long	0x1721
	.uleb128 0x5
	.long	0x1c2
	.long	0x1731
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x27
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES\0"
	.word	0x197
	.byte	0x16
	.long	0x171c
	.uleb128 0x4
	.ascii "EFI_CALCULATE_CRC32\0"
	.word	0x198
	.byte	0x16
	.long	0x1780
	.uleb128 0x3
	.long	0x1785
	.uleb128 0x5
	.long	0x1c2
	.long	0x179e
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0xf53
	.byte	0
	.uleb128 0x4
	.ascii "EFI_COPY_MEM\0"
	.word	0x199
	.byte	0x16
	.long	0x17b3
	.uleb128 0x3
	.long	0x17b8
	.uleb128 0x5
	.long	0x1c2
	.long	0x17d1
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x17f
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_MEM\0"
	.word	0x19a
	.byte	0x16
	.long	0x17e5
	.uleb128 0x3
	.long	0x17ea
	.uleb128 0x5
	.long	0x1c2
	.long	0x1803
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x136
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CREATE_EVENT_EX\0"
	.word	0x19b
	.byte	0x16
	.long	0xfd8
	.uleb128 0x28
	.secrel32	.LASF26
	.word	0x178
	.byte	0x4
	.word	0x19f
	.byte	0x10
	.long	0x1c80
	.uleb128 0x2
	.ascii "Hdr\0"
	.word	0x1a1
	.byte	0x16
	.long	0x73e
	.byte	0
	.uleb128 0x2
	.ascii "RaiseTPL\0"
	.word	0x1a2
	.byte	0x13
	.long	0xe56
	.byte	0x18
	.uleb128 0x2
	.ascii "RestoreTPL\0"
	.word	0x1a3
	.byte	0x15
	.long	0xe80
	.byte	0x20
	.uleb128 0x2
	.ascii "AllocatePages\0"
	.word	0x1a4
	.byte	0x18
	.long	0xe98
	.byte	0x28
	.uleb128 0x2
	.ascii "FreePages\0"
	.word	0x1a5
	.byte	0x14
	.long	0xedb
	.byte	0x30
	.uleb128 0x2
	.ascii "GetMemoryMap\0"
	.word	0x1a6
	.byte	0x18
	.long	0xf0b
	.byte	0x38
	.uleb128 0x2
	.ascii "AllocatePool\0"
	.word	0x1a7
	.byte	0x17
	.long	0xf58
	.byte	0x40
	.uleb128 0x2
	.ascii "FreePool\0"
	.word	0x1a8
	.byte	0x13
	.long	0xf95
	.byte	0x48
	.uleb128 0x2
	.ascii "CreateEvent\0"
	.word	0x1a9
	.byte	0x16
	.long	0xfbf
	.byte	0x50
	.uleb128 0x2
	.ascii "SetTimer\0"
	.word	0x1aa
	.byte	0x13
	.long	0x100f
	.byte	0x58
	.uleb128 0x2
	.ascii "WaitForEvent\0"
	.word	0x1ab
	.byte	0x18
	.long	0x1043
	.byte	0x60
	.uleb128 0x2
	.ascii "SignalEvent\0"
	.word	0x1ac
	.byte	0x16
	.long	0x107c
	.byte	0x68
	.uleb128 0x2
	.ascii "CloseEvent\0"
	.word	0x1ad
	.byte	0x15
	.long	0x10a9
	.byte	0x70
	.uleb128 0x2
	.ascii "CheckEvent\0"
	.word	0x1ae
	.byte	0x15
	.long	0x10c1
	.byte	0x78
	.uleb128 0x2
	.ascii "InstallProtocolInterface\0"
	.word	0x1af
	.byte	0x24
	.long	0x10d9
	.byte	0x80
	.uleb128 0x2
	.ascii "ReinstallProtocolInterface\0"
	.word	0x1b0
	.byte	0x26
	.long	0x1128
	.byte	0x88
	.uleb128 0x2
	.ascii "UninstallProtocolInterface\0"
	.word	0x1b1
	.byte	0x26
	.long	0x1174
	.byte	0x90
	.uleb128 0x2
	.ascii "HandleProtocol\0"
	.word	0x1b2
	.byte	0x19
	.long	0x11bb
	.byte	0x98
	.uleb128 0xf
	.secrel32	.LASF10
	.word	0x1b3
	.byte	0xb
	.long	0x1c0
	.byte	0xa0
	.uleb128 0x2
	.ascii "RegisterProtocolNotify\0"
	.word	0x1b4
	.byte	0x22
	.long	0x11f5
	.byte	0xa8
	.uleb128 0x2
	.ascii "LocateHandle\0"
	.word	0x1b5
	.byte	0x17
	.long	0x1238
	.byte	0xb0
	.uleb128 0x2
	.ascii "LocateDevicePath\0"
	.word	0x1b6
	.byte	0x1c
	.long	0x127a
	.byte	0xb8
	.uleb128 0x2
	.ascii "InstallConfigurationTable\0"
	.word	0x1b7
	.byte	0x25
	.long	0x12c1
	.byte	0xc0
	.uleb128 0x2
	.ascii "LoadImage\0"
	.word	0x1b8
	.byte	0x14
	.long	0x1302
	.byte	0xc8
	.uleb128 0x2
	.ascii "StartImage\0"
	.word	0x1b9
	.byte	0x15
	.long	0x1346
	.byte	0xd0
	.uleb128 0x2
	.ascii "Exit\0"
	.word	0x1ba
	.byte	0xe
	.long	0x1381
	.byte	0xd8
	.uleb128 0x2
	.ascii "UnloadImage\0"
	.word	0x1bb
	.byte	0x16
	.long	0x13b5
	.byte	0xe0
	.uleb128 0x2
	.ascii "ExitBootServices\0"
	.word	0x1bc
	.byte	0x1c
	.long	0x13e2
	.byte	0xe8
	.uleb128 0x2
	.ascii "GetNextMonotonicCount\0"
	.word	0x1bd
	.byte	0x22
	.long	0x141a
	.byte	0xf0
	.uleb128 0x2
	.ascii "Stall\0"
	.word	0x1be
	.byte	0xf
	.long	0x1458
	.byte	0xf8
	.uleb128 0xd
	.ascii "SetWatchdogTimer\0"
	.word	0x1bf
	.byte	0x1c
	.long	0x147e
	.word	0x100
	.uleb128 0xd
	.ascii "ConnectController\0"
	.word	0x1c0
	.byte	0x1c
	.long	0x14c0
	.word	0x108
	.uleb128 0xd
	.ascii "DisconnectController\0"
	.word	0x1c1
	.byte	0x1f
	.long	0x1502
	.word	0x110
	.uleb128 0xd
	.ascii "OpenProtocol\0"
	.word	0x1c2
	.byte	0x17
	.long	0x1542
	.word	0x118
	.uleb128 0xd
	.ascii "CloseProtocol\0"
	.word	0x1c3
	.byte	0x18
	.long	0x1589
	.word	0x120
	.uleb128 0xd
	.ascii "OpenProtocolInformation\0"
	.word	0x1c4
	.byte	0x23
	.long	0x15c7
	.word	0x128
	.uleb128 0xd
	.ascii "ProtocolsPerHandle\0"
	.word	0x1c5
	.byte	0x1e
	.long	0x161a
	.word	0x130
	.uleb128 0xd
	.ascii "LocateHandleBuffer\0"
	.word	0x1c6
	.byte	0x1e
	.long	0x1663
	.word	0x138
	.uleb128 0xd
	.ascii "LocateProtocol\0"
	.word	0x1c7
	.byte	0x19
	.long	0x16b1
	.word	0x140
	.uleb128 0xd
	.ascii "InstallMultipleProtocolInterfaces\0"
	.word	0x1c8
	.byte	0x2e
	.long	0x16eb
	.word	0x148
	.uleb128 0xd
	.ascii "UninstallMultipleProtocolInterfaces\0"
	.word	0x1c9
	.byte	0x30
	.long	0x1731
	.word	0x150
	.uleb128 0xd
	.ascii "CalculateCrc32\0"
	.word	0x1ca
	.byte	0x19
	.long	0x1764
	.word	0x158
	.uleb128 0xd
	.ascii "CopyMem\0"
	.word	0x1cb
	.byte	0x12
	.long	0x179e
	.word	0x160
	.uleb128 0xd
	.ascii "SetMem\0"
	.word	0x1cc
	.byte	0x11
	.long	0x17d1
	.word	0x168
	.uleb128 0xd
	.ascii "CreateEventEx\0"
	.word	0x1cd
	.byte	0x19
	.long	0x1803
	.word	0x170
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF26
	.word	0x1ce
	.byte	0x3
	.long	0x181f
	.uleb128 0x4
	.ascii "EFI_GET_TIME\0"
	.word	0x1d1
	.byte	0x16
	.long	0x1ca1
	.uleb128 0x3
	.long	0x1ca6
	.uleb128 0x5
	.long	0x1c2
	.long	0x1cba
	.uleb128 0x1
	.long	0x1cba
	.uleb128 0x1
	.long	0x1cbf
	.byte	0
	.uleb128 0x3
	.long	0x5e0
	.uleb128 0x3
	.long	0x633
	.uleb128 0x4
	.ascii "EFI_SET_TIME\0"
	.word	0x1d2
	.byte	0x16
	.long	0x1cd9
	.uleb128 0x3
	.long	0x1cde
	.uleb128 0x5
	.long	0x1c2
	.long	0x1ced
	.uleb128 0x1
	.long	0x1cba
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_WAKEUP_TIME\0"
	.word	0x1d3
	.byte	0x16
	.long	0x1d09
	.uleb128 0x3
	.long	0x1d0e
	.uleb128 0x5
	.long	0x1c2
	.long	0x1d27
	.uleb128 0x1
	.long	0x1d27
	.uleb128 0x1
	.long	0x1d27
	.uleb128 0x1
	.long	0x1cba
	.byte	0
	.uleb128 0x3
	.long	0x18d
	.uleb128 0x4
	.ascii "EFI_SET_WAKEUP_TIME\0"
	.word	0x1d4
	.byte	0x16
	.long	0x1d48
	.uleb128 0x3
	.long	0x1d4d
	.uleb128 0x5
	.long	0x1c2
	.long	0x1d61
	.uleb128 0x1
	.long	0x18d
	.uleb128 0x1
	.long	0x1cba
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_VIRTUAL_ADDRESS_MAP\0"
	.word	0x1d5
	.byte	0x16
	.long	0x1d85
	.uleb128 0x3
	.long	0x1d8a
	.uleb128 0x5
	.long	0x1c2
	.long	0x1da8
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x153
	.uleb128 0x1
	.long	0xf4e
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CONVERT_POINTER\0"
	.word	0x1d6
	.byte	0x16
	.long	0x1dc4
	.uleb128 0x3
	.long	0x1dc9
	.uleb128 0x5
	.long	0x1c2
	.long	0x1ddd
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0xf90
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_VARIABLE\0"
	.word	0x1d7
	.byte	0x16
	.long	0x1df6
	.uleb128 0x3
	.long	0x1dfb
	.uleb128 0x5
	.long	0x1c2
	.long	0x1e1e
	.uleb128 0x1
	.long	0xcf9
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0xf53
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_VARIABLE_NAME\0"
	.word	0x1d8
	.byte	0x16
	.long	0x1e41
	.uleb128 0x3
	.long	0x1e46
	.uleb128 0x5
	.long	0x1c2
	.long	0x1e5f
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0xcf9
	.uleb128 0x1
	.long	0x1005
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_VARIABLE\0"
	.word	0x1d9
	.byte	0x16
	.long	0x1e78
	.uleb128 0x3
	.long	0x1e7d
	.uleb128 0x5
	.long	0x1c2
	.long	0x1ea0
	.uleb128 0x1
	.long	0xcf9
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x153
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_HIGH_MONO_COUNT\0"
	.word	0x1da
	.byte	0x16
	.long	0x1ec5
	.uleb128 0x3
	.long	0x1eca
	.uleb128 0x5
	.long	0x1c2
	.long	0x1ed9
	.uleb128 0x1
	.long	0xf53
	.byte	0
	.uleb128 0x4
	.ascii "EFI_RESET_SYSTEM\0"
	.word	0x1db
	.byte	0x16
	.long	0x1ef2
	.uleb128 0x3
	.long	0x1ef7
	.uleb128 0x5
	.long	0x1c2
	.long	0x1f15
	.uleb128 0x1
	.long	0x69a
	.uleb128 0x1
	.long	0x1c2
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UPDATE_CAPSULE\0"
	.word	0x1dc
	.byte	0x16
	.long	0x1f30
	.uleb128 0x3
	.long	0x1f35
	.uleb128 0x5
	.long	0x1c2
	.long	0x1f4e
	.uleb128 0x1
	.long	0x1f4e
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x1e7
	.byte	0
	.uleb128 0x3
	.long	0x1f53
	.uleb128 0x3
	.long	0xa0c
	.uleb128 0x4
	.ascii "EFI_QUERY_CAPSULE_CAPABILITIES\0"
	.word	0x1dd
	.byte	0x16
	.long	0x1f7f
	.uleb128 0x3
	.long	0x1f84
	.uleb128 0x5
	.long	0x1c2
	.long	0x1fa2
	.uleb128 0x1
	.long	0x1f4e
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x1453
	.uleb128 0x1
	.long	0x1fa2
	.byte	0
	.uleb128 0x3
	.long	0x69a
	.uleb128 0x4
	.ascii "EFI_QUERY_VARIABLE_INFO\0"
	.word	0x1de
	.byte	0x16
	.long	0x1fc7
	.uleb128 0x3
	.long	0x1fcc
	.uleb128 0x5
	.long	0x1c2
	.long	0x1fea
	.uleb128 0x1
	.long	0x153
	.uleb128 0x1
	.long	0x1453
	.uleb128 0x1
	.long	0x1453
	.uleb128 0x1
	.long	0x1453
	.byte	0
	.uleb128 0xa
	.secrel32	.LASF27
	.byte	0x88
	.word	0x1e1
	.long	0x215d
	.uleb128 0x2
	.ascii "Hdr\0"
	.word	0x1e3
	.byte	0x16
	.long	0x73e
	.byte	0
	.uleb128 0x2
	.ascii "GetTime\0"
	.word	0x1e4
	.byte	0x12
	.long	0x1c8c
	.byte	0x18
	.uleb128 0x2
	.ascii "SetTime\0"
	.word	0x1e5
	.byte	0x12
	.long	0x1cc4
	.byte	0x20
	.uleb128 0x2
	.ascii "GetWakeupTime\0"
	.word	0x1e6
	.byte	0x19
	.long	0x1ced
	.byte	0x28
	.uleb128 0x2
	.ascii "SetWakeupTime\0"
	.word	0x1e7
	.byte	0x19
	.long	0x1d2c
	.byte	0x30
	.uleb128 0x2
	.ascii "SetVirtualAddressMap\0"
	.word	0x1e8
	.byte	0x21
	.long	0x1d61
	.byte	0x38
	.uleb128 0x2
	.ascii "ConvertPointer\0"
	.word	0x1e9
	.byte	0x19
	.long	0x1da8
	.byte	0x40
	.uleb128 0x2
	.ascii "GetVariable\0"
	.word	0x1ea
	.byte	0x16
	.long	0x1ddd
	.byte	0x48
	.uleb128 0x2
	.ascii "GetNextVariableName\0"
	.word	0x1eb
	.byte	0x20
	.long	0x1e1e
	.byte	0x50
	.uleb128 0x2
	.ascii "SetVariable\0"
	.word	0x1ec
	.byte	0x16
	.long	0x1e5f
	.byte	0x58
	.uleb128 0x2
	.ascii "GetNextHighMonotonicCount\0"
	.word	0x1ed
	.byte	0x22
	.long	0x1ea0
	.byte	0x60
	.uleb128 0x2
	.ascii "ResetSystem\0"
	.word	0x1ee
	.byte	0x16
	.long	0x1ed9
	.byte	0x68
	.uleb128 0x2
	.ascii "UpdateCapsule\0"
	.word	0x1ef
	.byte	0x18
	.long	0x1f15
	.byte	0x70
	.uleb128 0x2
	.ascii "QueryCapsuleCapabilities\0"
	.word	0x1f0
	.byte	0x24
	.long	0x1f58
	.byte	0x78
	.uleb128 0x2
	.ascii "QueryVariableInfo\0"
	.word	0x1f1
	.byte	0x1d
	.long	0x1fa7
	.byte	0x80
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF27
	.word	0x1f2
	.byte	0x3
	.long	0x1fea
	.uleb128 0xa
	.secrel32	.LASF28
	.byte	0x20
	.word	0x1f7
	.long	0x21b2
	.uleb128 0x2
	.ascii "Event\0"
	.word	0x1f9
	.byte	0xf
	.long	0x1d5
	.byte	0
	.uleb128 0x2
	.ascii "Status\0"
	.word	0x1fa
	.byte	0x10
	.long	0x1c2
	.byte	0x8
	.uleb128 0xf
	.secrel32	.LASF29
	.word	0x1fb
	.byte	0xb
	.long	0x17f
	.byte	0x10
	.uleb128 0x2
	.ascii "Buffer\0"
	.word	0x1fc
	.byte	0xb
	.long	0x1c0
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF28
	.word	0x1fd
	.byte	0x3
	.long	0x2169
	.uleb128 0x4
	.ascii "EFI_FILE_OPEN\0"
	.word	0x20b
	.byte	0x16
	.long	0x21d4
	.uleb128 0x3
	.long	0x21d9
	.uleb128 0x5
	.long	0x1c2
	.long	0x21fc
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0x2302
	.uleb128 0x1
	.long	0xcf9
	.uleb128 0x1
	.long	0x162
	.uleb128 0x1
	.long	0x162
	.byte	0
	.uleb128 0x3
	.long	0x2201
	.uleb128 0xa
	.secrel32	.LASF30
	.byte	0x78
	.word	0x21b
	.long	0x2302
	.uleb128 0xf
	.secrel32	.LASF8
	.word	0x21d
	.byte	0xc
	.long	0x162
	.byte	0
	.uleb128 0x2
	.ascii "Open\0"
	.word	0x21e
	.byte	0x13
	.long	0x21be
	.byte	0x8
	.uleb128 0x2
	.ascii "Close\0"
	.word	0x21f
	.byte	0x14
	.long	0x2307
	.byte	0x10
	.uleb128 0x2
	.ascii "Delete\0"
	.word	0x220
	.byte	0x15
	.long	0x2332
	.byte	0x18
	.uleb128 0x2
	.ascii "Read\0"
	.word	0x221
	.byte	0x13
	.long	0x234a
	.byte	0x20
	.uleb128 0x2
	.ascii "Write\0"
	.word	0x222
	.byte	0x14
	.long	0x237e
	.byte	0x28
	.uleb128 0x2
	.ascii "GetPosition\0"
	.word	0x223
	.byte	0x1b
	.long	0x2395
	.byte	0x30
	.uleb128 0x2
	.ascii "SetPosition\0"
	.word	0x224
	.byte	0x1b
	.long	0x23cc
	.byte	0x38
	.uleb128 0x2
	.ascii "GetInfo\0"
	.word	0x225
	.byte	0x17
	.long	0x2403
	.byte	0x40
	.uleb128 0x2
	.ascii "SetInfo\0"
	.word	0x226
	.byte	0x17
	.long	0x2440
	.byte	0x48
	.uleb128 0x2
	.ascii "Flush\0"
	.word	0x227
	.byte	0x14
	.long	0x247d
	.byte	0x50
	.uleb128 0x2
	.ascii "OpenEx\0"
	.word	0x228
	.byte	0x16
	.long	0x2494
	.byte	0x58
	.uleb128 0x2
	.ascii "ReadEx\0"
	.word	0x229
	.byte	0x16
	.long	0x24df
	.byte	0x60
	.uleb128 0x2
	.ascii "WriteEx\0"
	.word	0x22a
	.byte	0x17
	.long	0x2511
	.byte	0x68
	.uleb128 0x2
	.ascii "FlushEx\0"
	.word	0x22b
	.byte	0x17
	.long	0x252b
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.long	0x21fc
	.uleb128 0x4
	.ascii "EFI_FILE_CLOSE\0"
	.word	0x20c
	.byte	0x16
	.long	0x231e
	.uleb128 0x3
	.long	0x2323
	.uleb128 0x5
	.long	0x1c2
	.long	0x2332
	.uleb128 0x1
	.long	0x21fc
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_DELETE\0"
	.word	0x20d
	.byte	0x16
	.long	0x231e
	.uleb128 0x4
	.ascii "EFI_FILE_READ\0"
	.word	0x20e
	.byte	0x16
	.long	0x2360
	.uleb128 0x3
	.long	0x2365
	.uleb128 0x5
	.long	0x1c2
	.long	0x237e
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_WRITE\0"
	.word	0x20f
	.byte	0x16
	.long	0x2360
	.uleb128 0x4
	.ascii "EFI_FILE_GET_POSITION\0"
	.word	0x210
	.byte	0x16
	.long	0x23b3
	.uleb128 0x3
	.long	0x23b8
	.uleb128 0x5
	.long	0x1c2
	.long	0x23cc
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0x1453
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_SET_POSITION\0"
	.word	0x211
	.byte	0x16
	.long	0x23ea
	.uleb128 0x3
	.long	0x23ef
	.uleb128 0x5
	.long	0x1c2
	.long	0x2403
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0x162
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_GET_INFO\0"
	.word	0x212
	.byte	0x16
	.long	0x241d
	.uleb128 0x3
	.long	0x2422
	.uleb128 0x5
	.long	0x1c2
	.long	0x2440
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_SET_INFO\0"
	.word	0x213
	.byte	0x16
	.long	0x245a
	.uleb128 0x3
	.long	0x245f
	.uleb128 0x5
	.long	0x1c2
	.long	0x247d
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0x1005
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_FLUSH\0"
	.word	0x214
	.byte	0x16
	.long	0x231e
	.uleb128 0x4
	.ascii "EFI_FILE_OPEN_EX\0"
	.word	0x215
	.byte	0x16
	.long	0x24ad
	.uleb128 0x3
	.long	0x24b2
	.uleb128 0x5
	.long	0x1c2
	.long	0x24da
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0x2302
	.uleb128 0x1
	.long	0xcf9
	.uleb128 0x1
	.long	0x162
	.uleb128 0x1
	.long	0x162
	.uleb128 0x1
	.long	0x24da
	.byte	0
	.uleb128 0x3
	.long	0x21b2
	.uleb128 0x4
	.ascii "EFI_FILE_READ_EX\0"
	.word	0x216
	.byte	0x16
	.long	0x24f8
	.uleb128 0x3
	.long	0x24fd
	.uleb128 0x5
	.long	0x1c2
	.long	0x2511
	.uleb128 0x1
	.long	0x21fc
	.uleb128 0x1
	.long	0x24da
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_WRITE_EX\0"
	.word	0x217
	.byte	0x16
	.long	0x24f8
	.uleb128 0x4
	.ascii "EFI_FILE_FLUSH_EX\0"
	.word	0x218
	.byte	0x16
	.long	0x24f8
	.uleb128 0x8
	.secrel32	.LASF30
	.word	0x22c
	.byte	0x3
	.long	0x2201
	.uleb128 0x4
	.ascii "EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_OPEN_VOLUME\0"
	.word	0x22e
	.byte	0x16
	.long	0x2585
	.uleb128 0x3
	.long	0x258a
	.uleb128 0x5
	.long	0x1c2
	.long	0x259e
	.uleb128 0x1
	.long	0x259e
	.uleb128 0x1
	.long	0x25d1
	.byte	0
	.uleb128 0x3
	.long	0x25a3
	.uleb128 0xa
	.secrel32	.LASF31
	.byte	0x10
	.word	0x231
	.long	0x25d1
	.uleb128 0xf
	.secrel32	.LASF8
	.word	0x233
	.byte	0xc
	.long	0x162
	.byte	0
	.uleb128 0x2
	.ascii "OpenVolume\0"
	.word	0x234
	.byte	0x31
	.long	0x2551
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x25d6
	.uleb128 0x3
	.long	0x2545
	.uleb128 0x8
	.secrel32	.LASF31
	.word	0x235
	.byte	0x3
	.long	0x25a3
	.uleb128 0xa
	.secrel32	.LASF32
	.byte	0x78
	.word	0x23b
	.long	0x271a
	.uleb128 0x2
	.ascii "hdr\0"
	.word	0x23d
	.byte	0x13
	.long	0x73e
	.byte	0
	.uleb128 0x2
	.ascii "FirmwareVendor\0"
	.word	0x23e
	.byte	0xa
	.long	0xcf9
	.byte	0x18
	.uleb128 0x2
	.ascii "FirmwareVersion\0"
	.word	0x23f
	.byte	0x9
	.long	0x153
	.byte	0x20
	.uleb128 0x2
	.ascii "ConsoleInHandle\0"
	.word	0x240
	.byte	0xd
	.long	0x1ad
	.byte	0x28
	.uleb128 0x2
	.ascii "ConIn\0"
	.word	0x241
	.byte	0x22
	.long	0x271a
	.byte	0x30
	.uleb128 0x2
	.ascii "ConsoleOutHandle\0"
	.word	0x242
	.byte	0xd
	.long	0x1ad
	.byte	0x38
	.uleb128 0x2
	.ascii "ConOut\0"
	.word	0x243
	.byte	0x23
	.long	0x271f
	.byte	0x40
	.uleb128 0x2
	.ascii "StandardErrorHandle\0"
	.word	0x244
	.byte	0xd
	.long	0x1ad
	.byte	0x48
	.uleb128 0x2
	.ascii "StdErr\0"
	.word	0x245
	.byte	0x23
	.long	0x271f
	.byte	0x50
	.uleb128 0x2
	.ascii "RuntimeServices\0"
	.word	0x246
	.byte	0x18
	.long	0x2724
	.byte	0x58
	.uleb128 0x2
	.ascii "BootServices\0"
	.word	0x247
	.byte	0x15
	.long	0x2729
	.byte	0x60
	.uleb128 0x2
	.ascii "NumberOfTableEntries\0"
	.word	0x248
	.byte	0x8
	.long	0x17f
	.byte	0x68
	.uleb128 0x2
	.ascii "ConfigurationTable\0"
	.word	0x249
	.byte	0x1b
	.long	0x272e
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.long	0xb3c
	.uleb128 0x3
	.long	0xe4a
	.uleb128 0x3
	.long	0x215d
	.uleb128 0x3
	.long	0x1c80
	.uleb128 0x3
	.long	0x6dc
	.uleb128 0x8
	.secrel32	.LASF32
	.word	0x24a
	.byte	0x3
	.long	0x25e7
	.uleb128 0xa
	.secrel32	.LASF33
	.byte	0x50
	.word	0x24d
	.long	0x2805
	.uleb128 0xf
	.secrel32	.LASF8
	.word	0x24f
	.byte	0xc
	.long	0x153
	.byte	0
	.uleb128 0x2
	.ascii "ParentHandle\0"
	.word	0x250
	.byte	0x10
	.long	0x1ad
	.byte	0x8
	.uleb128 0xf
	.secrel32	.LASF34
	.word	0x251
	.byte	0x17
	.long	0x2805
	.byte	0x10
	.uleb128 0x2
	.ascii "DeviceHandle\0"
	.word	0x252
	.byte	0x10
	.long	0x1ad
	.byte	0x18
	.uleb128 0x2
	.ascii "FilePath\0"
	.word	0x253
	.byte	0x1f
	.long	0x12bc
	.byte	0x20
	.uleb128 0xf
	.secrel32	.LASF10
	.word	0x254
	.byte	0xb
	.long	0x1c0
	.byte	0x28
	.uleb128 0x2
	.ascii "LoadOptionsSize\0"
	.word	0x255
	.byte	0xc
	.long	0x153
	.byte	0x30
	.uleb128 0x2
	.ascii "LoadOptions\0"
	.word	0x256
	.byte	0xb
	.long	0x1c0
	.byte	0x38
	.uleb128 0x2
	.ascii "ImageBase\0"
	.word	0x257
	.byte	0xb
	.long	0x1c0
	.byte	0x40
	.uleb128 0x2
	.ascii "ImageSize\0"
	.word	0x258
	.byte	0xc
	.long	0x162
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.long	0x2733
	.uleb128 0x8
	.secrel32	.LASF33
	.word	0x259
	.byte	0x3
	.long	0x273f
	.uleb128 0x1d
	.secrel32	.LASF35
	.long	0xe6
	.word	0x25d
	.long	0x289f
	.uleb128 0x6
	.ascii "EfiBltVideoFill\0"
	.byte	0
	.uleb128 0x6
	.ascii "EfiBltVideoToBltBuffer\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "EfiBltBufferToVideo\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "EfiBltVideoToVideo\0"
	.byte	0x3
	.uleb128 0x6
	.ascii "EfiGraphicsOutputBltOperationMax\0"
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF35
	.word	0x264
	.byte	0x3
	.long	0x2816
	.uleb128 0xa
	.secrel32	.LASF36
	.byte	0x4
	.word	0x267
	.long	0x28ef
	.uleb128 0x2
	.ascii "Blue\0"
	.word	0x269
	.byte	0xb
	.long	0x136
	.byte	0
	.uleb128 0x2
	.ascii "Green\0"
	.word	0x26a
	.byte	0xb
	.long	0x136
	.byte	0x1
	.uleb128 0x2
	.ascii "Red\0"
	.word	0x26b
	.byte	0xb
	.long	0x136
	.byte	0x2
	.uleb128 0xf
	.secrel32	.LASF10
	.word	0x26c
	.byte	0xb
	.long	0x136
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF36
	.word	0x26d
	.byte	0x3
	.long	0x28ab
	.uleb128 0x1d
	.secrel32	.LASF37
	.long	0xe6
	.word	0x270
	.long	0x298a
	.uleb128 0x6
	.ascii "PixelRedGreenBlueReserved8BitPerColor\0"
	.byte	0
	.uleb128 0x6
	.ascii "PixelBlueGreenRedReserved8BitPerColor\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "PixelBitMask\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "PixelBltOnly\0"
	.byte	0x3
	.uleb128 0x6
	.ascii "PixelFormatMax\0"
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF37
	.word	0x277
	.byte	0x3
	.long	0x28fb
	.uleb128 0xa
	.secrel32	.LASF38
	.byte	0x10
	.word	0x27a
	.long	0x29ef
	.uleb128 0x2
	.ascii "RedMask\0"
	.word	0x27c
	.byte	0xc
	.long	0x153
	.byte	0
	.uleb128 0x2
	.ascii "GreenMask\0"
	.word	0x27d
	.byte	0xc
	.long	0x153
	.byte	0x4
	.uleb128 0x2
	.ascii "BlueMask\0"
	.word	0x27e
	.byte	0xc
	.long	0x153
	.byte	0x8
	.uleb128 0x2
	.ascii "ReservedMask\0"
	.word	0x27f
	.byte	0xc
	.long	0x153
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF38
	.word	0x280
	.byte	0x3
	.long	0x2996
	.uleb128 0xa
	.secrel32	.LASF39
	.byte	0x24
	.word	0x283
	.long	0x2a8f
	.uleb128 0x2
	.ascii "Version\0"
	.word	0x285
	.byte	0xc
	.long	0x153
	.byte	0
	.uleb128 0x2
	.ascii "HorizontalResolution\0"
	.word	0x286
	.byte	0xc
	.long	0x153
	.byte	0x4
	.uleb128 0x2
	.ascii "VerticalResolution\0"
	.word	0x287
	.byte	0xc
	.long	0x153
	.byte	0x8
	.uleb128 0x2
	.ascii "PixelFormat\0"
	.word	0x288
	.byte	0x1f
	.long	0x298a
	.byte	0xc
	.uleb128 0x2
	.ascii "PixelInformation\0"
	.word	0x289
	.byte	0x17
	.long	0x29ef
	.byte	0x10
	.uleb128 0xf
	.secrel32	.LASF40
	.word	0x28a
	.byte	0xc
	.long	0x153
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF39
	.word	0x28b
	.byte	0x3
	.long	0x29fb
	.uleb128 0xa
	.secrel32	.LASF41
	.byte	0x28
	.word	0x28e
	.long	0x2b1b
	.uleb128 0x2
	.ascii "MaxMode\0"
	.word	0x290
	.byte	0xc
	.long	0x153
	.byte	0
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x291
	.byte	0xc
	.long	0x153
	.byte	0x4
	.uleb128 0x2
	.ascii "Info\0"
	.word	0x292
	.byte	0x2b
	.long	0x2b1b
	.byte	0x8
	.uleb128 0x2
	.ascii "SizeOfInfo\0"
	.word	0x293
	.byte	0xb
	.long	0x17f
	.byte	0x10
	.uleb128 0x2
	.ascii "FrameBufferBase\0"
	.word	0x294
	.byte	0x1a
	.long	0x1e7
	.byte	0x18
	.uleb128 0x2
	.ascii "FrameBufferSize\0"
	.word	0x295
	.byte	0xb
	.long	0x17f
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	0x2a8f
	.uleb128 0x8
	.secrel32	.LASF41
	.word	0x296
	.byte	0x3
	.long	0x2a9b
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_QUERY_MODE\0"
	.word	0x298
	.byte	0x16
	.long	0x2b5c
	.uleb128 0x3
	.long	0x2b61
	.uleb128 0x5
	.long	0x1c2
	.long	0x2b7f
	.uleb128 0x1
	.long	0x2b7f
	.uleb128 0x1
	.long	0x153
	.uleb128 0x1
	.long	0xd5a
	.uleb128 0x1
	.long	0x2bca
	.byte	0
	.uleb128 0x3
	.long	0x2b84
	.uleb128 0xa
	.secrel32	.LASF42
	.byte	0x20
	.word	0x29d
	.long	0x2bca
	.uleb128 0xf
	.secrel32	.LASF24
	.word	0x29f
	.byte	0x2d
	.long	0x2b2c
	.byte	0
	.uleb128 0x2
	.ascii "SetMode\0"
	.word	0x2a0
	.byte	0x2b
	.long	0x2bcf
	.byte	0x8
	.uleb128 0x2
	.ascii "Blt\0"
	.word	0x2a1
	.byte	0x26
	.long	0x2c16
	.byte	0x10
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x2a2
	.byte	0x28
	.long	0x2c85
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	0x2b1b
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_SET_MODE\0"
	.word	0x299
	.byte	0x16
	.long	0x2bfd
	.uleb128 0x3
	.long	0x2c02
	.uleb128 0x5
	.long	0x1c2
	.long	0x2c16
	.uleb128 0x1
	.long	0x2b7f
	.uleb128 0x1
	.long	0x153
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_BLT\0"
	.word	0x29a
	.byte	0x16
	.long	0x2c3f
	.uleb128 0x3
	.long	0x2c44
	.uleb128 0x5
	.long	0x1c2
	.long	0x2c80
	.uleb128 0x1
	.long	0x2b7f
	.uleb128 0x1
	.long	0x2c80
	.uleb128 0x1
	.long	0x289f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.uleb128 0x1
	.long	0x17f
	.byte	0
	.uleb128 0x3
	.long	0x28ef
	.uleb128 0x3
	.long	0x2b20
	.uleb128 0x8
	.secrel32	.LASF42
	.word	0x2a3
	.byte	0x3
	.long	0x2b84
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x29
	.long	0x2c96
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.long	0x2c96
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.long	0xbf
	.uleb128 0x10
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xe
	.ascii "ImageHandle\0"
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.long	0x1ad
	.uleb128 0x9
	.byte	0x3
	.quad	ImageHandle
	.uleb128 0x2a
	.secrel32	.LASF34
	.byte	0x1
	.byte	0xd
	.byte	0x13
	.long	0x2805
	.uleb128 0x9
	.byte	0x3
	.quad	SystemTable
	.uleb128 0xe
	.ascii "gop\0"
	.byte	0x1
	.byte	0xe
	.byte	0x1f
	.long	0x2d27
	.uleb128 0x9
	.byte	0x3
	.quad	gop
	.uleb128 0x3
	.long	0x2c8a
	.uleb128 0xe
	.ascii "Volume\0"
	.byte	0x1
	.byte	0xf
	.byte	0x22
	.long	0x2d45
	.uleb128 0x9
	.byte	0x3
	.quad	Volume
	.uleb128 0x3
	.long	0x25db
	.uleb128 0xe
	.ascii "RootFS\0"
	.byte	0x1
	.byte	0x10
	.byte	0x14
	.long	0x25d6
	.uleb128 0x9
	.byte	0x3
	.quad	RootFS
	.uleb128 0x12
	.secrel32	.LASF43
	.byte	0x44
	.byte	0x1
	.byte	0x53
	.long	0x2e2c
	.uleb128 0x7
	.ascii "BaseAddress\0"
	.byte	0x1
	.byte	0x55
	.byte	0x18
	.long	0xf6
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF29
	.byte	0x1
	.byte	0x56
	.byte	0x18
	.long	0xf6
	.byte	0x8
	.uleb128 0x7
	.ascii "ScreenWidth\0"
	.byte	0x1
	.byte	0x57
	.byte	0x12
	.long	0xe6
	.byte	0x10
	.uleb128 0x7
	.ascii "ScreenHeight\0"
	.byte	0x1
	.byte	0x58
	.byte	0x12
	.long	0xe6
	.byte	0x14
	.uleb128 0x14
	.secrel32	.LASF40
	.byte	0x1
	.byte	0x59
	.byte	0x12
	.long	0xe6
	.byte	0x18
	.uleb128 0x7
	.ascii "LoaderFileSize\0"
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.long	0xf6
	.byte	0x1c
	.uleb128 0x7
	.ascii "MMap\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.long	0xf4e
	.byte	0x24
	.uleb128 0x7
	.ascii "MMapSize\0"
	.byte	0x1
	.byte	0x5c
	.byte	0x15
	.long	0xf6
	.byte	0x2c
	.uleb128 0x7
	.ascii "MMapDescriptorSize\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x15
	.long	0xf6
	.byte	0x34
	.uleb128 0x7
	.ascii "rsdp\0"
	.byte	0x1
	.byte	0x5e
	.byte	0x16
	.long	0x2e2c
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.long	0xf6
	.uleb128 0x11
	.secrel32	.LASF43
	.byte	0x1
	.byte	0x5f
	.byte	0x1f
	.long	0x2d63
	.uleb128 0xe
	.ascii "bi\0"
	.byte	0x1
	.byte	0x61
	.byte	0xb
	.long	0x2e31
	.uleb128 0x9
	.byte	0x3
	.quad	bi
	.uleb128 0xe
	.ascii "ENTRY_POINT\0"
	.byte	0x1
	.byte	0xc4
	.byte	0xe
	.long	0xe6
	.uleb128 0x9
	.byte	0x3
	.quad	ENTRY_POINT
	.uleb128 0xe
	.ascii "OSBuffer_Handle\0"
	.byte	0x1
	.byte	0xc5
	.byte	0x7
	.long	0x1c0
	.uleb128 0x9
	.byte	0x3
	.quad	OSBuffer_Handle
	.uleb128 0xe
	.ascii "biStruct\0"
	.byte	0x2
	.byte	0x31
	.byte	0xc
	.long	0x2ead
	.uleb128 0x9
	.byte	0x3
	.quad	biStruct
	.uleb128 0x3
	.long	0x2e31
	.uleb128 0x21
	.ascii "CreateBufferFilledBox\0"
	.byte	0x2
	.byte	0x3f
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f66
	.uleb128 0xc
	.ascii "xPos\0"
	.byte	0x2
	.byte	0x3f
	.byte	0x25
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "yPos\0"
	.byte	0x2
	.byte	0x3f
	.byte	0x34
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii "w\0"
	.byte	0x2
	.byte	0x3f
	.byte	0x43
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii "h\0"
	.byte	0x2
	.byte	0x3f
	.byte	0x4f
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xc
	.ascii "c\0"
	.byte	0x2
	.byte	0x3f
	.byte	0x5b
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x9
	.ascii "x\0"
	.byte	0x2
	.byte	0x41
	.byte	0xe
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "y\0"
	.byte	0x2
	.byte	0x42
	.byte	0xe
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "width\0"
	.byte	0x2
	.byte	0x43
	.byte	0xe
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii "height\0"
	.byte	0x2
	.byte	0x44
	.byte	0xe
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x15
	.ascii "main\0"
	.byte	0x2
	.byte	0x35
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f93
	.uleb128 0xc
	.ascii "bi\0"
	.byte	0x2
	.byte	0x35
	.byte	0x16
	.long	0x2ead
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.ascii "InitializeSystem\0"
	.byte	0x1
	.word	0x19a
	.byte	0x6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.ascii "InitializeGOP\0"
	.byte	0x1
	.word	0x15d
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3035
	.uleb128 0x13
	.ascii "NewNativeMode\0"
	.word	0x163
	.byte	0x9
	.long	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.ascii "GOPSizeOfInfo\0"
	.word	0x164
	.byte	0x8
	.long	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.ascii "MaxResolutionModes\0"
	.word	0x165
	.byte	0x9
	.long	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.ascii "WriteToFile\0"
	.word	0x14e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x30a8
	.uleb128 0x1e
	.ascii "buf\0"
	.word	0x14e
	.byte	0x18
	.long	0x2caf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.secrel32	.LASF44
	.word	0x14e
	.byte	0x25
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.ascii "fileSize\0"
	.word	0x150
	.byte	0x9
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.ascii "writefilehandle\0"
	.word	0x151
	.byte	0x15
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.ascii "deleteFile\0"
	.word	0x143
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x30eb
	.uleb128 0x22
	.secrel32	.LASF44
	.word	0x143
	.byte	0x19
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.secrel32	.LASF45
	.word	0x145
	.byte	0x15
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.ascii "makeDir\0"
	.word	0x137
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x312f
	.uleb128 0x1e
	.ascii "dirName\0"
	.word	0x137
	.byte	0x16
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.secrel32	.LASF45
	.word	0x139
	.byte	0x18
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.ascii "removeDir\0"
	.word	0x12a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3175
	.uleb128 0x1e
	.ascii "dirName\0"
	.word	0x12a
	.byte	0x18
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.secrel32	.LASF45
	.word	0x12c
	.byte	0x15
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.ascii "readFile\0"
	.byte	0x1
	.byte	0xc7
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x324f
	.uleb128 0x16
	.secrel32	.LASF44
	.byte	0xc7
	.byte	0x17
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.secrel32	.LASF45
	.byte	0xcb
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x9
	.ascii "FileSize\0"
	.byte	0x1
	.byte	0xd1
	.byte	0xb
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.ascii "test1\0"
	.byte	0x1
	.byte	0xe7
	.byte	0xa
	.long	0x324f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.ascii "p1\0"
	.byte	0x1
	.byte	0xec
	.byte	0x9
	.long	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x9
	.ascii "p2\0"
	.byte	0x1
	.byte	0xec
	.byte	0xc
	.long	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x9
	.ascii "p3\0"
	.byte	0x1
	.byte	0xec
	.byte	0xf
	.long	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x9
	.ascii "p4\0"
	.byte	0x1
	.byte	0xec
	.byte	0x12
	.long	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x13
	.ascii "s\0"
	.word	0x102
	.byte	0xc
	.long	0x3254
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.ascii "s2\0"
	.word	0x117
	.byte	0xc
	.long	0x3264
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x136
	.uleb128 0x17
	.long	0x144
	.long	0x3264
	.uleb128 0x18
	.long	0xf6
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.long	0x144
	.long	0x3274
	.uleb128 0x18
	.long	0xf6
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.ascii "createFile\0"
	.byte	0xb8
	.byte	0x14
	.long	0x25d6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x32b8
	.uleb128 0x16
	.secrel32	.LASF44
	.byte	0xb8
	.byte	0x27
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.secrel32	.LASF45
	.byte	0xba
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.ascii "closeDir\0"
	.byte	0x1
	.byte	0xaf
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x32e9
	.uleb128 0x16
	.secrel32	.LASF45
	.byte	0xaf
	.byte	0x22
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.ascii "closeFile\0"
	.byte	0x1
	.byte	0xa6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x331b
	.uleb128 0x16
	.secrel32	.LASF45
	.byte	0xa6
	.byte	0x23
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.ascii "getDir\0"
	.byte	0x9a
	.byte	0x14
	.long	0x25d6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3360
	.uleb128 0xc
	.ascii "DirName\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x23
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.secrel32	.LASF45
	.byte	0x9c
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.ascii "getFile\0"
	.byte	0x8b
	.byte	0x14
	.long	0x25d6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x33a1
	.uleb128 0x16
	.secrel32	.LASF44
	.byte	0x8b
	.byte	0x24
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.secrel32	.LASF45
	.byte	0x90
	.long	0x25d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.ascii "InitializeFILESYSTEM\0"
	.byte	0x1
	.byte	0x63
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3417
	.uleb128 0x9
	.ascii "LoadedImage\0"
	.byte	0x1
	.byte	0x65
	.byte	0x20
	.long	0x3417
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "DevicePath\0"
	.byte	0x1
	.byte	0x66
	.byte	0x1c
	.long	0x12bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.secrel32	.LLRL0
	.uleb128 0x9
	.ascii "GOPINFO\0"
	.byte	0x1
	.byte	0x6a
	.byte	0xa
	.long	0x341c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x280a
	.uleb128 0x17
	.long	0x144
	.long	0x342c
	.uleb128 0x18
	.long	0xf6
	.byte	0xb
	.byte	0
	.uleb128 0x1c
	.ascii "strcmp\0"
	.byte	0x48
	.byte	0x5
	.long	0x96
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x349c
	.uleb128 0xc
	.ascii "a\0"
	.byte	0x1
	.byte	0x48
	.byte	0x18
	.long	0x349c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "b\0"
	.byte	0x1
	.byte	0x48
	.byte	0x27
	.long	0x349c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.ascii "length\0"
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.ascii "i\0"
	.byte	0x1
	.byte	0x4b
	.byte	0xa
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x2c9e
	.uleb128 0x21
	.ascii "itoa\0"
	.byte	0x1
	.byte	0x33
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x351f
	.uleb128 0xc
	.ascii "n\0"
	.byte	0x1
	.byte	0x33
	.byte	0x1d
	.long	0x2cb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x33
	.byte	0x34
	.long	0x2cc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii "basenumber\0"
	.byte	0x1
	.byte	0x33
	.byte	0x40
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.ascii "hold\0"
	.byte	0x1
	.byte	0x35
	.byte	0x14
	.long	0x2cb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii "i\0"
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "j\0"
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.ascii "strlen\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x14
	.long	0xf6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3568
	.uleb128 0xc
	.ascii "str\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x27
	.long	0x349c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "strCount\0"
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.long	0x349c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.ascii "Print\0"
	.byte	0x1
	.byte	0x26
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3597
	.uleb128 0xc
	.ascii "str\0"
	.byte	0x1
	.byte	0x26
	.byte	0x14
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.ascii "SetColor\0"
	.byte	0x1
	.byte	0x21
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c8
	.uleb128 0x16
	.secrel32	.LASF14
	.byte	0x21
	.byte	0x15
	.long	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.secrel32	.LASF25
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.ascii "ResetScreen\0"
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.ascii "SetTextPosition\0"
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.ascii "Col\0"
	.byte	0x1
	.byte	0x12
	.byte	0x1d
	.long	0x153
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "Row\0"
	.byte	0x1
	.byte	0x12
	.byte	0x29
	.long	0x153
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x30
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
	.uleb128 0x31
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
.LASF16:
	.ascii "EFI_LOCATE_SEARCH_TYPE\0"
.LASF21:
	.ascii "EFI_SIMPLE_TEXT_INPUT_PROTOCOL\0"
.LASF38:
	.ascii "EFI_PIXEL_BITMASK\0"
.LASF22:
	.ascii "SIMPLE_TEXT_OUTPUT_MODE\0"
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
	.ascii "loader/loader.c\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.1.0"
