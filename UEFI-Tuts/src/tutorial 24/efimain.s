	.file	"efimain.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "E://wf//src//uefi//UEFI-Tuts//src//tutorial 24" "efimain.c"
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
	.globl	OSBuffer_Handle
	.align 8
OSBuffer_Handle:
	.space 8
	.text
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
.LFB0:
	.file 1 "efilibs.h"
	.loc 1 17 1
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
	.loc 1 18 14
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 20 8
	nop
.L2:
	.loc 1 20 18 discriminator 1
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 20 9 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2
	.loc 1 21 18
	movq	-8(%rbp), %rax
	subq	16(%rbp), %rax
	.loc 1 21 24
	subq	$1, %rax
	.loc 1 22 1
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.seh_endproc
	.globl	SetTextPosition
	.def	SetTextPosition;	.scl	2;	.type	32;	.endef
	.seh_proc	SetTextPosition
SetTextPosition:
.LFB1:
	.loc 1 25 1
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
	.loc 1 27 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 27 24
	movq	56(%rax), %r9
	.loc 1 27 5
	movl	24(%rbp), %ecx
	movl	16(%rbp), %edx
	.loc 1 27 55
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 27 5
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
.LVL0:
	.loc 1 28 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.seh_endproc
	.globl	ResetScreen
	.def	ResetScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	ResetScreen
ResetScreen:
.LFB2:
	.loc 1 31 1
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
	.loc 1 33 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 33 24
	movq	(%rax), %r8
	.loc 1 33 43
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 33 5
	movl	$1, %edx
	movq	%rax, %rcx
	call	*%r8
.LVL1:
	.loc 1 34 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.seh_endproc
	.globl	ClearScreen
	.def	ClearScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	ClearScreen
ClearScreen:
.LFB3:
	.loc 1 37 1
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
	.loc 1 39 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 39 24
	movq	48(%rax), %rdx
	.loc 1 39 49
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 39 5
	movq	%rax, %rcx
	call	*%rdx
.LVL2:
	.loc 1 40 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.seh_endproc
	.globl	SetColor
	.def	SetColor;	.scl	2;	.type	32;	.endef
	.seh_proc	SetColor
SetColor:
.LFB4:
	.loc 1 43 1
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
	.loc 1 45 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 45 24
	movq	40(%rax), %r8
	.loc 1 45 50
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 45 5
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL3:
	.loc 1 46 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.seh_endproc
	.globl	Print
	.def	Print;	.scl	2;	.type	32;	.endef
	.seh_proc	Print
Print:
.LFB5:
	.loc 1 49 1
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
	.loc 1 51 16
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 51 24
	movq	8(%rax), %r8
	.loc 1 51 50
	movq	SystemTable(%rip), %rax
	movq	64(%rax), %rax
	.loc 1 51 5
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL4:
	.loc 1 52 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.seh_endproc
	.globl	bi
	.bss
	.align 32
bi:
	.space 40
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "L\0o\0a\0d\0i\0n\0g\0 \0R\0o\0o\0t\0 \0F\0i\0l\0e\0 \0S\0y\0s\0t\0e\0m\0 \0F\0A\0I\0L\0E\0D\0!\0\0\0"
	.align 8
.LC1:
	.ascii "V\0o\0l\0u\0m\0e\0 \0H\0a\0n\0d\0l\0e\0 \0F\0A\0I\0L\0E\0D\0!\0\0\0"
	.align 8
.LC2:
	.ascii "D\0e\0v\0i\0c\0e\0P\0a\0t\0h\0 \0F\0A\0I\0L\0E\0D\0!\0\0\0"
	.align 8
.LC3:
	.ascii "L\0o\0a\0d\0e\0d\0I\0m\0a\0g\0e\0 \0F\0A\0I\0L\0E\0D\0!\0\0\0"
	.text
	.globl	InitializeFILESYSTEM
	.def	InitializeFILESYSTEM;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializeFILESYSTEM
InitializeFILESYSTEM:
.LFB6:
	.loc 1 67 1
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
	.loc 1 72 20
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 72 34
	movq	152(%rax), %r9
	.loc 1 72 9
	movq	ImageHandle(%rip), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	leaq	EFI_LOADED_IMAGE_PROTOCOL_GUID(%rip), %rdx
	movq	%rax, %rcx
	call	*%r9
