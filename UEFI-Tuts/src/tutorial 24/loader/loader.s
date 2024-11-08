	.file	"loader.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "E://wf//src//uefi//UEFI-Tuts//src//tutorial 24" "loader/loader.c"
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB0:
	.file 1 "loader/loader.c"
	.loc 1 38 1
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
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 38 1
	call	__main
	.loc 1 39 13
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 41 13
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 41 4
	cmpl	$31337, %eax
	jne	.L2
.LBB2:
	.loc 1 43 41
	movl	$-23296, %ecx
	call	SetGraphicsColor
	movq	%rax, -24(%rbp)
	.loc 1 44 3
	movq	-8(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$150, %r9d
	movl	$150, %r8d
	movl	$1, %edx
	movl	$1, %ecx
	call	CreateBufferFilledBox
.LBE2:
	jmp	.L4
.L2:
.LBB3:
	.loc 1 46 41
	movl	$-16711936, %ecx
	call	SetGraphicsColor
	movq	%rax, -16(%rbp)
	.loc 1 47 3
	movq	-8(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$150, %r9d
	movl	$150, %r8d
	movl	$1, %edx
	movl	$1, %ecx
	call	CreateBufferFilledBox
.L4:
.LBE3:
	.loc 1 50 11 discriminator 1
/APP
 # 50 "loader/loader.c" 1
	hlt
 # 0 "" 2
/NO_APP
	jmp	.L4
	.cfi_endproc
.LFE0:
	.seh_endproc
	.globl	SetGraphicsColor
	.def	SetGraphicsColor;	.scl	2;	.type	32;	.endef
	.seh_proc	SetGraphicsColor
SetGraphicsColor:
.LFB1:
	.loc 1 54 1
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
	.loc 1 55 27
	movq	$0, -8(%rbp)
	.loc 1 56 27
	movl	16(%rbp), %eax
	shrl	$24, %eax
	.loc 1 56 19
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 3(%rax)
	.loc 1 57 25
	movl	16(%rbp), %eax
	shrl	$16, %eax
	.loc 1 57 17
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 2(%rax)
	.loc 1 58 27
	movl	16(%rbp), %eax
	shrl	$8, %eax
	.loc 1 58 19
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 1(%rax)
	.loc 1 59 18
	movl	16(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 60 12
	movq	-8(%rbp), %rax
	.loc 1 61 1
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.seh_endproc
	.globl	CreateBufferFilledBox
	.def	CreateBufferFilledBox;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBufferFilledBox
CreateBufferFilledBox:
.LFB2:
	.loc 1 64 1
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
	.loc 1 66 14
	movl	24(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 1 67 14
	movl	16(%rbp), %edx
	movl	32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	.loc 1 68 14
	movl	24(%rbp), %edx
	movl	40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 1 70 11
	movl	24(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 1 70 5
	jmp	.L8
.L11:
	.loc 1 72 15
	movl	16(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 72 9
	jmp	.L9
.L10:
	.loc 1 74 65
	movq	56(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 74 27
	movq	56(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 74 22
	imull	-8(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 74 17
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %eax
	.loc 1 74 48
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 74 83
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 74 81
	movl	%eax, (%rdx)
	.loc 1 72 36 discriminator 3
	addl	$1, -4(%rbp)
.L9:
	.loc 1 72 25 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L10
	.loc 1 70 33 discriminator 2
	addl	$1, -8(%rbp)
.L8:
	.loc 1 70 21 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jnb	.L11
	.loc 1 77 1
	nop
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.seh_endproc
.Letext0:
	.file 2 "loader/stdint.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x3e9
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0xa
	.ascii "GNU C17 14.1.0 -m64 -mabi=ms -mtune=generic -march=nocona -g -ffreestanding\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x5
	.ascii "int32_t\0"
	.byte	0x32
	.byte	0x19
	.long	0xc3
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x5
	.ascii "uint8_t\0"
	.byte	0x35
	.byte	0x17
	.long	0xef
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x5
	.ascii "uint32_t\0"
	.byte	0x37
	.byte	0x1b
	.long	0x126
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.ascii "uint64_t\0"
	.byte	0x38
	.byte	0x1c
	.long	0x14b
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x7
	.secrel32	.LASF2
	.byte	0x4
	.byte	0x10
	.long	0x1a6
	.uleb128 0x2
	.ascii "Blue\0"
	.byte	0x12
	.byte	0xd
	.long	0xe0
	.byte	0
	.uleb128 0x2
	.ascii "Green\0"
	.byte	0x13
	.byte	0xd
	.long	0xe0
	.byte	0x1
	.uleb128 0x2
	.ascii "Red\0"
	.byte	0x14
	.byte	0xd
	.long	0xe0
	.byte	0x2
	.uleb128 0x2
	.ascii "Alpha\0"
	.byte	0x15
	.byte	0xd
	.long	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.secrel32	.LASF2
	.byte	0x16
	.long	0x165
	.uleb128 0x7
	.secrel32	.LASF3
	.byte	0x28
	.byte	0x18
	.long	0x23a
	.uleb128 0x2
	.ascii "MagicNumber\0"
	.byte	0x1a
	.byte	0xa
	.long	0xb4
	.byte	0
	.uleb128 0x2
	.ascii "BaseAddress\0"
	.byte	0x1b
	.byte	0xf
	.long	0x23a
	.byte	0x8
	.uleb128 0x2
	.ascii "BufferSize\0"
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x10
	.uleb128 0x2
	.ascii "ScreenWidth\0"
	.byte	0x1d
	.byte	0xe
	.long	0x116
	.byte	0x18
	.uleb128 0x2
	.ascii "ScreenHeight\0"
	.byte	0x1e
	.byte	0xe
	.long	0x116
	.byte	0x1c
	.uleb128 0x2
	.ascii "PixelsPerScanLine\0"
	.byte	0x1f
	.byte	0xe
	.long	0x116
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	0x13b
	.uleb128 0x8
	.secrel32	.LASF3
	.byte	0x20
	.long	0x1b0
	.uleb128 0xb
	.ascii "CreateBufferFilledBox\0"
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x304
	.uleb128 0x3
	.ascii "xPos\0"
	.byte	0x3f
	.byte	0x25
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.ascii "yPos\0"
	.byte	0x3f
	.byte	0x34
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.ascii "w\0"
	.byte	0x3f
	.byte	0x43
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3
	.ascii "h\0"
	.byte	0x3f
	.byte	0x4f
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3
	.ascii "gc\0"
	.byte	0x3f
	.byte	0x68
	.long	0x304
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x3
	.ascii "bli\0"
	.byte	0x3f
	.byte	0x77
	.long	0x309
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x4
	.ascii "x\0"
	.byte	0x41
	.byte	0xe
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.ascii "y\0"
	.byte	0x42
	.byte	0xe
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.ascii "width\0"
	.byte	0x43
	.byte	0xe
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.ascii "height\0"
	.byte	0x44
	.byte	0xe
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	0x1a6
	.uleb128 0x6
	.long	0x23f
	.uleb128 0xc
	.ascii "SetGraphicsColor\0"
	.byte	0x1
	.byte	0x35
	.byte	0x17
	.long	0x304
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x35f
	.uleb128 0x3
	.ascii "color\0"
	.byte	0x35
	.byte	0x31
	.long	0x116
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.ascii "GColor\0"
	.byte	0x37
	.byte	0x1b
	.long	0x304
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.ascii "main\0"
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.ascii "argc\0"
	.byte	0x25
	.byte	0x13
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.ascii "bi\0"
	.byte	0x25
	.byte	0x24
	.long	0x309
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x4
	.ascii "biStruct\0"
	.byte	0x27
	.byte	0xd
	.long	0x309
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x3cc
	.uleb128 0x9
	.secrel32	.LASF4
	.byte	0x2b
	.long	0x304
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xf
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x9
	.secrel32	.LASF4
	.byte	0x2e
	.long	0x304
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
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
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.sleb128 25
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF2:
	.ascii "GRAPHICS_COLOR_PIXEL\0"
.LASF3:
	.ascii "BLOCKINFO\0"
.LASF4:
	.ascii "GraphicsColor\0"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "E:\\\\wf\\\\src\\\\uefi\\\\UEFI-Tuts\\\\src\\\\tutorial 24\0"
.LASF0:
	.ascii "loader/loader.c\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.1.0"
