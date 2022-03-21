	.text
	.file	"bfs.cu"
	.globl	_Z6KernelP4NodePiPbS2_S2_S1_i # -- Begin function _Z6KernelP4NodePiPbS2_S2_S1_i
	.p2align	4, 0x90
	.type	_Z6KernelP4NodePiPbS2_S2_S1_i,@function
_Z6KernelP4NodePiPbS2_S2_S1_i:          # @_Z6KernelP4NodePiPbS2_S2_S1_i
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset %rbx, -24
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	leaq	-24(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	leaq	-32(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	leaq	-40(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	__cudaPopCallConfiguration
	movabsq	$_Z6KernelP4NodePiPbS2_S2_S1_i, %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%rdi, -120(%rbp)
	movl	-64(%rbp), %r10d
	movl	%r10d, -112(%rbp)
	movq	-120(%rbp), %rdi
	movl	-112(%rbp), %r10d
	movq	-88(%rbp), %r8
	movq	%r8, -136(%rbp)
	movl	-80(%rbp), %r11d
	movl	%r11d, -128(%rbp)
	movq	-136(%rbp), %r8
	movl	-128(%rbp), %r11d
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%r10d, %edx
	movq	%r8, %rcx
	movl	%r11d, %r8d
	leaq	-192(%rbp), %r9
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-216(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z6KernelP4NodePiPbS2_S2_S1_i, .Lfunc_end0-_Z6KernelP4NodePiPbS2_S2_S1_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z7Kernel2PbS_S_S_i     # -- Begin function _Z7Kernel2PbS_S_S_i
	.p2align	4, 0x90
	.type	_Z7Kernel2PbS_S_S_i,@function
_Z7Kernel2PbS_S_S_i:                    # @_Z7Kernel2PbS_S_S_i
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	callq	__cudaPopCallConfiguration
	movabsq	$_Z7Kernel2PbS_S_S_i, %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)
	movl	-40(%rbp), %r8d
	movl	%r8d, -88(%rbp)
	movq	-96(%rbp), %rdi
	movl	-88(%rbp), %r8d
	movq	-64(%rbp), %r9
	movq	%r9, -112(%rbp)
	movl	-56(%rbp), %r10d
	movl	%r10d, -104(%rbp)
	movq	-112(%rbp), %r9
	movl	-104(%rbp), %r10d
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%r9, %rcx
	movl	%r10d, %r8d
	leaq	-160(%rbp), %r9
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z7Kernel2PbS_S_S_i, .Lfunc_end1-_Z7Kernel2PbS_S_S_i
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, no_of_nodes
	movl	$0, edge_list_size
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_Z8BFSGraphiPPc
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z8BFSGraphiPPc
.LCPI3_0:
	.quad	4647714815446351872     # double 512
	.text
	.globl	_Z8BFSGraphiPPc
	.p2align	4, 0x90
	.type	_Z8BFSGraphiPPc,@function
_Z8BFSGraphiPPc:                        # @_Z8BFSGraphiPPc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$688, %rsp              # imm = 0x2B0
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$2, -4(%rbp)
	je	.LBB3_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_Z5UsageiPPc
	xorl	%edi, %edi
	callq	exit
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	movabsq	$.L.str.2, %rsi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	callq	fopen
	movq	%rax, fp
	cmpq	$0, fp
	jne	.LBB3_4
# %bb.3:                                # %if.then2
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB3_28
.LBB3_4:                                # %if.end4
	movl	$0, -28(%rbp)
	movq	fp, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$no_of_nodes, %rdx
	movb	$0, %al
	callq	fscanf
	movl	$1, -32(%rbp)
	movl	no_of_nodes, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$512, no_of_nodes       # imm = 0x200
	jle	.LBB3_6
# %bb.5:                                # %if.then7
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	no_of_nodes, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	$512, -36(%rbp)         # imm = 0x200
.LBB3_6:                                # %if.end9
	movslq	no_of_nodes, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -48(%rbp)
	movslq	no_of_nodes, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -56(%rbp)
	movslq	no_of_nodes, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -64(%rbp)
	movslq	no_of_nodes, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB3_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	no_of_nodes, %eax
	jae	.LBB3_10
# %bb.8:                                # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	fp, %rdi
	movabsq	$.L.str.5, %rsi
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movb	$0, %al
	callq	fscanf
	movl	-76(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movl	-84(%rbp), %r9d
	movl	%r9d, %edx
	movl	%r8d, (%rcx,%rdx,8)
	movl	-80(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movl	-84(%rbp), %r9d
	movl	%r9d, %edx
	movl	%r8d, 4(%rcx,%rdx,8)
	movq	-56(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	%r8d, %edx
	movb	$0, (%rcx,%rdx)
	movq	-64(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	%r8d, %edx
	movb	$0, (%rcx,%rdx)
	movq	-72(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	%r8d, %edx
	movb	$0, (%rcx,%rdx)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_7
.LBB3_10:                               # %for.end
	movq	fp, %rdi
	movabsq	$.L.str.4, %rsi
	leaq	-28(%rbp), %rdx
	movb	$0, %al
	callq	fscanf
	movl	$0, -28(%rbp)
	movq	-56(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movb	$1, (%rcx,%rdx)
	movq	-72(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movb	$1, (%rcx,%rdx)
	movq	fp, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$edge_list_size, %rdx
	movl	%eax, -484(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fscanf
	movslq	edge_list_size, %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	movl	%eax, -488(%rbp)        # 4-byte Spill
	callq	malloc
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB3_11:                               # %for.cond42
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	edge_list_size, %eax
	jge	.LBB3_14
# %bb.12:                               # %for.body44
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	fp, %rdi
	movabsq	$.L.str.4, %rsi
	leaq	-88(%rbp), %rdx
	movb	$0, %al
	callq	fscanf
	movq	fp, %rdi
	movabsq	$.L.str.4, %rsi
	leaq	-92(%rbp), %rdx
	movl	%eax, -492(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fscanf
	movl	-88(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movslq	-108(%rbp), %rsi
	movl	%ecx, (%rdx,%rsi,4)
# %bb.13:                               # %for.inc49
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_11
.LBB3_14:                               # %for.end51
	cmpq	$0, fp
	je	.LBB3_16
# %bb.15:                               # %if.then53
	movq	fp, %rdi
	callq	fclose
.LBB3_16:                               # %if.end55
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
	leaq	-120(%rbp), %rcx
	movslq	no_of_nodes, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	%eax, -496(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movslq	no_of_nodes, %rsi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -508(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	leaq	-128(%rbp), %rdx
	movslq	edge_list_size, %rsi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	movl	%eax, -512(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movslq	edge_list_size, %rdi
	shlq	$2, %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -524(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movslq	no_of_nodes, %rdx
	shlq	$0, %rdx
	leaq	-136(%rbp), %rdi
	movq	%rdx, %rsi
	movl	%eax, -528(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-136(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movslq	no_of_nodes, %rdx
	shlq	$0, %rdx
	movl	$1, %ecx
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movslq	no_of_nodes, %rdx
	shlq	$0, %rdx
	leaq	-144(%rbp), %rdi
	movq	%rdx, %rsi
	movl	%eax, -536(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-144(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movslq	no_of_nodes, %rdx
	shlq	$0, %rdx
	movl	$1, %ecx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movslq	no_of_nodes, %rdx
	shlq	$0, %rdx
	leaq	-152(%rbp), %rdi
	movq	%rdx, %rsi
	movl	%eax, -544(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-152(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movslq	no_of_nodes, %rdx
	shlq	$0, %rdx
	movl	$1, %ecx
	movl	%eax, -548(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movslq	no_of_nodes, %rdx
	shlq	$2, %rdx
	movq	%rdx, %rdi
	movl	%eax, -552(%rbp)        # 4-byte Spill
	callq	malloc
	movq	%rax, -160(%rbp)
	movl	$0, -164(%rbp)
.LBB3_17:                               # %for.cond91
                                        # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	cmpl	no_of_nodes, %eax
	jge	.LBB3_20
# %bb.18:                               # %for.body93
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	-160(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movl	$-1, (%rax,%rcx,4)
# %bb.19:                               # %for.inc96
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB3_17
.LBB3_20:                               # %for.end98
	movq	-160(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	leaq	-176(%rbp), %rax
	movslq	no_of_nodes, %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	cudaMalloc
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movslq	no_of_nodes, %rsi
	shlq	$2, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	leaq	-184(%rbp), %rdi
	movl	$1, %esi
	movl	%eax, -568(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movabsq	$.L.str.7, %rdi
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-32(%rbp), %esi
	leaq	-200(%rbp), %rdi
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	%eax, -576(%rbp)        # 4-byte Spill
	callq	_ZN4dim3C2Ejjj
	movl	-36(%rbp), %esi
	leaq	-216(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	_ZN4dim3C2Ejjj
	movl	$0, -220(%rbp)
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	printf
.LBB3_21:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, -221(%rbp)
	movq	-184(%rbp), %rdi
	leaq	-221(%rbp), %rsi
	movl	$1, %edx
	movl	$1, %ecx
	callq	cudaMemcpy
	movabsq	$_Z6KernelP4NodePiPbS2_S2_S1_i, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-288(%rbp), %r9
	movabsq	$no_of_nodes, %rdi
	leaq	-120(%rbp), %r8
	movq	%r8, -288(%rbp)
	leaq	-128(%rbp), %r8
	movq	%r8, -280(%rbp)
	leaq	-136(%rbp), %r8
	movq	%r8, -272(%rbp)
	leaq	-144(%rbp), %r8
	movq	%r8, -264(%rbp)
	leaq	-152(%rbp), %r8
	movq	%r8, -256(%rbp)
	leaq	-176(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	%rdi, -240(%rbp)
	movq	-200(%rbp), %rdi
	movq	%rdi, -304(%rbp)
	movl	-192(%rbp), %ecx
	movl	%ecx, -296(%rbp)
	movq	-216(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movl	-208(%rbp), %ecx
	movl	%ecx, -312(%rbp)
	movq	-304(%rbp), %rdi
	movq	%rdi, -336(%rbp)
	movl	-296(%rbp), %ecx
	movl	%ecx, -328(%rbp)
	movq	-336(%rbp), %rdi
	movl	-328(%rbp), %ecx
	movq	-320(%rbp), %r8
	movq	%r8, -352(%rbp)
	movl	-312(%rbp), %r10d
	movl	%r10d, -344(%rbp)
	movq	-352(%rbp), %r8
	movl	-344(%rbp), %r10d
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-584(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	%r8, %rcx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	%eax, -596(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
	movabsq	$_Z7Kernel2PbS_S_S_i, %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-288(%rbp), %r9
	movabsq	$no_of_nodes, %rdi
	leaq	-136(%rbp), %r11
	movq	%r11, -400(%rbp)
	leaq	-144(%rbp), %r11
	movq	%r11, -392(%rbp)
	leaq	-152(%rbp), %r11
	movq	%r11, -384(%rbp)
	leaq	-184(%rbp), %r11
	movq	%r11, -376(%rbp)
	movq	%rdi, -368(%rbp)
	movq	-200(%rbp), %rdi
	movq	%rdi, -416(%rbp)
	movl	-192(%rbp), %edx
	movl	%edx, -408(%rbp)
	movq	-216(%rbp), %rdi
	movq	%rdi, -432(%rbp)
	movl	-208(%rbp), %edx
	movl	%edx, -424(%rbp)
	movq	-416(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movl	-408(%rbp), %edx
	movl	%edx, -440(%rbp)
	movq	-448(%rbp), %rdi
	movl	-440(%rbp), %edx
	movq	-432(%rbp), %r11
	movq	%r11, -464(%rbp)
	movl	-424(%rbp), %r8d
	movl	%r8d, -456(%rbp)
	movq	-464(%rbp), %r11
	movl	-456(%rbp), %r8d
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r11, %rcx
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	%eax, -620(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
	movq	-184(%rbp), %rsi
	leaq	-221(%rbp), %rdi
	movl	$1, %edx
	movl	$2, %ecx
	movl	%eax, -624(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movl	-220(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -220(%rbp)
# %bb.22:                               # %do.cond
                                        #   in Loop: Header=BB3_21 Depth=1
	testb	$1, -221(%rbp)
	jne	.LBB3_21
# %bb.23:                               # %do.end
	movl	-220(%rbp), %esi
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	printf
	movq	-160(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movslq	no_of_nodes, %rdi
	shlq	$2, %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-632(%rbp), %rdx        # 8-byte Reload
	movl	$2, %ecx
	movl	%eax, -636(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	%eax, -640(%rbp)        # 4-byte Spill
	callq	fopen
	movq	%rax, -472(%rbp)
	movl	$0, -476(%rbp)
.LBB3_24:                               # %for.cond136
                                        # =>This Inner Loop Header: Depth=1
	movl	-476(%rbp), %eax
	cmpl	no_of_nodes, %eax
	jge	.LBB3_27
# %bb.25:                               # %for.body138
                                        #   in Loop: Header=BB3_24 Depth=1
	movq	-472(%rbp), %rdi
	movl	-476(%rbp), %edx
	movq	-160(%rbp), %rax
	movslq	-476(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movabsq	$.L.str.12, %rsi
	movb	$0, %al
	callq	fprintf
# %bb.26:                               # %for.inc142
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	-476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -476(%rbp)
	jmp	.LBB3_24
.LBB3_27:                               # %for.end144
	movq	-472(%rbp), %rdi
	callq	fclose
	movabsq	$.L.str.13, %rdi
	movl	%eax, -644(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -648(%rbp)        # 4-byte Spill
	callq	free
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
	movq	-56(%rbp), %rdi
	callq	free
	movq	-64(%rbp), %rdi
	callq	free
	movq	-72(%rbp), %rdi
	callq	free
	movq	-160(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
	movq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	callq	cudaFree
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -652(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-136(%rbp), %rdi
	movl	%eax, -656(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-144(%rbp), %rdi
	movl	%eax, -660(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-152(%rbp), %rdi
	movl	%eax, -664(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-176(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -668(%rbp)        # 4-byte Spill
	callq	cudaFree
.LBB3_28:                               # %return
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_Z8BFSGraphiPPc, .Lfunc_end3-_Z8BFSGraphiPPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z5UsageiPPc            # -- Begin function _Z5UsageiPPc
	.p2align	4, 0x90
	.type	_Z5UsageiPPc,@function
_Z5UsageiPPc:                           # @_Z5UsageiPPc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_Z5UsageiPPc, .Lfunc_end4-_Z5UsageiPPc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4dim3C2Ejjj,"axG",@progbits,_ZN4dim3C2Ejjj,comdat
	.weak	_ZN4dim3C2Ejjj          # -- Begin function _ZN4dim3C2Ejjj
	.p2align	4, 0x90
	.type	_ZN4dim3C2Ejjj,@function
_ZN4dim3C2Ejjj:                         # @_ZN4dim3C2Ejjj
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movl	%ecx, 4(%rax)
	movl	-20(%rbp), %ecx
	movl	%ecx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZN4dim3C2Ejjj, .Lfunc_end5-_ZN4dim3C2Ejjj
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function __cuda_register_globals
	.type	__cuda_register_globals,@function
__cuda_register_globals:                # @__cuda_register_globals
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movabsq	$_Z6KernelP4NodePiPbS2_S2_S1_i, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	movabsq	$.L__unnamed_1, %rax
	movq	%rax, %rdx
	movq	%rax, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	__cudaRegisterFunction
	movabsq	$_Z7Kernel2PbS_S_S_i, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rsi
	movabsq	$.L__unnamed_2, %rcx
	movq	%rcx, %rdx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, 44(%rsp)          # 4-byte Spill
	callq	__cudaRegisterFunction
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	__cuda_register_globals, .Lfunc_end6-__cuda_register_globals
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cuda_module_ctor
	.type	__cuda_module_ctor,@function
__cuda_module_ctor:                     # @__cuda_module_ctor
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movabsq	$__cuda_fatbin_wrapper, %rax
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	callq	__cudaRegisterFatBinary
	movq	%rax, __cuda_gpubin_handle
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	__cuda_register_globals
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	__cudaRegisterFatBinaryEnd
	movabsq	$__cuda_module_dtor, %rdi
	callq	atexit
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	__cuda_module_ctor, .Lfunc_end7-__cuda_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cuda_module_dtor
	.type	__cuda_module_dtor,@function
__cuda_module_dtor:                     # @__cuda_module_dtor
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__cuda_gpubin_handle, %rax
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	%rax, %rdi
	callq	__cudaUnregisterFatBinary
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	__cuda_module_dtor, .Lfunc_end8-__cuda_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	no_of_nodes,@object     # @no_of_nodes
	.bss
	.globl	no_of_nodes
	.p2align	2
no_of_nodes:
	.long	0                       # 0x0
	.size	no_of_nodes, 4

	.type	edge_list_size,@object  # @edge_list_size
	.globl	edge_list_size
	.p2align	2
edge_list_size:
	.long	0                       # 0x0
	.size	edge_list_size, 4

	.type	fp,@object              # @fp
	.globl	fp
	.p2align	3
fp:
	.quad	0
	.size	fp, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: %s <input_file>\n"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Reading File\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"r"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Error Reading graph file\n"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d %d"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Read File\n"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Copied Everything to GPU memory\n"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Start traversing the tree\n"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Kernel Executed %d times\n"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"result.txt"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"w"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%d) cost:%d\n"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Result stored in result.txt\n"
	.size	.L.str.13, 29

	.type	.L__unnamed_1,@object   # @0
.L__unnamed_1:
	.asciz	"_Z6KernelP4NodePiPbS2_S2_S1_i"
	.size	.L__unnamed_1, 30

	.type	.L__unnamed_2,@object   # @1
.L__unnamed_2:
	.asciz	"_Z7Kernel2PbS_S_S_i"
	.size	.L__unnamed_2, 20

	.type	.L__unnamed_3,@object   # @2
	.section	.nv_fatbin,"a",@progbits
	.p2align	3
.L__unnamed_3:
	.asciz	"P\355U\272\001\000\020\000\320;\000\000\000\000\000\000\002\000\001\001@\000\000\000H2\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\001\000=\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\0013\007\000\000\000\000\000\000\000\002\000\276\000e\000\000\000\000\000\000\000\000\000\000\000\2401\000\000\000\000\000\000\240.\000\000\000\000\000\000=\005=\000@\0008\000\003\000@\000\f\000\001\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000.text._Z7Kernel2PbS_S_S_i\000.nv.info._Z7Kernel2PbS_S_S_i\000.nv.shared._Z7Kernel2PbS_S_S_i\000.nv.global\000.nv.constant0._Z7Kernel2PbS_S_S_i\000.text._Z6KernelP4NodePiPbS2_S2_S1_i\000.nv.info._Z6KernelP4NodePiPbS2_S2_S1_i\000.nv.shared._Z6KernelP4NodePiPbS2_S2_S1_i\000.nv.constant0._Z6KernelP4NodePiPbS2_S2_S1_i\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000_Z7Kernel2PbS_S_S_i\000.text._Z7Kernel2PbS_S_S_i\000.nv.info._Z7Kernel2PbS_S_S_i\000.nv.shared._Z7Kernel2PbS_S_S_i\000.nv.global\000blockIdx\000threadIdx\000.nv.constant0._Z7Kernel2PbS_S_S_i\000_param\000_Z6KernelP4NodePiPbS2_S2_S1_i\000.text._Z6KernelP4NodePiPbS2_S2_S1_i\000.nv.info._Z6KernelP4NodePiPbS2_S2_S1_i\000.nv.shared._Z6KernelP4NodePiPbS2_S2_S1_i\000.nv.constant0._Z6KernelP4NodePiPbS2_S2_S1_i\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000F\000\000\000\003\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\234\000\000\000\003\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\247\000\000\000\001\000\013\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\260\000\000\000\001\000\013\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\272\000\000\000\003\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\000\003\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000u\001\000\000\003\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\022\020\t\000\000\000\000\000\000\000\000\000\200\r\000\000\000\000\000\000\343\000\000\000\022\020\n\000\000\000\000\000\000\000\000\000\200\030\000\000\000\000\000\000\004/\b\000\t\000\000\000\023\000\000\000\004#\b\000\t\000\000\000\000\000\000\000\004\022\b\000\t\000\000\000@\000\000\000\004\021\b\000\t\000\000\000@\000\000\000\004/\b\000\b\000\000\000\017\000\000\000\004#\b\000\b\000\000\000\000\000\000\000\004\022\b\000\b\000\000\000(\000\000\000\004\021\b\000\b\000\000\000(\000\000\000\0010\000\000\001*\000\000\004\n\b\000\005\000\000\000@\001$\000\003\031$\000\004\027\f\000\000\000\000\000\004\000 \000\000\360\021\000\004\027\f\000\000\000\000\000\003\000\030\000\000\360!\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\003\033\377\000\004\035\004\000\310\004\000\000\004\034\004\000H\r\000\000\004\036\004\0000\000\000\000\0010\000\000\001*\000\000\004\n\b\000\007\000\000\000@\0014\000\003\0314\000\004\027\f\000\000\000\000\000\006\0000\000\000\360\021\000\004\027\f\000\000\000\000\000\005\000(\000\000\360!\000\004\027\f\000\000\000\000\000\004\000 \000\000\360!\000\004\027\f\000\000\000\000\000\003\000\030\000\000\360!\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\003\033\377\000\004\035\004\000\250\006\000\000\004\034\004\0008\030\000\000\004\036\004\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\357\037\340\375\003<d\000\001\000\207\000\200\007\230L\001\001\207\375\377\377\017\034\000\000w\003\000\000\310\360\357\037\340\375\003\274\177\000\007\001\007\000\200\003l[\017\000\200\000\000\000@\342\300\000\020\000\000\000\240\343\357\037\340!\003\274\177\000\000\001\367\017\000\000\020\\\000\n\007\000\000\000\340\\\002\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\000\000'\000\200\007\230\\\004\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\007\000\200\007\230\\\004\000G\000\200\007\230\\\002\000\027\000\200\007\230L\357\037\340\375\003\274\177\000\000\000\027\004\200\007\230L\002\003'\000\000\200\020\\\000\004\007\000\000\b\020\\\357\037\340!\003\274\177\000\003\360\007\026\000\000\000\001\003\003\007\000\000\000\224\357\003\0007\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\207\025\000\000\000\001\004\004\007\000\000\000\225\357\f\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000W\000\200\007\230\\\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\007\025\000\000\000\001\004\004\007\000\000\000\225\357\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000W\000\200\007\230\\\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\207\024\000\000\000\001\004\004\007\000\000\000\225\357\b\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000W\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\007\024\000\000\000\001\004\004\007\000\000\000\225\357\n\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000W\000\200\007\230\\\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000\307\000\200\007\230\\\005\000\327\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\r\002\367\017\000\200\020\\\016\000\367\017\000\b\020\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\016\000\347\000\200\007\230\\\f\r\367\017\000\200\327[\r\r\367\017@\007\330[\357\037\340\375\003\274g\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\n\f\007\000\000\000\260\240\357\037\340\375\003\274\177\000\013\002\207\000\000\000\020\034\f\000\367\017\000\b\020\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000\307\000\200\007\230\\\n\013\367\017\000\200\327[\013\013\367\017@\006\330[\357\037\340\375\003\274g\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\b\n\007\000\000\000\260\240\357\037\340\375\003\274\177\000\t\002\007\001\000\000\020\034\n\000\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017@\005\330[\357\037\340\375\003\274g\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\006\b\007\000\000\000\260\240\357\037\340\375\003\274\177\000\007\002\207\001\000\000\020\034\b\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017@\004\330[\357\037\340\375\003\274g\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\004\006\007\000\000\000\260\240\357\037\340\375\003\274\177\000\005\002\007\002\000\000\020\034\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\017\031\340\375\003\274\177\000\003\000W\002\000\000\310\360\003\0007\000\200\007\230\\\003\003\227\000\000\000H8\017\031\340\375\003\274\177\000\004\000\027\002\000\000\310\360\004\000G\000\200\007\230\\\003\003G\000\000\000\020\\\357\037\340\375\003\274\177\000\005\002G\002\000\000\020\034\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\002G\002\000\000\020\034\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\005\002\007\002\000\000\020\034\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\003G\000\200\003m[\002\000'\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\000o\000\000@\342\017\000\007\000\000\000@\342\005\002\207\000\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000W\000\200\007\230\\\005\002G\002\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\003\004\367\001\000\000)8\357\037\340\375\003\274\177\000\005\000G\000\200\007\230\\\003\0007\000\200\007\230\\\005\006W\000\000\200\020\\\357\037\340\375\003\274\177\000\003\0077\000\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\020\200\004\001G\000\000\000\340\\\357\037\340!\003<d\000\004\004\027\000\000\000\000\004\003\006\027\000\000\000\3408\004\006G\000\000\000\340\\\357\037\340\375\003\274\177\000\007\0047\000\200\003d[\007\200\007\340\200\003\220P\017\000\000T\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\005\002\367\017\000\200\020\\\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\007\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\002G\002\000\000\020\034\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\003\004\367\001\000\000)8\005\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\006W\000\000\200\020\\\006\0077\000\000\b\020\\\357\037\340\375\003\274\177\000\003\360\027\000\000\000\000\001\003\003\027\000\220\001$6\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\003\003\027\000\220\001$6\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340\375\003\274\177\000\003\004\007\000\000\000\020\240\005\002\007\001\000\000\020\034\006\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\260\200\007\000G\000\200\007\230\\\b\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\002G\002\000\000\020\034\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\005\004\367\001\000\000)8\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000W\000\200\007\230\\\005\007G\000\000\200\020\\\006\bg\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\003\003\027\000\220\001$6\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\020\240\005\002\207\001\000\000\020\034\357\037\340\375\003\274\177\000\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000W\000\200\007\230\\\005\000g\000\200\007\230\\\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\003\027\000\220\001$6\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\020\240\357\037\340\375\003\274\177\000\005\002\207\000\000\000\020\034\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\357\037\340\375\003\274\177\000\006\000G\000\200\007\230\\\004\000W\000\200\007\230\\\003\002G\002\000\000\020\034\357\037\340\375\003\274\177\000\000\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\000\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\357\037\340\375\003\274\177\000\000\002\367\001\000\000)8\003\000'\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0067\000\000\200\020\\\004\004\007\000\000\b\020\\\000\000\027\000\220\177$6\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\000\000\027\000\020\000$6\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\000\002\007\000\000\000\020\240\017\000\007\000\000\000@\342\357\037\340\377\000\200\037\000\017\000\007\000\000\000\000\343\017\000\207\377\377\017@\342\000\017\007\000\000\000\260P\340\007\000\374\000\200\037\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\357\037\340\375\003<d\000\001\000\207\000\200\007\230L\001\001\007\374\377\377\017\034\000\000w\003\000\000\310\360\357\037\340\375\003\274\177\000\007\001\007\000\200\003l[\017\000\200\000\000\000@\342\300\000\020\000\000\000\240\343\357\037\340!\003\274\177\000\000\001\367\017\000\000\020\\\000\n\007\000\000\000\340\\\002\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\000\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000\007\000\200\007\230\\\003\0007\000\200\007\230\\\006\000\027\000\200\007\230L\357\037\340\375\003\274\177\000\000\000\027\004\200\007\230L\006\002g\000\000\200\020\\\000\003\007\000\000\b\020\\\357\037\340!\003\274\177\000\002\360\007\027\000\000\000\001\002\002\007\000\000\000\224\357\007\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\207\026\000\000\000\001\002\002\007\000\000\000\225\357\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\0007\000\200\007\230\\\003\000G\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\007\026\000\000\000\001\004\004\007\000\000\000\225\357\b\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000W\000\200\007\230\\\005\000\207\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\b\360\207\025\000\000\000\001\b\b\007\000\000\000\225\357\n\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\b\000\247\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340!\003\274\177\000\n\360\007\025\000\000\000\001\n\n\007\000\000\000\225\357\016\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\267\000\200\007\230\\\016\000\347\000\200\007\230\\\017\000\367\000\200\007\230\\\357\037\340!\003\274\177\000\n\360\207\024\000\000\000\001\n\n\007\000\000\000\225\357\f\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000\267\000\200\007\230\\\n\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\357\037\340!\003\274\177\000\020\360\007\024\000\000\000\001\020\020\007\000\000\000\225\357\013\000\007\001\200\007\230\\\357\037\340\375\003\274\177\000\f\000\027\001\200\007\230\\\013\000\267\000\200\007\230\\\f\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\002\000'\000\200\007\230\\\003\003'\000\000\004G\\\357\037\340\375\003\274\177\000\002\003'\000\000\004G\\\003\003'\000\000\004G\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\005G\000\000\004G\\\004\005G\000\000\004G\\\005\005G\000\000\004G\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\016\000\347\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\367\000\200\007\230\\\016\000\347\000\200\007\230\\\017\000\367\000\200\007\230\\\357\037\340\375\003\274\177\000\016\000\347\000\200\007\230\\\017\000\367\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000\327\000\200\007\230\\\020\000\247\000\200\007\230\\\021\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\020\000\007\001\200\007\230\\\021\000\027\001\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\307\000\200\007\230\\\013\013\247\000\000\004G\\\n\013\247\000\000\004G\\\357\037\340\375\003\274\177\000\013\013\247\000\000\004G\\\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\r\006\367\017\000\200\020\\\022\000\367\017\000\b\020\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\022\000'\001\200\007\230\\\f\r\367\017\000\200\327[\r\r\367\017@\t\330[\357\037\340\375\003\274g\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\n\f\007\000\000\000\260\240\357\037\340\375\003\274\177\000\013\006\207\000\000\000\020\034\f\000\367\017\000\b\020\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000\307\000\200\007\230\\\n\013\367\017\000\200\327[\013\013\367\017@\006\330[\357\037\340\375\003\274g\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\020\n\007\000\000\000\260\240\357\037\340\375\003\274\177\000\013\006\007\001\000\000\020\034\f\000\367\017\000\b\020\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000\307\000\200\007\230\\\n\013\367\017\000\200\327[\013\013\367\017@\006\330[\357\037\340\375\003\274g\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\016\n\007\000\000\000\260\240\357\037\340\375\003\274\177\000\013\006\207\001\000\000\020\034\f\000\367\017\000\b\020\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000\307\000\200\007\230\\\n\013\367\017\000\200\327[\013\013\367\017@\006\330[\357\037\340\375\003\274g\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\b\n\007\000\000\000\260\240\357\037\340\375\003\274\177\000\t\006\007\002\000\000\020\034\n\000\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017@\005\330[\357\037\340\375\003\274g\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\004\b\007\000\000\000\260\240\357\037\340\375\003\274\177\000\005\006\207\002\000\000\020\034\b\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\004\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\002\004\007\000\000\000\260\240\357\037\340\375\003\274\177\000\003\006\007\003\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\007\002\007\000\000\000\220\240\017\031\340\375\003\274\177\000\002\000W\002\000\000\310\360\002\000'\000\200\007\230\\\002\002\227\000\000\000H8\017\031\340\375\003\274\177\000\003\000\027\002\000\000\310\360\003\0007\000\200\007\230\\\004\0027\000\000\000\020\\\357\037\340\375\003\274\177\000\003\006G\003\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\006G\003\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\006\007\003\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003m[\006\000g\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\200\000\001\000@\342\017\000\007\000\000\000@\342\003\006\007\001\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\260\200\005\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\007\0007\000\200\007\230\\\003\006G\003\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\003\002\367\001\000\000)8\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\004\0007\000\200\007\230\\\003\005'\000\000\200\020\\\357\037\340\375\003\274\177\000\004\007G\000\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\020\200\002\001'\000\000\000\340\\\357\037\340!\003<d\000\002\002\027\000\000\000\000\004\003\006\027\000\000\000\3408\002\006'\000\000\000\340\\\357\037\340\375\003\274\177\000\007\0027\000\200\003d[\007\200\007\340\200\003\220P\017\000\200\345\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\006\007\001\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\260\200\007\000'\000\200\007\230\\\b\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\006G\003\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\017\031\340\375\003\274\177\000\002:'\000\000\000\340\\\003\002\367\001\000\000)8\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\005\0007\000\200\007\230\\\003\007'\000\000\200\020\\\005\bW\000\000\b\020\\\357\037\340\375\003\274\177\000\002\002\027\000\220\177$6\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\004\004\027\000\020\001$6\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\020\240\357\037\340\375\003\274\177\000\003\006\367\017\000\200\020\\\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\260\200\357\037\340\375\003\274\177\000\005\000'\000\200\007\230\\\007\0007\000\200\007\230\\\003\006G\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\357\037\340\375\003\274\177\000\003\002\367\001\000\000)8\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\0027\000\300\001\3706\003\0027\000\000\000H8\003\0057\000\000\200\020\\\357\037\340\375\003\274\177\000\004\007G\000\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\003\006\207\003\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\000\000\000\257\000\000\220\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\006\207\003\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\005\006\367\017\000\200\020\\\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\260\200\t\000G\000\200\007\230\\\n\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\006G\003\000\000\020\034\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\b\0047\000\300\001\3706\007\0047\000\000\000H8\357\037\340\375\003\274\177\000\007\tw\000\000\200\020\\\b\n\207\000\000\b\020\\\005\007G\000\000\000\020\034\357\037\340\375\003\274\177\000\003\b\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\005\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000\207\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\003G\000\000\000\020\\\007\0027\000\200\003m[\017\000\000\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\006\207\000\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\260\200\005\000'\000\200\007\230\\\007\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\006\207\003\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\017\031\340\375\003\274\177\000\002:'\000\000\000\340\\\003\002\367\001\000\000)8\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\002'\000\300\001\3706\003\002'\000\000\000H8\357\037\340\375\003\274\177\000\003\0057\000\000\200\020\\\004\007G\000\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\006\307\003\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\006\007\002\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\260\200\357\037\340\375\003\274\177\000\005\000'\000\200\007\230\\\007\0007\000\200\007\230\\\003\006\307\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\357\037\340\375\003\274\177\000\003\002\367\001\000\000)8\002\000'\000\200\007\230\\\004\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\005'\000\000\200\020\\\004\007G\000\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\020\200\017\031\340\375\003<d\000\002\001'\000\000\000\340\\\002\002\027\000\000\000\000\004\003\006\027\000\000\000\3408\017\031\340\375\003\274\177\000\002\006'\000\000\000\340\\\007\0027\000\200\003d[\000\000\000C\000\000\220\342\357\037\340\375\003\274\177\000\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\005\006\207\002\000\000\020\034\357\037\340\375\003\274\177\000\002\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\002\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000W\000\200\007\230\\\005\006G\003\000\000\020\034\007\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\007\000w\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\005\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\007\004'\000\300\002\3706\357\037\340\375\003\274\177\000\005\004'\000\000\000H8\005\002W\000\000\200\020\\\007\003w\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\007\000w\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\007\004\027\000\000\000\000\034\005\006\307\003\000\000\020\034\357\037\340\375\003\274\177\000\b\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\004\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\357\037\340\375\003\274\177\000\005\004\367\001\000\000)8\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\004'\000\300\002\3706\004\004'\000\000\000H8\002\002G\000\000\200\020\\\357\037\340\375\003\274\177\000\004\003W\000\000\b\020\\\003\000'\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\007\002\007\000\000\000\220\240\003\006\207\001\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\260\200\007\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\b\0007\000\200\007\230\\\003\006\307\003\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\003\002\367\001\000\000)8\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\005\0007\000\200\007\230\\\003\007'\000\000\200\020\\\357\037\340\375\003\274\177\000\005\bW\000\000\b\020\\\002\360\027\000\000\000\000\001\002\002\027\000\020\001$6\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\027\000\020\001$6\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\020\240\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000@\342\003\006\207\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\004\002\027\000\000\000\000\034\357\037\340\375\003\274\177\000\003\006\207\003\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\017\000\007R\377\017@\342\017\000\007\000\000\000@\342\017\000\007\000\000\000\000\343\377\007\000\374\000\200\037\000\017\000\007\377\377\017@\342\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\340\007\000\374\000\200\037\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000U\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\225\001\000\000\000\000\000\000\241\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008\003\000\000\000\000\000\000\360\000\000\000\000\000\000\000\002\000\000\000\007\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000(\004\000\000\000\000\000\000`\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000L\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\210\004\000\000\000\000\000\000\204\000\000\000\000\000\000\000\003\000\000\000\t\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\331\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\005\000\000\000\000\000\000\244\000\000\000\000\000\000\000\003\000\000\000\n\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\223\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\260\005\000\000\000\000\000\000d\001\000\000\000\000\000\000\000\000\000\000\t\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\001\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\024\007\000\000\000\000\000\000t\001\000\000\000\000\000\000\000\000\000\000\n\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\240\b\000\000\000\000\000\000\200\r\000\000\000\000\000\000\003\000\000\000\b\000\000\017 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\265\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \026\000\000\000\000\000\000\200\030\000\000\000\000\000\000\003\000\000\000\t\000\000\023 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\210\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\240.\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\005\000\000\000\2401\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\005\000\000\000\260\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\330(\000\000\000\000\000\000\330(\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\006\000\000\000\240.\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\001\001H\000\000\000\000\t\000\000\000\000\000\000\376\b\000\000@\000\000\000\004\000\006\000=\000\000\000\000\000\000\000\000\000\000\000\021 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\203%\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360 \n\n\n\n.version 6.4\n.target sm_61\n.address_size 64.\000\377\021global .align 1 .b8 blockIdx[1];\"\000\003dthread#\000\360\013\n.weak .func (.param .b32 \022\000\365\007_retval0) cudaMalloc(\n&\000'64\030\000\021_\026\000?_0, \000\013\2461\n)\n{\n.loc\231\000\0218\231\000!__\025\000\240_depot0[16\302\0002regI\000;%SP\017\000\025L\020\000\21132 %r<2>!\000\323rd<3>;\n\nmov.u2\000\033,e\000b;\ncvta\215\000\004%\000\023,\\\000\"ld\310\000\002\030\000nrd2, [\316\000\036])\000\0371)\000\001a0];\nst#\000\201[%SP+0],,\000\n\026\000\0228\026\000\"2;\266\000\001\330\000a1, 999(\000\002g\000\000\357\000\030[\236\001\003M\000\2571;\nret;\n\n}\326\001\032\376\002FuncGetAttributes\341\001\r#\000\016\354\001\017+\000\006\017\367\001\033\0371\367\001Q\0371\367\001!\016\331\000\017\002\002\017\0168\001\017\r\002\215hDevice\264\000\016\016\002\016$\000\017\017\002\000/32,\000\013\0371,\000\030\0372<\002\023\0372<\002\037\0354<\002\0372<\002\f\0372<\002\023\001_\000\004;\002\017\331\000\007\035]4\000\03714\000\006\017p\002\020\016\232\001\017q\002\022(32q\002\013\025\000!12\026\000\t\206\002\0373\206\002\025\0373\206\002#2Get\313\000\016}\002\005\033\000\004\332\000\017\034\002\023?3[8W\004.\017\033\002\r\0373W\004\031\004\263\001\r\320\000\017\252\001\006\017\005\004W\360\004OccupancyMaxActiveBV\b\376\003sPerMultiprocessor\237\001\017;\000\026\016B\006\017C\000%\016J\004\017C\000\036\0372\206\000/\0373\210\002\023O4[32\211\002\034\0353\211\002\0374\211\002\f\0374\211\002\031\0233\211\002\017\361\000\036\017\274\004\000\017K\000$/2]w\007\000\017L\000$\017\037\005\001\017\230\000%\017\247\007\035\t7\005\0306M\005\004,\000\"24-\000\0303\317\003\0372\317\003\025\0372\317\003L\237WithFlags\330\003(\005D\000\016\341\003\017L\000'\017\352\0030\fL\000\0372\230\0008\0373\230\0008\0374H\004\023O5[40\354\b.\017H\004\r\0375\354\b\034\017\371\000+\037]\234\0040\r\232\001\017\245\0040\r:\002\017\256\0041\r\333\002\017\267\0041\r|\003\017\300\004I\b-\000\0373$\n6\360\026visible .entry _Z6KernelP4NodePiPbS2_\003\00061_i\246\004\000\240\000\017+\000\n\016\215\004\0173\000\025\03713\000\037\03723\000\037\03733\000\037\03743\000\037\02753\000/323\000\022\0376\217\004\023O6[64\217\004\025\226pred %p<5\220\004\23316 %rs<7>\263\004-18\264\004/50\265\004\f\0376\265\004\030\000b\003\017\006\001\022\017\236\003\000\0376<\000\024\0375<\000\000\0375<\000\024\017\024\005\001\0374<\000\024\0373P\005\001\017<\000\024\017\343\004\002\017<\000\024\017\312\004\001\017h\001\025#0]\275\001#to\273\024\004B\000\0217w\004\004\334\001\n\034\000\0218\034\000\0377;\000\005\0219\037\000\0375;\000\002!10\035\000\0379<\000\005!11 \000\0374=\000\003\0222O\005\0371>\000\006\0243-\005\017>\000\001\0224>\000\0373>\000\006\0245\230\005\017>\000\001\0226>\000\0375>\000\006\0247\354\005\017>\000\001\0023\001/17 \006\003\0378!\006\002*16\027\000\003\"\006?d14$\006\003*12\030\000\003%\006:d10\030\000\0234w\000\0328T\006\0254\216\020\t*\013\364\000%ctaid.x;\nshl.bk\006\002F\013\b,\000\000_\001\022t*\000Qadd.s\025\000$5,/\000\0324n\000\0225\235\000\0215\274\002\002A\000%6,\033\000\007\026\000%7,\237\000\222;\nsetp.ge]\0002p1,6\000\362\016%r7;\n@%p1 bra LBB6_9;\nbra.uni\020\00021;\n\b\000\021:Z\000\003\226\001%9,Z\001\001r\000\002\264\0008d20\212\000\001\315\000\003\223\003$1,8\000\001'\000\002\247\000\0208L\005\000r\003\001\"\000\0002\000$ndc\005#2,\035\000\0231\275\000\"eq\033\0003p2, \000\2171;\n@!%p2\275\000\007\0232\275\000\0302\275\000/22\275\000\004\0373\275\000\005$4,8\000\001'\000\003\274\001\002\250\00033, &\002\0228\310\000\002T\0028s3;s\000$5,\270\002\tr\000\t\271\001\001&\002\0030\000$7, \000\0323\213\000$8,P\000\001'\000\007\357\001\0238H\001+8]0\002\002\375\002\0338\033\001\0233\033\001&3:C\000%9,3\000\t\276\000\0379\276\000\002/30\276\000\004431, \000\n\276\000432,P\000\001'\000\007\276\000\"10\277\000X32+4]\030\000\0241\030\000\030]\036\003\002\321\004\002\024\005,11\337\002\"3,\315\000\000(\000\001\340\002\0263#\002\f\b\001\0234\b\001\0304#\002\0243\013\002\0328\362\000\0304!\001\b\362\000$5, \000\0322\362\000$6,P\000\001'\000\b\332\000\0233\332\000\0336\261\001\0236\022\023\tB\002537,\234\004\t\223\000%8,6\000\nz\000$9,8\000\001'\000\007r\003\0234y\000\0329r\003#5,\035\000\rr\003#4, \000\0211N\001\0264N\001\0336N\001\0235N\001\0305N\001\0244)\002\0324A\002/41A\002\004442, \000\nO\001443,Q\000\001'\000\bO\001\003\326\000*43)\002#5,\035\000\0311{\000\03047\001\b{\000$5, \000\013{\000\0316{\000\0275\264\001\000\035\000\002\263\001(5;\367\000%7,g\006\t|\000\017\263\001\005449,8\000\001'\000\th\004\0226\230\001\005h\004\"49h\004\f\202\001\0236\202\001*6:\030\000\0237\030\000\0277\360\003(16\320\002\0075\001\001\202\000\0261s\000\013L\004/17M\004\004\0338u\000\0239\030\000/9:9\r\t\0227n\tP2PbS_\002\000\r/\r\r!\000\016%\r\017)\000\013\0371)\000\025\0372)\000\025\0343\241\f\016)\000\017&\021\032\0367&\021\017\227\f\016\0353\227\f\0345\227\f\016\226\f/26\226\f\f\0377\226\f\036\016\373\000\017\024\f\r\016V\001\017\n\f\r\016\261\001\017\000\f\r\016\f\002\017\366\013\r\016g\002\017\354\013\r\0375t\013\b\0316\315\013\017'\f\004\0373'\f'\0372'\f)\0371'\f\r\017m\013\001\0372m\013\003\0370m\013\003\0378l\013\003\0366\220\021\017<\013W/36<\013\006/36<\013\001/32<\013\02797_3\027\005\0237<\013\0337<\013\017\\\b\003(14\211\000\007\026\006\003]\r%13\303\f\f;\013/15;\013.\016\274\000\0232\274\000\t;\013/16\n\n\002/17\274\000\005(8,\003\016\0347:\013\t\322\006.18:\013\017j\f\017/36j\f\r\007\234\013\0371\234\013\001\0302\247\007\007-\000\0372-\000\001\017\275\001\003/24\216\000\005$5,7\000\001'\000\t\001\001\0344;\f\0225r\000\0334\213\001\0233\213\001\2603:\nret;\n\n}\n\000\000"
	.size	.L__unnamed_3, 15329

	.type	__cuda_fatbin_wrapper,@object # @__cuda_fatbin_wrapper
	.section	.nvFatBinSegment,"a",@progbits
	.p2align	3
__cuda_fatbin_wrapper:
	.long	1180844977              # 0x466243b1
	.long	1                       # 0x1
	.quad	.L__unnamed_3
	.quad	0
	.size	__cuda_fatbin_wrapper, 24

	.type	__cuda_gpubin_handle,@object # @__cuda_gpubin_handle
	.local	__cuda_gpubin_handle
	.comm	__cuda_gpubin_handle,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	__cuda_module_ctor
	.ident	"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6KernelP4NodePiPbS2_S2_S1_i
	.addrsig_sym __cudaPopCallConfiguration
	.addrsig_sym cudaLaunchKernel
	.addrsig_sym _Z7Kernel2PbS_S_S_i
	.addrsig_sym _Z8BFSGraphiPPc
	.addrsig_sym _Z5UsageiPPc
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym printf
	.addrsig_sym fopen
	.addrsig_sym fscanf
	.addrsig_sym malloc
	.addrsig_sym fclose
	.addrsig_sym cudaMalloc
	.addrsig_sym cudaMemcpy
	.addrsig_sym free
	.addrsig_sym cudaFree
	.addrsig_sym __cuda_register_globals
	.addrsig_sym __cudaRegisterFunction
	.addrsig_sym __cudaRegisterFatBinary
	.addrsig_sym __cuda_module_ctor
	.addrsig_sym __cudaRegisterFatBinaryEnd
	.addrsig_sym __cudaUnregisterFatBinary
	.addrsig_sym __cuda_module_dtor
	.addrsig_sym atexit
	.addrsig_sym no_of_nodes
	.addrsig_sym edge_list_size
	.addrsig_sym fp
	.addrsig_sym stderr
	.addrsig_sym .L__unnamed_3
	.addrsig_sym __cuda_fatbin_wrapper
	.addrsig_sym __cuda_gpubin_handle