.LVL5:
	.loc 1 72 7 discriminator 1
	testq	%rax, %rax
	jne	.L10
	.loc 1 74 18
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 74 32
	movq	152(%rax), %r9
	.loc 1 74 60
	movq	-8(%rbp), %rax
	.loc 1 74 7
	movq	24(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %r8
	leaq	EFI_DEVICE_PATH_PROTOCOL_GUID(%rip), %rdx
	movq	%rax, %rcx
	call	*%r9
.LVL6:
	.loc 1 74 5 discriminator 1
	testq	%rax, %rax
	jne	.L11
	.loc 1 76 19
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 76 33
	movq	152(%rax), %r9
	.loc 1 76 61
	movq	-8(%rbp), %rax
	.loc 1 76 8
	movq	24(%rax), %rax
	leaq	Volume(%rip), %r8
	leaq	EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID(%rip), %rdx
	movq	%rax, %rcx
	call	*%r9
.LVL7:
	.loc 1 76 6 discriminator 1
	testq	%rax, %rax
	jne	.L12
	.loc 1 78 15
	movq	Volume(%rip), %rax
	movq	8(%rax), %r8
	.loc 1 78 9
	movq	Volume(%rip), %rax
	leaq	RootFS(%rip), %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL8:
	.loc 1 78 7 discriminator 1
	testq	%rax, %rax
	je	.L14
	.loc 1 80 6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 91 1
	jmp	.L14
.L12:
	.loc 1 83 11
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 91 1
	jmp	.L14
.L11:
	.loc 1 86 7
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 1 91 1
	jmp	.L14
.L10:
	.loc 1 89 3
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L14:
	.loc 1 91 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "\15\0\12\0W\0A\0R\0N\0I\0N\0G\0 \0:\0 \0U\0n\0a\0b\0l\0e\0 \0t\0o\0 \0f\0i\0n\0d\0 \0F\0i\0l\0e\0.\0\15\0\12\0\15\0\12\0\0\0"
	.text
	.globl	getFile
	.def	getFile;	.scl	2;	.type	32;	.endef
	.seh_proc	getFile
getFile:
.LFB7:
	.loc 1 94 1
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
	.loc 1 98 24
	movq	$0, -8(%rbp)
	.loc 1 99 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 99 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$0, 32(%rsp)
	movl	$3, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL9:
	.loc 1 99 7 discriminator 1
	movabsq	$-9223372036854775794, %rdx
	cmpq	%rdx, %rax
	jne	.L16
	.loc 1 101 3
	movl	$3, %ecx
	call	SetColor
	.loc 1 102 3
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L16:
	.loc 1 105 12
	movq	-8(%rbp), %rax
	.loc 1 106 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "\15\0\12\0W\0A\0R\0N\0I\0N\0G\0 \0:\0 \0U\0n\0a\0b\0l\0e\0 \0t\0o\0 \0f\0i\0n\0d\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0.\0\15\0\12\0\15\0\12\0\0\0"
	.text
	.globl	getDir
	.def	getDir;	.scl	2;	.type	32;	.endef
	.seh_proc	getDir
getDir:
.LFB8:
	.loc 1 109 1
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
	.loc 1 110 24
	movq	$0, -8(%rbp)
	.loc 1 111 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 111 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$16, 32(%rsp)
	movl	$3, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL10:
	.loc 1 111 7 discriminator 1
	movabsq	$-9223372036854775794, %rdx
	cmpq	%rdx, %rax
	jne	.L19
	.loc 1 113 3
	movl	$3, %ecx
	call	SetColor
	.loc 1 114 3
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L19:
	.loc 1 117 12
	movq	-8(%rbp), %rax
	.loc 1 118 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "C\0l\0o\0s\0i\0n\0g\0 \0F\0i\0l\0e\0 \0H\0a\0n\0d\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	closeFile
	.def	closeFile;	.scl	2;	.type	32;	.endef
	.seh_proc	closeFile
closeFile:
.LFB9:
	.loc 1 121 1
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
	.loc 1 122 19
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 122 9
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL11:
	.loc 1 122 7 discriminator 1
	testq	%rax, %rax
	je	.L23
	.loc 1 124 9
	movl	$6, %ecx
	call	SetColor
	.loc 1 125 9
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L23:
	.loc 1 127 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "C\0l\0o\0s\0i\0n\0g\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0 \0H\0a\0n\0d\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	closeDir
	.def	closeDir;	.scl	2;	.type	32;	.endef
	.seh_proc	closeDir
closeDir:
.LFB10:
	.loc 1 130 1
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
	.loc 1 131 19
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 131 9
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL12:
	.loc 1 131 7 discriminator 1
	testq	%rax, %rax
	je	.L26
	.loc 1 133 3
	movl	$6, %ecx
	call	SetColor
	.loc 1 134 3
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L26:
	.loc 1 136 1
	nop
	addq	$32, %rsp
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
	.ascii "\15\0\12\0W\0A\0R\0N\0I\0N\0G\0 \0:\0 \0U\0n\0a\0b\0l\0e\0 \0t\0o\0 \0c\0r\0e\0a\0t\0e\0 \0f\0i\0l\0e\0.\0 \0P\0l\0e\0a\0s\0e\0 \0c\0h\0e\0c\0k\0 \0y\0o\0u\0r\0 \0p\0a\0t\0h\0.\0\15\0\12\0\15\0\12\0\0\0"
	.text
	.globl	createFile
	.def	createFile;	.scl	2;	.type	32;	.endef
	.seh_proc	createFile
createFile:
.LFB11:
	.loc 1 139 1
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
	.loc 1 140 24
	movq	$0, -8(%rbp)
	.loc 1 141 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 141 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$0, 32(%rsp)
	movabsq	$-9223372036854775805, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL13:
	.loc 1 141 7 discriminator 1
	movabsq	$-9223372036854775794, %rdx
	cmpq	%rdx, %rax
	jne	.L28
	.loc 1 143 3
	movl	$3, %ecx
	call	SetColor
	.loc 1 144 3
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L28:
	.loc 1 147 12
	movq	-8(%rbp), %rax
	.loc 1 148 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.globl	GetFileSize
	.def	GetFileSize;	.scl	2;	.type	32;	.endef
	.seh_proc	GetFileSize
GetFileSize:
.LFB12:
	.loc 1 151 1
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
	.loc 1 152 12
	movq	$0, -8(%rbp)
	.loc 1 153 13
	movq	16(%rbp), %rax
	movq	56(%rax), %r8
	.loc 1 153 5
	movq	16(%rbp), %rax
	movq	$-1, %rdx
	movq	%rax, %rcx
	call	*%r8
.LVL14:
	.loc 1 154 13
	movq	16(%rbp), %rax
	movq	48(%rax), %r8
	.loc 1 154 5
	movq	-8(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	*%r8
.LVL15:
	.loc 1 155 10
	movq	16(%rbp), %rax
	movq	56(%rax), %r8
	.loc 1 155 2
	movq	16(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	*%r8
.LVL16:
	.loc 1 156 12
	movq	-8(%rbp), %rax
	.loc 1 157 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "A\0l\0l\0o\0c\0a\0t\0i\0n\0g\0 \0P\0o\0o\0l\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.align 8
.LC10:
	.ascii "R\0e\0a\0d\0i\0n\0g\0 \0F\0i\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	readFile
	.def	readFile;	.scl	2;	.type	32;	.endef
	.seh_proc	readFile
readFile:
.LFB13:
	.loc 1 160 1
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
	.loc 1 163 37
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	getFile
	movq	%rax, -8(%rbp)
	.loc 1 164 7
	cmpq	$0, -8(%rbp)
	je	.L36
.LBB2:
	.loc 1 166 31
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	GetFileSize
	movq	%rax, -16(%rbp)
	.loc 1 167 18
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 167 32
	movq	64(%rax), %r9
	.loc 1 167 7
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	OSBuffer_Handle(%rip), %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	*%r9
.LVL17:
	.loc 1 167 5 discriminator 1
	testq	%rax, %rax
	je	.L34
	.loc 1 169 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 170 4
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L34:
	.loc 1 173 23
	movq	-8(%rbp), %rax
	movq	32(%rax), %r9
	.loc 1 173 13
	movq	OSBuffer_Handle(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
.LVL18:
	.loc 1 173 11 discriminator 1
	testq	%rax, %rax
	je	.L35
	.loc 1 175 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 176 4
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L35:
	.loc 1 179 9
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	closeFile
.L36:
.LBE2:
	.loc 1 181 1
	nop
	addq	$48, %rsp
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
	.ascii "D\0e\0l\0e\0t\0i\0n\0g\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	removeDir
	.def	removeDir;	.scl	2;	.type	32;	.endef
	.seh_proc	removeDir
removeDir:
.LFB14:
	.loc 1 184 1
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
	.loc 1 185 34
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	getDir
	movq	%rax, -8(%rbp)
	.loc 1 186 4
	cmpq	$0, -8(%rbp)
	je	.L39
	.loc 1 188 17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 188 7
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL19:
	.loc 1 188 5 discriminator 1
	testq	%rax, %rax
	je	.L39
	.loc 1 190 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 191 7
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L39:
	.loc 1 194 1
	nop
	addq	$48, %rsp
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
	.ascii "C\0r\0e\0a\0t\0i\0n\0g\0 \0D\0i\0r\0e\0c\0t\0o\0r\0y\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	makeDir
	.def	makeDir;	.scl	2;	.type	32;	.endef
	.seh_proc	makeDir
makeDir:
.LFB15:
	.loc 1 197 1
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
	.loc 1 198 24
	movq	$0, -8(%rbp)
	.loc 1 200 15
	movq	RootFS(%rip), %rax
	movq	8(%rax), %r10
	.loc 1 200 9
	movq	RootFS(%rip), %rax
	movq	16(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	$16, 32(%rsp)
	movabsq	$-9223372036854775805, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
.LVL20:
	.loc 1 200 7 discriminator 1
	testq	%rax, %rax
	je	.L41
	.loc 1 202 3
	movl	$6, %ecx
	call	SetColor
	.loc 1 203 3
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L41:
	.loc 1 205 2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	closeDir
	.loc 1 206 1
	nop
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "D\0e\0l\0e\0t\0i\0n\0g\0 \0F\0i\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	deleteFile
	.def	deleteFile;	.scl	2;	.type	32;	.endef
	.seh_proc	deleteFile
deleteFile:
.LFB16:
	.loc 1 209 1
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
	.loc 1 210 34
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	getFile
	movq	%rax, -8(%rbp)
	.loc 1 211 4
	cmpq	$0, -8(%rbp)
	je	.L45
	.loc 1 213 17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 213 7
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
.LVL21:
	.loc 1 213 5 discriminator 1
	testq	%rax, %rax
	je	.L44
	.loc 1 214 3
	movl	$6, %ecx
	call	SetColor
.L44:
	.loc 1 215 3
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L45:
	.loc 1 217 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "W\0r\0i\0t\0i\0n\0g\0 \0t\0o\0 \0F\0i\0l\0e\0 \0F\0A\0I\0L\0E\0D\0\15\0\12\0\0\0"
	.text
	.globl	WriteToFile
	.def	WriteToFile;	.scl	2;	.type	32;	.endef
	.seh_proc	WriteToFile
WriteToFile:
.LFB17:
	.loc 1 220 1
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
	.loc 1 221 20
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	.loc 1 221 9 discriminator 1
	movq	%rax, -16(%rbp)
	.loc 1 222 39
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	createFile
	movq	%rax, -8(%rbp)
	.loc 1 223 4
	cmpq	$0, -8(%rbp)
	je	.L49
	.loc 1 225 22
	movq	-8(%rbp), %rax
	movq	40(%rax), %r9
	.loc 1 225 7
	movq	16(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
.LVL22:
	.loc 1 225 5 discriminator 1
	testq	%rax, %rax
	je	.L48
	.loc 1 227 4
	movl	$6, %ecx
	call	SetColor
	.loc 1 228 4
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	Print
.L48:
	.loc 1 230 3
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	closeFile
.L49:
	.loc 1 232 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.globl	InitializeGOP
	.def	InitializeGOP;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializeGOP
InitializeGOP:
.LFB18:
	.loc 1 235 1
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
	.loc 1 238 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 1 238 30
	movq	320(%rax), %rax
	.loc 1 238 5
	leaq	gop(%rip), %r8
	movl	$0, %edx
	leaq	EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID(%rip), %rcx
	call	*%rax
.LVL23:
	.loc 1 240 17
	movl	$31337, bi(%rip)
	.loc 1 241 32
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 241 38
	movq	24(%rax), %rax
	.loc 1 241 20
	movq	%rax, 8+bi(%rip)
	.loc 1 242 24
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 242 30
	movq	32(%rax), %rax
	.loc 1 242 19
	movq	%rax, 16+bi(%rip)
	.loc 1 243 25
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 243 31
	movq	8(%rax), %rax
	.loc 1 243 37
	movl	4(%rax), %eax
	.loc 1 243 20
	movl	%eax, 24+bi(%rip)
	.loc 1 244 26
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 244 32
	movq	8(%rax), %rax
	.loc 1 244 38
	movl	8(%rax), %eax
	.loc 1 244 21
	movl	%eax, 28+bi(%rip)
	.loc 1 245 31
	movq	gop(%rip), %rax
	movq	24(%rax), %rax
	.loc 1 245 37
	movq	8(%rax), %rax
	.loc 1 245 43
	movl	32(%rax), %eax
	.loc 1 245 26
	movl	%eax, 32+bi(%rip)
	.loc 1 246 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.globl	InitializeSystem
	.def	InitializeSystem;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializeSystem
InitializeSystem:
.LFB19:
	.loc 1 249 1
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
	.loc 1 250 5
	call	ResetScreen
	.loc 1 251 5
	call	InitializeGOP
	.loc 1 252 2
	call	InitializeFILESYSTEM
	.loc 1 253 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "L\0o\0a\0d\0i\0n\0g\0 \0T\0h\0a\0t\0O\0S\0"
	.ascii "6\0"
	.ascii "4\0 \0.\0.\0.\0\15\0\12\0\15\0\12\0\0\0"
	.align 8
.LC16:
	.ascii "T\0h\0a\0t\0O\0S\0"
	.ascii "6\0"
	.ascii "4\0\\\0l\0o\0a\0d\0e\0r\0.\0b\0i\0n\0\0\0"
	.text
	.globl	efi_main
	.def	efi_main;	.scl	2;	.type	32;	.endef
	.seh_proc	efi_main
efi_main:
.LFB20:
	.file 2 "efimain.c"
	.loc 2 8 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 9 17
	movq	16(%rbp), %rax
	movq	%rax, ImageHandle(%rip)
	.loc 2 10 17
	movq	24(%rbp), %rax
	movq	%rax, SystemTable(%rip)
	.loc 2 12 2
	call	InitializeSystem
	.loc 2 14 2
	movl	$15, %ecx
	call	SetColor
	.loc 2 16 2
	movl	$1, %edx
	movl	$10, %ecx
	call	SetTextPosition
	.loc 2 17 5
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	Print
	.loc 2 19 2
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	readFile
	.loc 2 22 9
	movq	OSBuffer_Handle(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 26 11
	movq	$0, -24(%rbp)
	.loc 2 32 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 32 30
	movq	56(%rax), %r10
	.loc 2 32 5
	movq	-32(%rbp), %rdx
	leaq	-48(%rbp), %r9
	leaq	-40(%rbp), %r8
	leaq	-24(%rbp), %rax
	leaq	-52(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	*%r10
.LVL24:
	.loc 2 33 24
	movq	-48(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	.loc 2 33 19
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 34 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 34 30
	movq	64(%rax), %r9
	.loc 2 34 5
	movq	-24(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	*%r9
.LVL25:
	.loc 2 35 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 35 30
	movq	56(%rax), %r10
	.loc 2 35 5
	movq	-32(%rbp), %rdx
	leaq	-48(%rbp), %r9
	leaq	-40(%rbp), %r8
	leaq	-24(%rbp), %rax
	leaq	-52(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
	call	*%r10
.LVL26:
	.loc 2 36 16
	movq	SystemTable(%rip), %rax
	movq	96(%rax), %rax
	.loc 2 36 30
	movq	232(%rax), %r8
	.loc 2 36 5
	movq	-40(%rbp), %rdx
	movq	ImageHandle(%rip), %rax
	movq	%rax, %rcx
	call	*%r8
.LVL27:
	.loc 2 38 100
	movq	-8(%rbp), %rax
	addq	$262, %rax
	.loc 2 38 12
	movq	%rax, -16(%rbp)
	.loc 2 40 5
	movq	-16(%rbp), %rax
	leaq	bi(%rip), %rdx
	movl	$0, %ecx
	call	*%rax
.LVL28:
	.loc 2 43 12
	movl	$0, %eax
	.loc 2 44 1
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.seh_endproc
.Letext0:
	.file 3 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint-gcc.h"
	.file 4 "efi.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x339a
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x1e
	.ascii "GNU C17 14.1.0 -m64 -mabi=ms -mtune=generic -march=nocona -g -ffreestanding\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x12
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x12
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x12
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x12
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0xa
	.ascii "uint_least16_t\0"
	.byte	0x3
	.byte	0x41
	.byte	0x1c
	.long	0xbb
	.uleb128 0xa
	.ascii "CHAR16\0"
	.byte	0x4
	.byte	0x62
	.byte	0x18
	.long	0xfb
	.uleb128 0xa
	.ascii "UINT8\0"
	.byte	0x4
	.byte	0x64
	.byte	0x17
	.long	0xaa
	.uleb128 0xa
	.ascii "UINT16\0"
	.byte	0x4
	.byte	0x65
	.byte	0x18
	.long	0xbb
	.uleb128 0xa
	.ascii "UINT32\0"
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.long	0xd1
	.uleb128 0xa
	.ascii "UINT64\0"
	.byte	0x4
	.byte	0x67
	.byte	0x1c
	.long	0xe1
	.uleb128 0xa
	.ascii "INT32\0"
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.long	0x92
	.uleb128 0xa
	.ascii "UINTN\0"
	.byte	0x4
	.byte	0x6e
	.byte	0x1c
	.long	0xe1
	.uleb128 0xa
	.ascii "BOOLEAN\0"
	.byte	0x4
	.byte	0x70
	.byte	0x17
	.long	0xaa
	.uleb128 0xa
	.ascii "EFI_TPL\0"
	.byte	0x4
	.byte	0x72
	.byte	0xf
	.long	0x16a
	.uleb128 0xa
	.ascii "EFI_HANDLE\0"
	.byte	0x4
	.byte	0x73
	.byte	0xf
	.long	0x1ab
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0xa
	.ascii "EFI_STATUS\0"
	.byte	0x4
	.byte	0x74
	.byte	0x10
	.long	0x14d
	.uleb128 0xa
	.ascii "EFI_EVENT\0"
	.byte	0x4
	.byte	0x75
	.byte	0xf
	.long	0x1ab
	.uleb128 0xa
	.ascii "EFI_PHYSICAL_ADDRESS\0"
	.byte	0x4
	.byte	0x76
	.byte	0x10
	.long	0x14d
	.uleb128 0xa
	.ascii "EFI_VIRTUAL_ADDRESS\0"
	.byte	0x4
	.byte	0x77
	.byte	0x10
	.long	0x14d
	.uleb128 0x14
	.secrel32	.LASF2
	.byte	0x10
	.byte	0x4
	.byte	0x7b
	.long	0x254
	.uleb128 0x7
	.ascii "Data1\0"
	.byte	0x4
	.byte	0x7d
	.byte	0xc
	.long	0x13e
	.byte	0
	.uleb128 0x7
	.ascii "Data2\0"
	.byte	0x4
	.byte	0x7e
	.byte	0xc
	.long	0x12f
	.byte	0x4
	.uleb128 0x7
	.ascii "Data3\0"
	.byte	0x4
	.byte	0x7f
	.byte	0xc
	.long	0x12f
	.byte	0x6
	.uleb128 0x7
	.ascii "Data4\0"
	.byte	0x4
	.byte	0x80
	.byte	0xb
	.long	0x254
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	0x121
	.long	0x264
	.uleb128 0x1b
	.long	0xe1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.secrel32	.LASF2
	.byte	0x4
	.byte	0x81
	.long	0x20b
	.uleb128 0xf
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x85
	.byte	0x11
	.long	0x20b
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID
	.uleb128 0xf
	.ascii "EFI_LOADED_IMAGE_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x86
	.byte	0x11
	.long	0x20b
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_LOADED_IMAGE_PROTOCOL_GUID
	.uleb128 0xf
	.ascii "EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x87
	.byte	0x11
	.long	0x20b
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID
	.uleb128 0xf
	.ascii "EFI_DEVICE_PATH_PROTOCOL_GUID\0"
	.byte	0x4
	.byte	0x88
	.byte	0x11
	.long	0x20b
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_DEVICE_PATH_PROTOCOL_GUID
	.uleb128 0xf
	.ascii "EFI_FILE_INFO_GUID\0"
	.byte	0x4
	.byte	0x89
	.byte	0x11
	.long	0x20b
	.uleb128 0x9
	.byte	0x3
	.quad	EFI_FILE_INFO_GUID
	.uleb128 0x20
	.ascii "EFI_MEMORY_TYPE\0"
	.byte	0x7
	.byte	0x4
	.long	0xd1
	.byte	0x4
	.byte	0x94
	.byte	0xe
	.long	0x4ec
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
	.uleb128 0x14
	.secrel32	.LASF3
	.byte	0x10
	.byte	0x4
	.byte	0xaa
	.long	0x5a5
	.uleb128 0x7
	.ascii "Year\0"
	.byte	0x4
	.byte	0xac
	.byte	0x9
	.long	0x12f
	.byte	0
	.uleb128 0x7
	.ascii "Month\0"
	.byte	0x4
	.byte	0xad
	.byte	0x8
	.long	0x121
	.byte	0x2
	.uleb128 0x7
	.ascii "Day\0"
	.byte	0x4
	.byte	0xae
	.byte	0x8
	.long	0x121
	.byte	0x3
	.uleb128 0x7
	.ascii "Hour\0"
	.byte	0x4
	.byte	0xaf
	.byte	0x8
	.long	0x121
	.byte	0x4
	.uleb128 0x7
	.ascii "Minute\0"
	.byte	0x4
	.byte	0xb0
	.byte	0x8
	.long	0x121
	.byte	0x5
	.uleb128 0x7
	.ascii "Second\0"
	.byte	0x4
	.byte	0xb1
	.byte	0x8
	.long	0x121
	.byte	0x6
	.uleb128 0x7
	.ascii "Pad1\0"
	.byte	0x4
	.byte	0xb2
	.byte	0x8
	.long	0x121
	.byte	0x7
	.uleb128 0x7
	.ascii "Nanosecond\0"
	.byte	0x4
	.byte	0xb3
	.byte	0x9
	.long	0x13e
	.byte	0x8
	.uleb128 0x7
	.ascii "TimeZone\0"
	.byte	0x4
	.byte	0xb4
	.byte	0x9
	.long	0x12f
	.byte	0xc
	.uleb128 0x7
	.ascii "DayLight\0"
	.byte	0x4
	.byte	0xb5
	.byte	0x8
	.long	0x121
	.byte	0xe
	.uleb128 0x7
	.ascii "Pad2\0"
	.byte	0x4
	.byte	0xb6
	.byte	0x8
	.long	0x121
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.secrel32	.LASF3
	.byte	0x4
	.byte	0xb7
	.long	0x4ec
	.uleb128 0x14
	.secrel32	.LASF4
	.byte	0xc
	.byte	0x4
	.byte	0xba
	.long	0x5f7
	.uleb128 0x7
	.ascii "Resolution\0"
	.byte	0x4
	.byte	0xbc
	.byte	0x9
	.long	0x13e
	.byte	0
	.uleb128 0x7
	.ascii "Accuracy\0"
	.byte	0x4
	.byte	0xbd
	.byte	0x9
	.long	0x13e
	.byte	0x4
	.uleb128 0x7
	.ascii "SetsToZero\0"
	.byte	0x4
	.byte	0xbe
	.byte	0xa
	.long	0x178
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.secrel32	.LASF4
	.byte	0x4
	.byte	0xbf
	.long	0x5b0
	.uleb128 0x17
	.secrel32	.LASF5
	.long	0xd1
	.byte	0xc3
	.long	0x65d
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
	.uleb128 0xe
	.secrel32	.LASF5
	.byte	0x4
	.byte	0xc9
	.long	0x602
	.uleb128 0x14
	.secrel32	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0xcc
	.long	0x69e
	.uleb128 0x7
	.ascii "VendorGuid\0"
	.byte	0x4
	.byte	0xce
	.byte	0xe
	.long	0x264
	.byte	0
	.uleb128 0x7
	.ascii "VendorTable\0"
	.byte	0x4
	.byte	0xcf
	.byte	0xb
	.long	0x1ab
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.secrel32	.LASF6
	.byte	0x4
	.byte	0xd0
	.long	0x668
	.uleb128 0x14
	.secrel32	.LASF7
	.byte	0x18
	.byte	0x4
	.byte	0xd4
	.long	0x6ff
	.uleb128 0x7
	.ascii "Signature\0"
	.byte	0x4
	.byte	0xd6
	.byte	0xc
	.long	0x14d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF8
	.byte	0x4
	.byte	0xd7
	.byte	0xc
	.long	0x13e
	.byte	0x8
	.uleb128 0x16
	.secrel32	.LASF9
	.byte	0x4
	.byte	0xd8
	.byte	0xc
	.long	0x13e
	.byte	0xc
	.uleb128 0x7
	.ascii "CRC32\0"
	.byte	0x4
	.byte	0xd9
	.byte	0xc
	.long	0x13e
	.byte	0x10
	.uleb128 0x16
	.secrel32	.LASF10
	.byte	0x4
	.byte	0xda
	.byte	0xc
	.long	0x13e
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.secrel32	.LASF7
	.byte	0x4
	.byte	0xdb
	.long	0x6a9
	.uleb128 0x17
	.secrel32	.LASF11
	.long	0xd1
	.byte	0xde
	.long	0x765
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
	.uleb128 0xe
	.secrel32	.LASF11
	.byte	0x4
	.byte	0xe4
	.long	0x70a
	.uleb128 0x17
	.secrel32	.LASF12
	.long	0xd1
	.byte	0xe7
	.long	0x7ad
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
	.uleb128 0xe
	.secrel32	.LASF12
	.byte	0x4
	.byte	0xec
	.long	0x770
	.uleb128 0x14
	.secrel32	.LASF13
	.byte	0x28
	.byte	0x4
	.byte	0xef
	.long	0x824
	.uleb128 0x7
	.ascii "Type\0"
	.byte	0x4
	.byte	0xf1
	.byte	0xc
	.long	0x13e
	.byte	0
	.uleb128 0x7
	.ascii "PhysicalStart\0"
	.byte	0x4
	.byte	0xf2
	.byte	0x1a
	.long	0x1d2
	.byte	0x8
	.uleb128 0x7
	.ascii "VirtualStart\0"
	.byte	0x4
	.byte	0xf3
	.byte	0x19
	.long	0x1ef
	.byte	0x10
	.uleb128 0x7
	.ascii "NumberOfPages\0"
	.byte	0x4
	.byte	0xf4
	.byte	0xc
	.long	0x14d
	.byte	0x18
	.uleb128 0x16
	.secrel32	.LASF14
	.byte	0x4
	.byte	0xf5
	.byte	0xc
	.long	0x14d
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.secrel32	.LASF13
	.byte	0x4
	.byte	0xf6
	.long	0x7b8
	.uleb128 0x17
	.secrel32	.LASF15
	.long	0xd1
	.byte	0xf9
	.long	0x855
	.uleb128 0x6
	.ascii "EFI_NATIVE_INTERFACE\0"
	.byte	0
	.byte	0
	.uleb128 0xe
	.secrel32	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0x82f
	.uleb128 0x17
	.secrel32	.LASF16
	.long	0xd1
	.byte	0xff
	.long	0x89c
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
	.word	0x104
	.byte	0x3
	.long	0x860
	.uleb128 0x9
	.secrel32	.LASF17
	.byte	0x18
	.word	0x107
	.long	0x90b
	.uleb128 0x2
	.ascii "AgentHandle\0"
	.word	0x109
	.byte	0x10
	.long	0x198
	.byte	0
	.uleb128 0x2
	.ascii "ControllerHandle\0"
	.word	0x10a
	.byte	0x10
	.long	0x198
	.byte	0x8
	.uleb128 0x2
	.ascii "Attributes\0"
	.word	0x10b
	.byte	0xc
	.long	0x13e
	.byte	0x10
	.uleb128 0x2
	.ascii "OpenCount\0"
	.word	0x10c
	.byte	0xc
	.long	0x13e
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF17
	.word	0x10d
	.byte	0x3
	.long	0x8a8
	.uleb128 0x9
	.secrel32	.LASF18
	.byte	0x4
	.word	0x110
	.long	0x953
	.uleb128 0x2
	.ascii "Type\0"
	.word	0x112
	.byte	0xb
	.long	0x121
	.byte	0
	.uleb128 0x2
	.ascii "SubType\0"
	.word	0x113
	.byte	0xb
	.long	0x121
	.byte	0x1
	.uleb128 0x2
	.ascii "Length\0"
	.word	0x114
	.byte	0xb
	.long	0x953
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	0x121
	.long	0x963
	.uleb128 0x1b
	.long	0xe1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF18
	.word	0x115
	.byte	0x3
	.long	0x917
	.uleb128 0x9
	.secrel32	.LASF19
	.byte	0x1c
	.word	0x118
	.long	0x9c7
	.uleb128 0x2
	.ascii "CapsuleGuid\0"
	.word	0x11a
	.byte	0xe
	.long	0x264
	.byte	0
	.uleb128 0xc
	.secrel32	.LASF9
	.word	0x11b
	.byte	0xc
	.long	0x13e
	.byte	0x10
	.uleb128 0x2
	.ascii "Flags\0"
	.word	0x11c
	.byte	0xc
	.long	0x13e
	.byte	0x14
	.uleb128 0x2
	.ascii "CapsuleImageSize\0"
	.word	0x11d
	.byte	0xc
	.long	0x13e
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF19
	.word	0x11e
	.byte	0x3
	.long	0x96f
	.uleb128 0x9
	.secrel32	.LASF20
	.byte	0x4
	.word	0x124
	.long	0xa07
	.uleb128 0x2
	.ascii "ScanCode\0"
	.word	0x126
	.byte	0x9
	.long	0x12f
	.byte	0
	.uleb128 0x2
	.ascii "UnicodeChar\0"
	.word	0x127
	.byte	0x9
	.long	0x12f
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF20
	.word	0x128
	.byte	0x2
	.long	0x9d3
	.uleb128 0x4
	.ascii "EFI_EVENT_NOTIFY\0"
	.word	0x12b
	.byte	0xf
	.long	0xa2c
	.uleb128 0x3
	.long	0xa31
	.uleb128 0x1c
	.long	0xa41
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INPUT_RESET\0"
	.word	0x12e
	.byte	0x16
	.long	0xa59
	.uleb128 0x3
	.long	0xa5e
	.uleb128 0x5
	.long	0x1ad
	.long	0xa72
	.uleb128 0x1
	.long	0xa72
	.uleb128 0x1
	.long	0x178
	.byte	0
	.uleb128 0x3
	.long	0xa77
	.uleb128 0x9
	.secrel32	.LASF21
	.byte	0x18
	.word	0x135
	.long	0xabe
	.uleb128 0x2
	.ascii "Reset\0"
	.word	0x137
	.byte	0x12
	.long	0xa41
	.byte	0
	.uleb128 0x2
	.ascii "ReadKeyStroke\0"
	.word	0x138
	.byte	0x15
	.long	0xabe
	.byte	0x8
	.uleb128 0x2
	.ascii "WaitForKey\0"
	.word	0x139
	.byte	0xc
	.long	0x1c0
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INPUT_READ_KEY\0"
	.word	0x131
	.byte	0x16
	.long	0xad9
	.uleb128 0x3
	.long	0xade
	.uleb128 0x5
	.long	0x1ad
	.long	0xaf2
	.uleb128 0x1
	.long	0xa72
	.uleb128 0x1
	.long	0xaf2
	.byte	0
	.uleb128 0x3
	.long	0xa07
	.uleb128 0x8
	.secrel32	.LASF21
	.word	0x13a
	.byte	0x3
	.long	0xa77
	.uleb128 0x9
	.secrel32	.LASF22
	.byte	0x18
	.word	0x13e
	.long	0xb7c
	.uleb128 0x2
	.ascii "MaxMode\0"
	.word	0x140
	.byte	0xb
	.long	0x15c
	.byte	0
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x141
	.byte	0xb
	.long	0x15c
	.byte	0x4
	.uleb128 0xc
	.secrel32	.LASF14
	.word	0x142
	.byte	0xb
	.long	0x15c
	.byte	0x8
	.uleb128 0x2
	.ascii "CursorColumn\0"
	.word	0x143
	.byte	0xb
	.long	0x15c
	.byte	0xc
	.uleb128 0x2
	.ascii "CursorRow\0"
	.word	0x144
	.byte	0xb
	.long	0x15c
	.byte	0x10
	.uleb128 0x2
	.ascii "CursorVisible\0"
	.word	0x145
	.byte	0xd
	.long	0x178
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF22
	.word	0x146
	.byte	0x3
	.long	0xb03
	.uleb128 0x4
	.ascii "EFI_TEXT_RESET\0"
	.word	0x149
	.byte	0x16
	.long	0xb9f
	.uleb128 0x3
	.long	0xba4
	.uleb128 0x5
	.long	0x1ad
	.long	0xbb8
	.uleb128 0x1
	.long	0xbb8
	.uleb128 0x1
	.long	0x178
	.byte	0
	.uleb128 0x3
	.long	0xbbd
	.uleb128 0x9
	.secrel32	.LASF23
	.byte	0x50
	.word	0x162
	.long	0xc83
	.uleb128 0x2
	.ascii "Reset\0"
	.word	0x164
	.byte	0x14
	.long	0xb88
	.byte	0
	.uleb128 0x2
	.ascii "OutputString\0"
	.word	0x165
	.byte	0x15
	.long	0xc83
	.byte	0x8
	.uleb128 0x2
	.ascii "TestString\0"
	.word	0x166
	.byte	0x1a
	.long	0xcb9
	.byte	0x10
	.uleb128 0xc
	.secrel32	.LASF24
	.word	0x167
	.byte	0x19
	.long	0xcd6
	.byte	0x18
	.uleb128 0x2
	.ascii "SetMode\0"
	.word	0x168
	.byte	0x17
	.long	0xd1a
	.byte	0x20
	.uleb128 0x2
	.ascii "SetAttribute\0"
	.word	0x169
	.byte	0x1c
	.long	0xd4d
	.byte	0x28
	.uleb128 0xc
	.secrel32	.LASF25
	.word	0x16a
	.byte	0x1b
	.long	0xd6c
	.byte	0x30
	.uleb128 0x2
	.ascii "SetCursorPosition\0"
	.word	0x16b
	.byte	0x22
	.long	0xd9e
	.byte	0x38
	.uleb128 0x2
	.ascii "EnableCursor\0"
	.word	0x16c
	.byte	0x1c
	.long	0xde1
	.byte	0x40
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x16d
	.byte	0x1e
	.long	0xe00
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_STRING\0"
	.word	0x14c
	.byte	0x16
	.long	0xc9b
	.uleb128 0x3
	.long	0xca0
	.uleb128 0x5
	.long	0x1ad
	.long	0xcb4
	.uleb128 0x1
	.long	0xbb8
	.uleb128 0x1
	.long	0xcb4
	.byte	0
	.uleb128 0x3
	.long	0x112
	.uleb128 0x4
	.ascii "EFI_TEXT_TEST_STRING\0"
	.word	0x150
	.byte	0x16
	.long	0xc9b
	.uleb128 0x4
	.ascii "EFI_TEXT_QUERY_MODE\0"
	.word	0x151
	.byte	0x16
	.long	0xcf2
	.uleb128 0x3
	.long	0xcf7
	.uleb128 0x5
	.long	0x1ad
	.long	0xd15
	.uleb128 0x1
	.long	0xbb8
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0xd15
	.byte	0
	.uleb128 0x3
	.long	0x16a
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_MODE\0"
	.word	0x152
	.byte	0x16
	.long	0xd34
	.uleb128 0x3
	.long	0xd39
	.uleb128 0x5
	.long	0x1ad
	.long	0xd4d
	.uleb128 0x1
	.long	0xbb8
	.uleb128 0x1
	.long	0x16a
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_ATTRIBUTE\0"
	.word	0x155
	.byte	0x16
	.long	0xd34
	.uleb128 0x4
	.ascii "EFI_TEXT_CLEAR_SCREEN\0"
	.word	0x158
	.byte	0x16
	.long	0xd8a
	.uleb128 0x3
	.long	0xd8f
	.uleb128 0x5
	.long	0x1ad
	.long	0xd9e
	.uleb128 0x1
	.long	0xbb8
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_SET_CURSOR_POSITION\0"
	.word	0x15b
	.byte	0x16
	.long	0xdc3
	.uleb128 0x3
	.long	0xdc8
	.uleb128 0x5
	.long	0x1ad
	.long	0xde1
	.uleb128 0x1
	.long	0xbb8
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.byte	0
	.uleb128 0x4
	.ascii "EFI_TEXT_ENABLE_CURSOR\0"
	.word	0x15e
	.byte	0x16
	.long	0xb9f
	.uleb128 0x3
	.long	0xb7c
	.uleb128 0x8
	.secrel32	.LASF23
	.word	0x16e
	.byte	0x3
	.long	0xbbd
	.uleb128 0x4
	.ascii "EFI_RAISE_TPL\0"
	.word	0x170
	.byte	0x16
	.long	0xe27
	.uleb128 0x3
	.long	0xe2c
	.uleb128 0x5
	.long	0x1ad
	.long	0xe3b
	.uleb128 0x1
	.long	0x188
	.byte	0
	.uleb128 0x4
	.ascii "EFI_RESTORE_TPL\0"
	.word	0x171
	.byte	0x16
	.long	0xe27
	.uleb128 0x4
	.ascii "EFI_ALLOCATE_PAGES\0"
	.word	0x172
	.byte	0x16
	.long	0xe6e
	.uleb128 0x3
	.long	0xe73
	.uleb128 0x5
	.long	0x1ad
	.long	0xe91
	.uleb128 0x1
	.long	0x765
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xe91
	.byte	0
	.uleb128 0x3
	.long	0x1d2
	.uleb128 0x4
	.ascii "EFI_FREE_PAGES\0"
	.word	0x173
	.byte	0x16
	.long	0xead
	.uleb128 0x3
	.long	0xeb2
	.uleb128 0x5
	.long	0x1ad
	.long	0xec6
	.uleb128 0x1
	.long	0x1d2
	.uleb128 0x1
	.long	0x16a
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_MEMORY_MAP\0"
	.word	0x174
	.byte	0x16
	.long	0xee1
	.uleb128 0x3
	.long	0xee6
	.uleb128 0x5
	.long	0x1ad
	.long	0xf09
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0xf09
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0xf0e
	.byte	0
	.uleb128 0x3
	.long	0x824
	.uleb128 0x3
	.long	0x13e
	.uleb128 0x4
	.ascii "EFI_ALLOCATE_POOL\0"
	.word	0x175
	.byte	0x16
	.long	0xf2d
	.uleb128 0x3
	.long	0xf32
	.uleb128 0x5
	.long	0x1ad
	.long	0xf4b
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xf4b
	.byte	0
	.uleb128 0x3
	.long	0x1ab
	.uleb128 0x4
	.ascii "EFI_FREE_POOL\0"
	.word	0x176
	.byte	0x16
	.long	0xf66
	.uleb128 0x3
	.long	0xf6b
	.uleb128 0x5
	.long	0x1ad
	.long	0xf7a
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CREATE_EVENT\0"
	.word	0x177
	.byte	0x16
	.long	0xf93
	.uleb128 0x3
	.long	0xf98
	.uleb128 0x5
	.long	0x1ad
	.long	0xfc0
	.uleb128 0x1
	.long	0x13e
	.uleb128 0x1
	.long	0x188
	.uleb128 0x1
	.long	0xa13
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0xfc5
	.byte	0
	.uleb128 0x3
	.long	0x264
	.uleb128 0x3
	.long	0x1c0
	.uleb128 0x4
	.ascii "EFI_SET_TIMER\0"
	.word	0x178
	.byte	0x16
	.long	0xfe0
	.uleb128 0x3
	.long	0xfe5
	.uleb128 0x5
	.long	0x1ad
	.long	0xffe
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0x7ad
	.uleb128 0x1
	.long	0x14d
	.byte	0
	.uleb128 0x4
	.ascii "EFI_WAIT_FOR_EVENT\0"
	.word	0x179
	.byte	0x16
	.long	0x1019
	.uleb128 0x3
	.long	0x101e
	.uleb128 0x5
	.long	0x1ad
	.long	0x1037
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xfc5
	.uleb128 0x1
	.long	0xd15
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SIGNAL_EVENT\0"
	.word	0x17a
	.byte	0x16
	.long	0x1050
	.uleb128 0x3
	.long	0x1055
	.uleb128 0x5
	.long	0x1ad
	.long	0x1064
	.uleb128 0x1
	.long	0x1c0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CLOSE_EVENT\0"
	.word	0x17b
	.byte	0x16
	.long	0x1050
	.uleb128 0x4
	.ascii "EFI_CHECK_EVENT\0"
	.word	0x17c
	.byte	0x16
	.long	0x1050
	.uleb128 0x4
	.ascii "EFI_INSTALL_PROTOCOL_INTERFACE\0"
	.word	0x17d
	.byte	0x16
	.long	0x10bb
	.uleb128 0x3
	.long	0x10c0
	.uleb128 0x5
	.long	0x1ad
	.long	0x10de
	.uleb128 0x1
	.long	0x10de
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x855
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x3
	.long	0x198
	.uleb128 0x4
	.ascii "EFI_REINSTALL_PROTOCOL_INTERFACE\0"
	.word	0x17e
	.byte	0x16
	.long	0x110c
	.uleb128 0x3
	.long	0x1111
	.uleb128 0x5
	.long	0x1ad
	.long	0x112f
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UNINSTALL_PROTOCOL_INTERFACE\0"
	.word	0x17f
	.byte	0x16
	.long	0x1158
	.uleb128 0x3
	.long	0x115d
	.uleb128 0x5
	.long	0x1ad
	.long	0x1176
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_HANDLE_PROTOCOL\0"
	.word	0x180
	.byte	0x16
	.long	0x1192
	.uleb128 0x3
	.long	0x1197
	.uleb128 0x5
	.long	0x1ad
	.long	0x11b0
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0xf4b
	.byte	0
	.uleb128 0x4
	.ascii "EFI_REGISTER_PROTOCOL_NOTIFY\0"
	.word	0x181
	.byte	0x16
	.long	0x11d5
	.uleb128 0x3
	.long	0x11da
	.uleb128 0x5
	.long	0x1ad
	.long	0x11f3
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1c0
	.uleb128 0x1
	.long	0xf4b
	.byte	0
	.uleb128 0x4
	.ascii "EFI_LOCATE_HANDLE\0"
	.word	0x182
	.byte	0x16
	.long	0x120d
	.uleb128 0x3
	.long	0x1212
	.uleb128 0x5
	.long	0x1ad
	.long	0x1235
	.uleb128 0x1
	.long	0x89c
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0x10de
	.byte	0
	.uleb128 0x4
	.ascii "EFI_LOCATE_DEVICE_PATH\0"
	.word	0x183
	.byte	0x16
	.long	0x1254
	.uleb128 0x3
	.long	0x1259
	.uleb128 0x5
	.long	0x1ad
	.long	0x1272
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1272
	.uleb128 0x1
	.long	0x10de
	.byte	0
	.uleb128 0x3
	.long	0x1277
	.uleb128 0x3
	.long	0x963
	.uleb128 0x4
	.ascii "EFI_INSTALL_CONFIGURATION_TABLE\0"
	.word	0x184
	.byte	0x16
	.long	0x12a4
	.uleb128 0x3
	.long	0x12a9
	.uleb128 0x5
	.long	0x1ad
	.long	0x12bd
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_LOAD\0"
	.word	0x185
	.byte	0x16
	.long	0x12d4
	.uleb128 0x3
	.long	0x12d9
	.uleb128 0x5
	.long	0x1ad
	.long	0x1301
	.uleb128 0x1
	.long	0x178
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x1277
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x10de
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_START\0"
	.word	0x186
	.byte	0x16
	.long	0x1319
	.uleb128 0x3
	.long	0x131e
	.uleb128 0x5
	.long	0x1ad
	.long	0x1337
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0x1337
	.byte	0
	.uleb128 0x3
	.long	0xcb4
	.uleb128 0x4
	.ascii "EFI_EXIT\0"
	.word	0x187
	.byte	0x16
	.long	0x134d
	.uleb128 0x3
	.long	0x1352
	.uleb128 0x5
	.long	0x1ad
	.long	0x1370
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xcb4
	.byte	0
	.uleb128 0x4
	.ascii "EFI_IMAGE_UNLOAD\0"
	.word	0x188
	.byte	0x16
	.long	0x1389
	.uleb128 0x3
	.long	0x138e
	.uleb128 0x5
	.long	0x1ad
	.long	0x139d
	.uleb128 0x1
	.long	0x198
	.byte	0
	.uleb128 0x4
	.ascii "EFI_EXIT_BOOT_SERVICES\0"
	.word	0x189
	.byte	0x16
	.long	0x13bc
	.uleb128 0x3
	.long	0x13c1
	.uleb128 0x5
	.long	0x1ad
	.long	0x13d5
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x16a
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_MONOTONIC_COUNT\0"
	.word	0x18a
	.byte	0x16
	.long	0x13fa
	.uleb128 0x3
	.long	0x13ff
	.uleb128 0x5
	.long	0x1ad
	.long	0x140e
	.uleb128 0x1
	.long	0x140e
	.byte	0
	.uleb128 0x3
	.long	0x14d
	.uleb128 0x4
	.ascii "EFI_STALL\0"
	.word	0x18b
	.byte	0x16
	.long	0x1425
	.uleb128 0x3
	.long	0x142a
	.uleb128 0x5
	.long	0x1ad
	.long	0x1439
	.uleb128 0x1
	.long	0x16a
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_WATCHDOG_TIMER\0"
	.word	0x18c
	.byte	0x16
	.long	0x1458
	.uleb128 0x3
	.long	0x145d
	.uleb128 0x5
	.long	0x1ad
	.long	0x147b
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x14d
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xcb4
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CONNECT_CONTROLLER\0"
	.word	0x18d
	.byte	0x16
	.long	0x149a
	.uleb128 0x3
	.long	0x149f
	.uleb128 0x5
	.long	0x1ad
	.long	0x14bd
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x10de
	.uleb128 0x1
	.long	0x1277
	.uleb128 0x1
	.long	0x178
	.byte	0
	.uleb128 0x4
	.ascii "EFI_DISCONNECT_CONTROLLER\0"
	.word	0x18e
	.byte	0x16
	.long	0x14df
	.uleb128 0x3
	.long	0x14e4
	.uleb128 0x5
	.long	0x1ad
	.long	0x14fd
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x198
	.byte	0
	.uleb128 0x4
	.ascii "EFI_OPEN_PROTOCOL\0"
	.word	0x18f
	.byte	0x16
	.long	0x1517
	.uleb128 0x3
	.long	0x151c
	.uleb128 0x5
	.long	0x1ad
	.long	0x1544
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0xf4b
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x13e
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CLOSE_PROTOCOL\0"
	.word	0x190
	.byte	0x16
	.long	0x155f
	.uleb128 0x3
	.long	0x1564
	.uleb128 0x5
	.long	0x1ad
	.long	0x1582
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x198
	.byte	0
	.uleb128 0x4
	.ascii "EFI_OPEN_PROTOCOL_INFORMATION\0"
	.word	0x191
	.byte	0x16
	.long	0x15a8
	.uleb128 0x3
	.long	0x15ad
	.uleb128 0x5
	.long	0x1ad
	.long	0x15cb
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x15cb
	.uleb128 0x1
	.long	0xd15
	.byte	0
	.uleb128 0x3
	.long	0x15d0
	.uleb128 0x3
	.long	0x90b
	.uleb128 0x4
	.ascii "EFI_PROTOCOLS_PER_HANDLE\0"
	.word	0x192
	.byte	0x16
	.long	0x15f6
	.uleb128 0x3
	.long	0x15fb
	.uleb128 0x5
	.long	0x1ad
	.long	0x1614
	.uleb128 0x1
	.long	0x198
	.uleb128 0x1
	.long	0x1614
	.uleb128 0x1
	.long	0xd15
	.byte	0
	.uleb128 0x3
	.long	0x1619
	.uleb128 0x3
	.long	0xfc0
	.uleb128 0x4
	.ascii "EFI_LOCATE_HANDLE_BUFFER\0"
	.word	0x193
	.byte	0x16
	.long	0x163f
	.uleb128 0x3
	.long	0x1644
	.uleb128 0x5
	.long	0x1ad
	.long	0x1667
	.uleb128 0x1
	.long	0x89c
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0x1667
	.byte	0
	.uleb128 0x3
	.long	0x10de
	.uleb128 0x4
	.ascii "EFI_LOCATE_PROTOCOL\0"
	.word	0x194
	.byte	0x16
	.long	0x1688
	.uleb128 0x3
	.long	0x168d
	.uleb128 0x5
	.long	0x1ad
	.long	0x16a6
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0xf4b
	.byte	0
	.uleb128 0x4
	.ascii "EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES\0"
	.word	0x195
	.byte	0x16
	.long	0x16d7
	.uleb128 0x3
	.long	0x16dc
	.uleb128 0x5
	.long	0x1ad
	.long	0x16ec
	.uleb128 0x1
	.long	0x10de
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES\0"
	.word	0x196
	.byte	0x16
	.long	0x16d7
	.uleb128 0x4
	.ascii "EFI_CALCULATE_CRC32\0"
	.word	0x197
	.byte	0x16
	.long	0x173b
	.uleb128 0x3
	.long	0x1740
	.uleb128 0x5
	.long	0x1ad
	.long	0x1759
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xf0e
	.byte	0
	.uleb128 0x4
	.ascii "EFI_COPY_MEM\0"
	.word	0x198
	.byte	0x16
	.long	0x176e
	.uleb128 0x3
	.long	0x1773
	.uleb128 0x5
	.long	0x1ad
	.long	0x178c
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0x16a
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_MEM\0"
	.word	0x199
	.byte	0x16
	.long	0x17a0
	.uleb128 0x3
	.long	0x17a5
	.uleb128 0x5
	.long	0x1ad
	.long	0x17be
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CREATE_EVENT_EX\0"
	.word	0x19a
	.byte	0x16
	.long	0xf93
	.uleb128 0x22
	.secrel32	.LASF26
	.word	0x178
	.byte	0x4
	.word	0x19e
	.byte	0x10
	.long	0x1c3b
	.uleb128 0x2
	.ascii "Hdr\0"
	.word	0x1a0
	.byte	0x16
	.long	0x6ff
	.byte	0
	.uleb128 0x2
	.ascii "RaiseTPL\0"
	.word	0x1a1
	.byte	0x13
	.long	0xe11
	.byte	0x18
	.uleb128 0x2
	.ascii "RestoreTPL\0"
	.word	0x1a2
	.byte	0x15
	.long	0xe3b
	.byte	0x20
	.uleb128 0x2
	.ascii "AllocatePages\0"
	.word	0x1a3
	.byte	0x18
	.long	0xe53
	.byte	0x28
	.uleb128 0x2
	.ascii "FreePages\0"
	.word	0x1a4
	.byte	0x14
	.long	0xe96
	.byte	0x30
	.uleb128 0x2
	.ascii "GetMemoryMap\0"
	.word	0x1a5
	.byte	0x18
	.long	0xec6
	.byte	0x38
	.uleb128 0x2
	.ascii "AllocatePool\0"
	.word	0x1a6
	.byte	0x17
	.long	0xf13
	.byte	0x40
	.uleb128 0x2
	.ascii "FreePool\0"
	.word	0x1a7
	.byte	0x13
	.long	0xf50
	.byte	0x48
	.uleb128 0x2
	.ascii "CreateEvent\0"
	.word	0x1a8
	.byte	0x16
	.long	0xf7a
	.byte	0x50
	.uleb128 0x2
	.ascii "SetTimer\0"
	.word	0x1a9
	.byte	0x13
	.long	0xfca
	.byte	0x58
	.uleb128 0x2
	.ascii "WaitForEvent\0"
	.word	0x1aa
	.byte	0x18
	.long	0xffe
	.byte	0x60
	.uleb128 0x2
	.ascii "SignalEvent\0"
	.word	0x1ab
	.byte	0x16
	.long	0x1037
	.byte	0x68
	.uleb128 0x2
	.ascii "CloseEvent\0"
	.word	0x1ac
	.byte	0x15
	.long	0x1064
	.byte	0x70
	.uleb128 0x2
	.ascii "CheckEvent\0"
	.word	0x1ad
	.byte	0x15
	.long	0x107c
	.byte	0x78
	.uleb128 0x2
	.ascii "InstallProtocolInterface\0"
	.word	0x1ae
	.byte	0x24
	.long	0x1094
	.byte	0x80
	.uleb128 0x2
	.ascii "ReinstallProtocolInterface\0"
	.word	0x1af
	.byte	0x26
	.long	0x10e3
	.byte	0x88
	.uleb128 0x2
	.ascii "UninstallProtocolInterface\0"
	.word	0x1b0
	.byte	0x26
	.long	0x112f
	.byte	0x90
	.uleb128 0x2
	.ascii "HandleProtocol\0"
	.word	0x1b1
	.byte	0x19
	.long	0x1176
	.byte	0x98
	.uleb128 0xc
	.secrel32	.LASF10
	.word	0x1b2
	.byte	0xb
	.long	0x1ab
	.byte	0xa0
	.uleb128 0x2
	.ascii "RegisterProtocolNotify\0"
	.word	0x1b3
	.byte	0x22
	.long	0x11b0
	.byte	0xa8
	.uleb128 0x2
	.ascii "LocateHandle\0"
	.word	0x1b4
	.byte	0x17
	.long	0x11f3
	.byte	0xb0
	.uleb128 0x2
	.ascii "LocateDevicePath\0"
	.word	0x1b5
	.byte	0x1c
	.long	0x1235
	.byte	0xb8
	.uleb128 0x2
	.ascii "InstallConfigurationTable\0"
	.word	0x1b6
	.byte	0x25
	.long	0x127c
	.byte	0xc0
	.uleb128 0x2
	.ascii "LoadImage\0"
	.word	0x1b7
	.byte	0x14
	.long	0x12bd
	.byte	0xc8
	.uleb128 0x2
	.ascii "StartImage\0"
	.word	0x1b8
	.byte	0x15
	.long	0x1301
	.byte	0xd0
	.uleb128 0x2
	.ascii "Exit\0"
	.word	0x1b9
	.byte	0xe
	.long	0x133c
	.byte	0xd8
	.uleb128 0x2
	.ascii "UnloadImage\0"
	.word	0x1ba
	.byte	0x16
	.long	0x1370
	.byte	0xe0
	.uleb128 0x2
	.ascii "ExitBootServices\0"
	.word	0x1bb
	.byte	0x1c
	.long	0x139d
	.byte	0xe8
	.uleb128 0x2
	.ascii "GetNextMonotonicCount\0"
	.word	0x1bc
	.byte	0x22
	.long	0x13d5
	.byte	0xf0
	.uleb128 0x2
	.ascii "Stall\0"
	.word	0x1bd
	.byte	0xf
	.long	0x1413
	.byte	0xf8
	.uleb128 0xb
	.ascii "SetWatchdogTimer\0"
	.word	0x1be
	.byte	0x1c
	.long	0x1439
	.word	0x100
	.uleb128 0xb
	.ascii "ConnectController\0"
	.word	0x1bf
	.byte	0x1c
	.long	0x147b
	.word	0x108
	.uleb128 0xb
	.ascii "DisconnectController\0"
	.word	0x1c0
	.byte	0x1f
	.long	0x14bd
	.word	0x110
	.uleb128 0xb
	.ascii "OpenProtocol\0"
	.word	0x1c1
	.byte	0x17
	.long	0x14fd
	.word	0x118
	.uleb128 0xb
	.ascii "CloseProtocol\0"
	.word	0x1c2
	.byte	0x18
	.long	0x1544
	.word	0x120
	.uleb128 0xb
	.ascii "OpenProtocolInformation\0"
	.word	0x1c3
	.byte	0x23
	.long	0x1582
	.word	0x128
	.uleb128 0xb
	.ascii "ProtocolsPerHandle\0"
	.word	0x1c4
	.byte	0x1e
	.long	0x15d5
	.word	0x130
	.uleb128 0xb
	.ascii "LocateHandleBuffer\0"
	.word	0x1c5
	.byte	0x1e
	.long	0x161e
	.word	0x138
	.uleb128 0xb
	.ascii "LocateProtocol\0"
	.word	0x1c6
	.byte	0x19
	.long	0x166c
	.word	0x140
	.uleb128 0xb
	.ascii "InstallMultipleProtocolInterfaces\0"
	.word	0x1c7
	.byte	0x2e
	.long	0x16a6
	.word	0x148
	.uleb128 0xb
	.ascii "UninstallMultipleProtocolInterfaces\0"
	.word	0x1c8
	.byte	0x30
	.long	0x16ec
	.word	0x150
	.uleb128 0xb
	.ascii "CalculateCrc32\0"
	.word	0x1c9
	.byte	0x19
	.long	0x171f
	.word	0x158
	.uleb128 0xb
	.ascii "CopyMem\0"
	.word	0x1ca
	.byte	0x12
	.long	0x1759
	.word	0x160
	.uleb128 0xb
	.ascii "SetMem\0"
	.word	0x1cb
	.byte	0x11
	.long	0x178c
	.word	0x168
	.uleb128 0xb
	.ascii "CreateEventEx\0"
	.word	0x1cc
	.byte	0x19
	.long	0x17be
	.word	0x170
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF26
	.word	0x1cd
	.byte	0x3
	.long	0x17da
	.uleb128 0x4
	.ascii "EFI_GET_TIME\0"
	.word	0x1d0
	.byte	0x16
	.long	0x1c5c
	.uleb128 0x3
	.long	0x1c61
	.uleb128 0x5
	.long	0x1ad
	.long	0x1c75
	.uleb128 0x1
	.long	0x1c75
	.uleb128 0x1
	.long	0x1c7a
	.byte	0
	.uleb128 0x3
	.long	0x5a5
	.uleb128 0x3
	.long	0x5f7
	.uleb128 0x4
	.ascii "EFI_SET_TIME\0"
	.word	0x1d1
	.byte	0x16
	.long	0x1c94
	.uleb128 0x3
	.long	0x1c99
	.uleb128 0x5
	.long	0x1ad
	.long	0x1ca8
	.uleb128 0x1
	.long	0x1c75
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_WAKEUP_TIME\0"
	.word	0x1d2
	.byte	0x16
	.long	0x1cc4
	.uleb128 0x3
	.long	0x1cc9
	.uleb128 0x5
	.long	0x1ad
	.long	0x1ce2
	.uleb128 0x1
	.long	0x1ce2
	.uleb128 0x1
	.long	0x1ce2
	.uleb128 0x1
	.long	0x1c75
	.byte	0
	.uleb128 0x3
	.long	0x178
	.uleb128 0x4
	.ascii "EFI_SET_WAKEUP_TIME\0"
	.word	0x1d3
	.byte	0x16
	.long	0x1d03
	.uleb128 0x3
	.long	0x1d08
	.uleb128 0x5
	.long	0x1ad
	.long	0x1d1c
	.uleb128 0x1
	.long	0x178
	.uleb128 0x1
	.long	0x1c75
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_VIRTUAL_ADDRESS_MAP\0"
	.word	0x1d4
	.byte	0x16
	.long	0x1d40
	.uleb128 0x3
	.long	0x1d45
	.uleb128 0x5
	.long	0x1ad
	.long	0x1d63
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x13e
	.uleb128 0x1
	.long	0xf09
	.byte	0
	.uleb128 0x4
	.ascii "EFI_CONVERT_POINTER\0"
	.word	0x1d5
	.byte	0x16
	.long	0x1d7f
	.uleb128 0x3
	.long	0x1d84
	.uleb128 0x5
	.long	0x1ad
	.long	0x1d98
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0xf4b
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_VARIABLE\0"
	.word	0x1d6
	.byte	0x16
	.long	0x1db1
	.uleb128 0x3
	.long	0x1db6
	.uleb128 0x5
	.long	0x1ad
	.long	0x1dd9
	.uleb128 0x1
	.long	0xcb4
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0xf0e
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_VARIABLE_NAME\0"
	.word	0x1d7
	.byte	0x16
	.long	0x1dfc
	.uleb128 0x3
	.long	0x1e01
	.uleb128 0x5
	.long	0x1ad
	.long	0x1e1a
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0xcb4
	.uleb128 0x1
	.long	0xfc0
	.byte	0
	.uleb128 0x4
	.ascii "EFI_SET_VARIABLE\0"
	.word	0x1d8
	.byte	0x16
	.long	0x1e33
	.uleb128 0x3
	.long	0x1e38
	.uleb128 0x5
	.long	0x1ad
	.long	0x1e5b
	.uleb128 0x1
	.long	0xcb4
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x13e
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GET_NEXT_HIGH_MONO_COUNT\0"
	.word	0x1d9
	.byte	0x16
	.long	0x1e80
	.uleb128 0x3
	.long	0x1e85
	.uleb128 0x5
	.long	0x1ad
	.long	0x1e94
	.uleb128 0x1
	.long	0xf0e
	.byte	0
	.uleb128 0x4
	.ascii "EFI_RESET_SYSTEM\0"
	.word	0x1da
	.byte	0x16
	.long	0x1ead
	.uleb128 0x3
	.long	0x1eb2
	.uleb128 0x5
	.long	0x1ad
	.long	0x1ed0
	.uleb128 0x1
	.long	0x65d
	.uleb128 0x1
	.long	0x1ad
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_UPDATE_CAPSULE\0"
	.word	0x1db
	.byte	0x16
	.long	0x1eeb
	.uleb128 0x3
	.long	0x1ef0
	.uleb128 0x5
	.long	0x1ad
	.long	0x1f09
	.uleb128 0x1
	.long	0x1f09
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x1d2
	.byte	0
	.uleb128 0x3
	.long	0x1f0e
	.uleb128 0x3
	.long	0x9c7
	.uleb128 0x4
	.ascii "EFI_QUERY_CAPSULE_CAPABILITIES\0"
	.word	0x1dc
	.byte	0x16
	.long	0x1f3a
	.uleb128 0x3
	.long	0x1f3f
	.uleb128 0x5
	.long	0x1ad
	.long	0x1f5d
	.uleb128 0x1
	.long	0x1f09
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x140e
	.uleb128 0x1
	.long	0x1f5d
	.byte	0
	.uleb128 0x3
	.long	0x65d
	.uleb128 0x4
	.ascii "EFI_QUERY_VARIABLE_INFO\0"
	.word	0x1dd
	.byte	0x16
	.long	0x1f82
	.uleb128 0x3
	.long	0x1f87
	.uleb128 0x5
	.long	0x1ad
	.long	0x1fa5
	.uleb128 0x1
	.long	0x13e
	.uleb128 0x1
	.long	0x140e
	.uleb128 0x1
	.long	0x140e
	.uleb128 0x1
	.long	0x140e
	.byte	0
	.uleb128 0x9
	.secrel32	.LASF27
	.byte	0x88
	.word	0x1e0
	.long	0x2118
	.uleb128 0x2
	.ascii "Hdr\0"
	.word	0x1e2
	.byte	0x16
	.long	0x6ff
	.byte	0
	.uleb128 0x2
	.ascii "GetTime\0"
	.word	0x1e3
	.byte	0x12
	.long	0x1c47
	.byte	0x18
	.uleb128 0x2
	.ascii "SetTime\0"
	.word	0x1e4
	.byte	0x12
	.long	0x1c7f
	.byte	0x20
	.uleb128 0x2
	.ascii "GetWakeupTime\0"
	.word	0x1e5
	.byte	0x19
	.long	0x1ca8
	.byte	0x28
	.uleb128 0x2
	.ascii "SetWakeupTime\0"
	.word	0x1e6
	.byte	0x19
	.long	0x1ce7
	.byte	0x30
	.uleb128 0x2
	.ascii "SetVirtualAddressMap\0"
	.word	0x1e7
	.byte	0x21
	.long	0x1d1c
	.byte	0x38
	.uleb128 0x2
	.ascii "ConvertPointer\0"
	.word	0x1e8
	.byte	0x19
	.long	0x1d63
	.byte	0x40
	.uleb128 0x2
	.ascii "GetVariable\0"
	.word	0x1e9
	.byte	0x16
	.long	0x1d98
	.byte	0x48
	.uleb128 0x2
	.ascii "GetNextVariableName\0"
	.word	0x1ea
	.byte	0x20
	.long	0x1dd9
	.byte	0x50
	.uleb128 0x2
	.ascii "SetVariable\0"
	.word	0x1eb
	.byte	0x16
	.long	0x1e1a
	.byte	0x58
	.uleb128 0x2
	.ascii "GetNextHighMonotonicCount\0"
	.word	0x1ec
	.byte	0x22
	.long	0x1e5b
	.byte	0x60
	.uleb128 0x2
	.ascii "ResetSystem\0"
	.word	0x1ed
	.byte	0x16
	.long	0x1e94
	.byte	0x68
	.uleb128 0x2
	.ascii "UpdateCapsule\0"
	.word	0x1ee
	.byte	0x18
	.long	0x1ed0
	.byte	0x70
	.uleb128 0x2
	.ascii "QueryCapsuleCapabilities\0"
	.word	0x1ef
	.byte	0x24
	.long	0x1f13
	.byte	0x78
	.uleb128 0x2
	.ascii "QueryVariableInfo\0"
	.word	0x1f0
	.byte	0x1d
	.long	0x1f62
	.byte	0x80
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF27
	.word	0x1f1
	.byte	0x3
	.long	0x1fa5
	.uleb128 0x9
	.secrel32	.LASF28
	.byte	0x20
	.word	0x1f6
	.long	0x216d
	.uleb128 0x2
	.ascii "Event\0"
	.word	0x1f8
	.byte	0xf
	.long	0x1c0
	.byte	0
	.uleb128 0x2
	.ascii "Status\0"
	.word	0x1f9
	.byte	0x10
	.long	0x1ad
	.byte	0x8
	.uleb128 0xc
	.secrel32	.LASF29
	.word	0x1fa
	.byte	0xb
	.long	0x16a
	.byte	0x10
	.uleb128 0x2
	.ascii "Buffer\0"
	.word	0x1fb
	.byte	0xb
	.long	0x1ab
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF28
	.word	0x1fc
	.byte	0x3
	.long	0x2124
	.uleb128 0x4
	.ascii "EFI_FILE_OPEN\0"
	.word	0x20a
	.byte	0x16
	.long	0x218f
	.uleb128 0x3
	.long	0x2194
	.uleb128 0x5
	.long	0x1ad
	.long	0x21b7
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0x22bd
	.uleb128 0x1
	.long	0xcb4
	.uleb128 0x1
	.long	0x14d
	.uleb128 0x1
	.long	0x14d
	.byte	0
	.uleb128 0x3
	.long	0x21bc
	.uleb128 0x9
	.secrel32	.LASF30
	.byte	0x78
	.word	0x21a
	.long	0x22bd
	.uleb128 0xc
	.secrel32	.LASF8
	.word	0x21c
	.byte	0xc
	.long	0x14d
	.byte	0
	.uleb128 0x2
	.ascii "Open\0"
	.word	0x21d
	.byte	0x13
	.long	0x2179
	.byte	0x8
	.uleb128 0x2
	.ascii "Close\0"
	.word	0x21e
	.byte	0x14
	.long	0x22c2
	.byte	0x10
	.uleb128 0x2
	.ascii "Delete\0"
	.word	0x21f
	.byte	0x15
	.long	0x22ed
	.byte	0x18
	.uleb128 0x2
	.ascii "Read\0"
	.word	0x220
	.byte	0x13
	.long	0x2305
	.byte	0x20
	.uleb128 0x2
	.ascii "Write\0"
	.word	0x221
	.byte	0x14
	.long	0x2339
	.byte	0x28
	.uleb128 0x2
	.ascii "GetPosition\0"
	.word	0x222
	.byte	0x1b
	.long	0x2350
	.byte	0x30
	.uleb128 0x2
	.ascii "SetPosition\0"
	.word	0x223
	.byte	0x1b
	.long	0x2387
	.byte	0x38
	.uleb128 0x2
	.ascii "GetInfo\0"
	.word	0x224
	.byte	0x17
	.long	0x23be
	.byte	0x40
	.uleb128 0x2
	.ascii "SetInfo\0"
	.word	0x225
	.byte	0x17
	.long	0x23fb
	.byte	0x48
	.uleb128 0x2
	.ascii "Flush\0"
	.word	0x226
	.byte	0x14
	.long	0x2438
	.byte	0x50
	.uleb128 0x2
	.ascii "OpenEx\0"
	.word	0x227
	.byte	0x16
	.long	0x244f
	.byte	0x58
	.uleb128 0x2
	.ascii "ReadEx\0"
	.word	0x228
	.byte	0x16
	.long	0x249a
	.byte	0x60
	.uleb128 0x2
	.ascii "WriteEx\0"
	.word	0x229
	.byte	0x17
	.long	0x24cc
	.byte	0x68
	.uleb128 0x2
	.ascii "FlushEx\0"
	.word	0x22a
	.byte	0x17
	.long	0x24e6
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.long	0x21b7
	.uleb128 0x4
	.ascii "EFI_FILE_CLOSE\0"
	.word	0x20b
	.byte	0x16
	.long	0x22d9
	.uleb128 0x3
	.long	0x22de
	.uleb128 0x5
	.long	0x1ad
	.long	0x22ed
	.uleb128 0x1
	.long	0x21b7
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_DELETE\0"
	.word	0x20c
	.byte	0x16
	.long	0x22d9
	.uleb128 0x4
	.ascii "EFI_FILE_READ\0"
	.word	0x20d
	.byte	0x16
	.long	0x231b
	.uleb128 0x3
	.long	0x2320
	.uleb128 0x5
	.long	0x1ad
	.long	0x2339
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_WRITE\0"
	.word	0x20e
	.byte	0x16
	.long	0x231b
	.uleb128 0x4
	.ascii "EFI_FILE_GET_POSITION\0"
	.word	0x20f
	.byte	0x16
	.long	0x236e
	.uleb128 0x3
	.long	0x2373
	.uleb128 0x5
	.long	0x1ad
	.long	0x2387
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0x140e
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_SET_POSITION\0"
	.word	0x210
	.byte	0x16
	.long	0x23a5
	.uleb128 0x3
	.long	0x23aa
	.uleb128 0x5
	.long	0x1ad
	.long	0x23be
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0x14d
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_GET_INFO\0"
	.word	0x211
	.byte	0x16
	.long	0x23d8
	.uleb128 0x3
	.long	0x23dd
	.uleb128 0x5
	.long	0x1ad
	.long	0x23fb
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0x1ab
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_SET_INFO\0"
	.word	0x212
	.byte	0x16
	.long	0x2415
	.uleb128 0x3
	.long	0x241a
	.uleb128 0x5
	.long	0x1ad
	.long	0x2438
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0xfc0
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x1ab
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_FLUSH\0"
	.word	0x213
	.byte	0x16
	.long	0x22d9
	.uleb128 0x4
	.ascii "EFI_FILE_OPEN_EX\0"
	.word	0x214
	.byte	0x16
	.long	0x2468
	.uleb128 0x3
	.long	0x246d
	.uleb128 0x5
	.long	0x1ad
	.long	0x2495
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0x22bd
	.uleb128 0x1
	.long	0xcb4
	.uleb128 0x1
	.long	0x14d
	.uleb128 0x1
	.long	0x14d
	.uleb128 0x1
	.long	0x2495
	.byte	0
	.uleb128 0x3
	.long	0x216d
	.uleb128 0x4
	.ascii "EFI_FILE_READ_EX\0"
	.word	0x215
	.byte	0x16
	.long	0x24b3
	.uleb128 0x3
	.long	0x24b8
	.uleb128 0x5
	.long	0x1ad
	.long	0x24cc
	.uleb128 0x1
	.long	0x21b7
	.uleb128 0x1
	.long	0x2495
	.byte	0
	.uleb128 0x4
	.ascii "EFI_FILE_WRITE_EX\0"
	.word	0x216
	.byte	0x16
	.long	0x24b3
	.uleb128 0x4
	.ascii "EFI_FILE_FLUSH_EX\0"
	.word	0x217
	.byte	0x16
	.long	0x24b3
	.uleb128 0x8
	.secrel32	.LASF30
	.word	0x22b
	.byte	0x3
	.long	0x21bc
	.uleb128 0x4
	.ascii "EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_OPEN_VOLUME\0"
	.word	0x22d
	.byte	0x16
	.long	0x2540
	.uleb128 0x3
	.long	0x2545
	.uleb128 0x5
	.long	0x1ad
	.long	0x2559
	.uleb128 0x1
	.long	0x2559
	.uleb128 0x1
	.long	0x258c
	.byte	0
	.uleb128 0x3
	.long	0x255e
	.uleb128 0x9
	.secrel32	.LASF31
	.byte	0x10
	.word	0x230
	.long	0x258c
	.uleb128 0xc
	.secrel32	.LASF8
	.word	0x232
	.byte	0xc
	.long	0x14d
	.byte	0
	.uleb128 0x2
	.ascii "OpenVolume\0"
	.word	0x233
	.byte	0x31
	.long	0x250c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x2591
	.uleb128 0x3
	.long	0x2500
	.uleb128 0x8
	.secrel32	.LASF31
	.word	0x234
	.byte	0x3
	.long	0x255e
	.uleb128 0x9
	.secrel32	.LASF32
	.byte	0x78
	.word	0x23a
	.long	0x26d5
	.uleb128 0x2
	.ascii "hdr\0"
	.word	0x23c
	.byte	0x13
	.long	0x6ff
	.byte	0
	.uleb128 0x2
	.ascii "FirmwareVendor\0"
	.word	0x23d
	.byte	0xa
	.long	0xcb4
	.byte	0x18
	.uleb128 0x2
	.ascii "FirmwareVersion\0"
	.word	0x23e
	.byte	0x9
	.long	0x13e
	.byte	0x20
	.uleb128 0x2
	.ascii "ConsoleInHandle\0"
	.word	0x23f
	.byte	0xd
	.long	0x198
	.byte	0x28
	.uleb128 0x2
	.ascii "ConIn\0"
	.word	0x240
	.byte	0x22
	.long	0x26d5
	.byte	0x30
	.uleb128 0x2
	.ascii "ConsoleOutHandle\0"
	.word	0x241
	.byte	0xd
	.long	0x198
	.byte	0x38
	.uleb128 0x2
	.ascii "ConOut\0"
	.word	0x242
	.byte	0x23
	.long	0x26da
	.byte	0x40
	.uleb128 0x2
	.ascii "StandardErrorHandle\0"
	.word	0x243
	.byte	0xd
	.long	0x198
	.byte	0x48
	.uleb128 0x2
	.ascii "StdErr\0"
	.word	0x244
	.byte	0x23
	.long	0x26da
	.byte	0x50
	.uleb128 0x2
	.ascii "RuntimeServices\0"
	.word	0x245
	.byte	0x18
	.long	0x26df
	.byte	0x58
	.uleb128 0x2
	.ascii "BootServices\0"
	.word	0x246
	.byte	0x15
	.long	0x26e4
	.byte	0x60
	.uleb128 0x2
	.ascii "NumberOfTableEntries\0"
	.word	0x247
	.byte	0x8
	.long	0x16a
	.byte	0x68
	.uleb128 0x2
	.ascii "ConfigurationTable\0"
	.word	0x248
	.byte	0x1b
	.long	0x26e9
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.long	0xaf7
	.uleb128 0x3
	.long	0xe05
	.uleb128 0x3
	.long	0x2118
	.uleb128 0x3
	.long	0x1c3b
	.uleb128 0x3
	.long	0x69e
	.uleb128 0x8
	.secrel32	.LASF32
	.word	0x249
	.byte	0x3
	.long	0x25a2
	.uleb128 0x9
	.secrel32	.LASF33
	.byte	0x50
	.word	0x24c
	.long	0x27c0
	.uleb128 0xc
	.secrel32	.LASF8
	.word	0x24e
	.byte	0xc
	.long	0x13e
	.byte	0
	.uleb128 0x2
	.ascii "ParentHandle\0"
	.word	0x24f
	.byte	0x10
	.long	0x198
	.byte	0x8
	.uleb128 0xc
	.secrel32	.LASF34
	.word	0x250
	.byte	0x17
	.long	0x27c0
	.byte	0x10
	.uleb128 0x2
	.ascii "DeviceHandle\0"
	.word	0x251
	.byte	0x10
	.long	0x198
	.byte	0x18
	.uleb128 0x2
	.ascii "FilePath\0"
	.word	0x252
	.byte	0x1f
	.long	0x1277
	.byte	0x20
	.uleb128 0xc
	.secrel32	.LASF10
	.word	0x253
	.byte	0xb
	.long	0x1ab
	.byte	0x28
	.uleb128 0x2
	.ascii "LoadOptionsSize\0"
	.word	0x254
	.byte	0xc
	.long	0x13e
	.byte	0x30
	.uleb128 0x2
	.ascii "LoadOptions\0"
	.word	0x255
	.byte	0xb
	.long	0x1ab
	.byte	0x38
	.uleb128 0x2
	.ascii "ImageBase\0"
	.word	0x256
	.byte	0xb
	.long	0x1ab
	.byte	0x40
	.uleb128 0x2
	.ascii "ImageSize\0"
	.word	0x257
	.byte	0xc
	.long	0x14d
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.long	0x26ee
	.uleb128 0x8
	.secrel32	.LASF33
	.word	0x258
	.byte	0x3
	.long	0x26fa
	.uleb128 0x1d
	.secrel32	.LASF35
	.long	0xd1
	.word	0x25c
	.long	0x285a
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
	.word	0x263
	.byte	0x3
	.long	0x27d1
	.uleb128 0x9
	.secrel32	.LASF36
	.byte	0x4
	.word	0x266
	.long	0x28aa
	.uleb128 0x2
	.ascii "Blue\0"
	.word	0x268
	.byte	0xb
	.long	0x121
	.byte	0
	.uleb128 0x2
	.ascii "Green\0"
	.word	0x269
	.byte	0xb
	.long	0x121
	.byte	0x1
	.uleb128 0x2
	.ascii "Red\0"
	.word	0x26a
	.byte	0xb
	.long	0x121
	.byte	0x2
	.uleb128 0xc
	.secrel32	.LASF10
	.word	0x26b
	.byte	0xb
	.long	0x121
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF36
	.word	0x26c
	.byte	0x3
	.long	0x2866
	.uleb128 0x1d
	.secrel32	.LASF37
	.long	0xd1
	.word	0x26f
	.long	0x2945
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
	.word	0x276
	.byte	0x3
	.long	0x28b6
	.uleb128 0x9
	.secrel32	.LASF38
	.byte	0x10
	.word	0x279
	.long	0x29aa
	.uleb128 0x2
	.ascii "RedMask\0"
	.word	0x27b
	.byte	0xc
	.long	0x13e
	.byte	0
	.uleb128 0x2
	.ascii "GreenMask\0"
	.word	0x27c
	.byte	0xc
	.long	0x13e
	.byte	0x4
	.uleb128 0x2
	.ascii "BlueMask\0"
	.word	0x27d
	.byte	0xc
	.long	0x13e
	.byte	0x8
	.uleb128 0x2
	.ascii "ReservedMask\0"
	.word	0x27e
	.byte	0xc
	.long	0x13e
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF38
	.word	0x27f
	.byte	0x3
	.long	0x2951
	.uleb128 0x9
	.secrel32	.LASF39
	.byte	0x24
	.word	0x282
	.long	0x2a4a
	.uleb128 0x2
	.ascii "Version\0"
	.word	0x284
	.byte	0xc
	.long	0x13e
	.byte	0
	.uleb128 0x2
	.ascii "HorizontalResolution\0"
	.word	0x285
	.byte	0xc
	.long	0x13e
	.byte	0x4
	.uleb128 0x2
	.ascii "VerticalResolution\0"
	.word	0x286
	.byte	0xc
	.long	0x13e
	.byte	0x8
	.uleb128 0x2
	.ascii "PixelFormat\0"
	.word	0x287
	.byte	0x1f
	.long	0x2945
	.byte	0xc
	.uleb128 0x2
	.ascii "PixelInformation\0"
	.word	0x288
	.byte	0x17
	.long	0x29aa
	.byte	0x10
	.uleb128 0xc
	.secrel32	.LASF40
	.word	0x289
	.byte	0xc
	.long	0x13e
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF39
	.word	0x28a
	.byte	0x3
	.long	0x29b6
	.uleb128 0x9
	.secrel32	.LASF41
	.byte	0x28
	.word	0x28d
	.long	0x2ad6
	.uleb128 0x2
	.ascii "MaxMode\0"
	.word	0x28f
	.byte	0xc
	.long	0x13e
	.byte	0
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x290
	.byte	0xc
	.long	0x13e
	.byte	0x4
	.uleb128 0x2
	.ascii "Info\0"
	.word	0x291
	.byte	0x2b
	.long	0x2ad6
	.byte	0x8
	.uleb128 0x2
	.ascii "SizeOfInfo\0"
	.word	0x292
	.byte	0xb
	.long	0x16a
	.byte	0x10
	.uleb128 0x2
	.ascii "FrameBufferBase\0"
	.word	0x293
	.byte	0x1a
	.long	0x1d2
	.byte	0x18
	.uleb128 0x2
	.ascii "FrameBufferSize\0"
	.word	0x294
	.byte	0xb
	.long	0x16a
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	0x2a4a
	.uleb128 0x8
	.secrel32	.LASF41
	.word	0x295
	.byte	0x3
	.long	0x2a56
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_QUERY_MODE\0"
	.word	0x297
	.byte	0x16
	.long	0x2b17
	.uleb128 0x3
	.long	0x2b1c
	.uleb128 0x5
	.long	0x1ad
	.long	0x2b3a
	.uleb128 0x1
	.long	0x2b3a
	.uleb128 0x1
	.long	0x13e
	.uleb128 0x1
	.long	0xd15
	.uleb128 0x1
	.long	0x2b85
	.byte	0
	.uleb128 0x3
	.long	0x2b3f
	.uleb128 0x9
	.secrel32	.LASF42
	.byte	0x20
	.word	0x29c
	.long	0x2b85
	.uleb128 0xc
	.secrel32	.LASF24
	.word	0x29e
	.byte	0x2d
	.long	0x2ae7
	.byte	0
	.uleb128 0x2
	.ascii "SetMode\0"
	.word	0x29f
	.byte	0x2b
	.long	0x2b8a
	.byte	0x8
	.uleb128 0x2
	.ascii "Blt\0"
	.word	0x2a0
	.byte	0x26
	.long	0x2bd1
	.byte	0x10
	.uleb128 0x2
	.ascii "Mode\0"
	.word	0x2a1
	.byte	0x28
	.long	0x2c40
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	0x2ad6
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_SET_MODE\0"
	.word	0x298
	.byte	0x16
	.long	0x2bb8
	.uleb128 0x3
	.long	0x2bbd
	.uleb128 0x5
	.long	0x1ad
	.long	0x2bd1
	.uleb128 0x1
	.long	0x2b3a
	.uleb128 0x1
	.long	0x13e
	.byte	0
	.uleb128 0x4
	.ascii "EFI_GRAPHICS_OUTPUT_PROTOCOL_BLT\0"
	.word	0x299
	.byte	0x16
	.long	0x2bfa
	.uleb128 0x3
	.long	0x2bff
	.uleb128 0x5
	.long	0x1ad
	.long	0x2c3b
	.uleb128 0x1
	.long	0x2b3a
	.uleb128 0x1
	.long	0x2c3b
	.uleb128 0x1
	.long	0x285a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.uleb128 0x1
	.long	0x16a
	.byte	0
	.uleb128 0x3
	.long	0x28aa
	.uleb128 0x3
	.long	0x2adb
	.uleb128 0x8
	.secrel32	.LASF42
	.word	0x2a2
	.byte	0x3
	.long	0x2b3f
	.uleb128 0xf
	.ascii "ImageHandle\0"
	.byte	0x1
	.byte	0x9
	.byte	0xc
	.long	0x198
	.uleb128 0x9
	.byte	0x3
	.quad	ImageHandle
	.uleb128 0x23
	.secrel32	.LASF34
	.byte	0x1
	.byte	0xa
	.byte	0x13
	.long	0x27c0
	.uleb128 0x9
	.byte	0x3
	.quad	SystemTable
	.uleb128 0xf
	.ascii "gop\0"
	.byte	0x1
	.byte	0xb
	.byte	0x1f
	.long	0x2c9b
	.uleb128 0x9
	.byte	0x3
	.quad	gop
	.uleb128 0x3
	.long	0x2c45
	.uleb128 0xf
	.ascii "Volume\0"
	.byte	0x1
	.byte	0xc
	.byte	0x22
	.long	0x2cb9
	.uleb128 0x9
	.byte	0x3
	.quad	Volume
	.uleb128 0x3
	.long	0x2596
	.uleb128 0xf
	.ascii "RootFS\0"
	.byte	0x1
	.byte	0xd
	.byte	0x14
	.long	0x2591
	.uleb128 0x9
	.byte	0x3
	.quad	RootFS
	.uleb128 0xf
	.ascii "OSBuffer_Handle\0"
	.byte	0x1
	.byte	0xe
	.byte	0x7
	.long	0x1ab
	.uleb128 0x9
	.byte	0x3
	.quad	OSBuffer_Handle
	.uleb128 0x14
	.secrel32	.LASF43
	.byte	0x28
	.byte	0x1
	.byte	0x36
	.long	0x2d75
	.uleb128 0x7
	.ascii "MagicNumber\0"
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.long	0x92
	.byte	0
	.uleb128 0x7
	.ascii "BaseAddress\0"
	.byte	0x1
	.byte	0x39
	.byte	0x19
	.long	0x2d75
	.byte	0x8
	.uleb128 0x16
	.secrel32	.LASF29
	.byte	0x1
	.byte	0x3a
	.byte	0x18
	.long	0xe1
	.byte	0x10
	.uleb128 0x7
	.ascii "ScreenWidth\0"
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.long	0xd1
	.byte	0x18
	.uleb128 0x7
	.ascii "ScreenHeight\0"
	.byte	0x1
	.byte	0x3c
	.byte	0x12
	.long	0xd1
	.byte	0x1c
	.uleb128 0x16
	.secrel32	.LASF40
	.byte	0x1
	.byte	0x3d
	.byte	0x12
	.long	0xd1
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	0xe1
	.uleb128 0xe
	.secrel32	.LASF43
	.byte	0x1
	.byte	0x3e
	.long	0x2cf9
	.uleb128 0xf
	.ascii "bi\0"
	.byte	0x1
	.byte	0x40
	.byte	0xb
	.long	0x2d7a
	.uleb128 0x9
	.byte	0x3
	.quad	bi
	.uleb128 0x18
	.ascii "efi_main\0"
	.byte	0x2
	.byte	0x7
	.byte	0xc
	.long	0x1ad
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e81
	.uleb128 0x10
	.ascii "IH\0"
	.byte	0x2
	.byte	0x7
	.byte	0x20
	.long	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.ascii "ST\0"
	.byte	0x2
	.byte	0x7
	.byte	0x36
	.long	0x27c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.ascii "loader\0"
	.byte	0x2
	.byte	0x16
	.byte	0x9
	.long	0x2e81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.ascii "MemoryMapSize\0"
	.byte	0x2
	.byte	0x1a
	.byte	0xb
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.ascii "MemoryMap\0"
	.byte	0x2
	.byte	0x1b
	.byte	0x1c
	.long	0xf09
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.ascii "MapKey\0"
	.byte	0x2
	.byte	0x1c
	.byte	0xb
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.ascii "DescriptorSize\0"
	.byte	0x2
	.byte	0x1d
	.byte	0xb
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.ascii "DescriptorVersion\0"
	.byte	0x2
	.byte	0x1e
	.byte	0xc
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.ascii "KernelBinFile\0"
	.byte	0x2
	.byte	0x26
	.byte	0xc
	.long	0x2e9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.long	0x121
	.uleb128 0x1c
	.long	0x2e96
	.uleb128 0x1
	.long	0x92
	.uleb128 0x1
	.long	0x2e96
	.byte	0
	.uleb128 0x3
	.long	0x2d7a
	.uleb128 0x3
	.long	0x2e86
	.uleb128 0x19
	.ascii "InitializeSystem\0"
	.byte	0xf8
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.ascii "InitializeGOP\0"
	.byte	0xea
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.ascii "WriteToFile\0"
	.byte	0xdb
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f58
	.uleb128 0x10
	.ascii "buf\0"
	.byte	0x1
	.byte	0xdb
	.byte	0x18
	.long	0x2f58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.secrel32	.LASF44
	.byte	0xdb
	.byte	0x25
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.ascii "fileSize\0"
	.byte	0x1
	.byte	0xdd
	.byte	0x9
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.ascii "writefilehandle\0"
	.byte	0x1
	.byte	0xde
	.byte	0x15
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.long	0x2f5d
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x24
	.long	0x2f5d
	.uleb128 0x11
	.ascii "deleteFile\0"
	.byte	0xd0
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2faa
	.uleb128 0x13
	.secrel32	.LASF44
	.byte	0xd0
	.byte	0x19
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.secrel32	.LASF45
	.byte	0xd2
	.byte	0x15
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.ascii "makeDir\0"
	.byte	0xc4
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fec
	.uleb128 0x10
	.ascii "dirName\0"
	.byte	0x1
	.byte	0xc4
	.byte	0x16
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.secrel32	.LASF45
	.byte	0xc6
	.byte	0x18
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.ascii "removeDir\0"
	.byte	0xb7
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3030
	.uleb128 0x10
	.ascii "dirName\0"
	.byte	0x1
	.byte	0xb7
	.byte	0x18
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.secrel32	.LASF45
	.byte	0xb9
	.byte	0x15
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.ascii "readFile\0"
	.byte	0x9f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3094
	.uleb128 0x13
	.secrel32	.LASF44
	.byte	0x9f
	.byte	0x17
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.secrel32	.LASF45
	.byte	0xa3
	.byte	0x18
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xd
	.ascii "FileSize\0"
	.byte	0x1
	.byte	0xa6
	.byte	0xb
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x18
	.ascii "GetFileSize\0"
	.byte	0x1
	.byte	0x96
	.byte	0x8
	.long	0xd15
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x30dd
	.uleb128 0x13
	.secrel32	.LASF44
	.byte	0x96
	.byte	0x28
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.ascii "Size\0"
	.byte	0x1
	.byte	0x98
	.byte	0xc
	.long	0xd15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.ascii "createFile\0"
	.byte	0x1
	.byte	0x8a
	.byte	0x14
	.long	0x2591
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3123
	.uleb128 0x13
	.secrel32	.LASF44
	.byte	0x8a
	.byte	0x27
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.secrel32	.LASF45
	.byte	0x8c
	.byte	0x18
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.ascii "closeDir\0"
	.byte	0x81
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3153
	.uleb128 0x13
	.secrel32	.LASF45
	.byte	0x81
	.byte	0x22
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.ascii "closeFile\0"
	.byte	0x78
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3184
	.uleb128 0x13
	.secrel32	.LASF45
	.byte	0x78
	.byte	0x23
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.ascii "getDir\0"
	.byte	0x1
	.byte	0x6c
	.byte	0x14
	.long	0x2591
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x31cb
	.uleb128 0x10
	.ascii "DirName\0"
	.byte	0x1
	.byte	0x6c
	.byte	0x23
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.secrel32	.LASF45
	.byte	0x6e
	.byte	0x18
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.ascii "getFile\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x14
	.long	0x2591
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x320e
	.uleb128 0x13
	.secrel32	.LASF44
	.byte	0x5d
	.byte	0x24
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.secrel32	.LASF45
	.byte	0x62
	.byte	0x18
	.long	0x2591
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.ascii "InitializeFILESYSTEM\0"
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x326b
	.uleb128 0xd
	.ascii "LoadedImage\0"
	.byte	0x1
	.byte	0x45
	.byte	0x20
	.long	0x326b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.ascii "DevicePath\0"
	.byte	0x1
	.byte	0x46
	.byte	0x1c
	.long	0x1277
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.long	0x27c5
	.uleb128 0x11
	.ascii "Print\0"
	.byte	0x30
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x329e
	.uleb128 0x10
	.ascii "str\0"
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.long	0xcb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.ascii "SetColor\0"
	.byte	0x2a
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x32ce
	.uleb128 0x13
	.secrel32	.LASF14
	.byte	0x2a
	.byte	0x15
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF25
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.ascii "ResetScreen\0"
	.byte	0x1e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.ascii "SetTextPosition\0"
	.byte	0x18
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x334f
	.uleb128 0x10
	.ascii "Col\0"
	.byte	0x1
	.byte	0x18
	.byte	0x1d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.ascii "Row\0"
	.byte	0x1
	.byte	0x18
	.byte	0x29
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x28
	.ascii "strlen\0"
	.byte	0x1
	.byte	0x10
	.byte	0x14
	.long	0xe1
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3398
	.uleb128 0x10
	.ascii "str\0"
	.byte	0x1
	.byte	0x10
	.byte	0x27
	.long	0x3398
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.ascii "strCount\0"
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.long	0x3398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.long	0x2f65
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.ascii "E:\\\\wf\\\\src\\\\uefi\\\\UEFI-Tuts\\\\src\\\\tutorial 24\0"
.LASF0:
	.ascii "efimain.c\0"
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.1.0"
