; ModuleID = 'gen_input.bc'
source_filename = "generate_input.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, i32 }

@_cupbopGetKernellFnArgsHandler = dso_local global i8* (i8*, i8**)* @__cupbopGetKernellFnArgs

declare dso_local void @_Z6KernelP4NodePiPbS2_S2_S1_i_wrapper(i8*) unnamed_addr

declare dso_local void @_Z7Kernel2PbS_S_S_i_wrapper(i8*) unnamed_addr

declare dso_local i8* @_Znam(i64) unnamed_addr

declare dso_local i8* @_Znwm(i64) unnamed_addr

define i8* @_Z7Kernel2PbS_S_S_i_wrapper_getArgs(i8** %arg) {
entry:
  %arg.addr = alloca i8**
  store i8** %arg, i8*** %arg.addr
  %ret = alloca i32**
  %0 = call i8* @_Znam(i64 5)
  %1 = bitcast i8* %0 to i32**
  store i32** %1, i32*** %ret
  %g_graph_mask = alloca i8*
  %g_graph_mask.ptraddr = alloca i8**
  %2 = call i8* @_Znwm(i64 8)
  %3 = bitcast i8* %2 to i8**
  store i8** %3, i8*** %g_graph_mask.ptraddr
  %4 = load i8**, i8*** %arg.addr
  %5 = getelementptr i8*, i8** %4, i32 0
  %6 = load i8*, i8** %5
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7
  store i8* %8, i8** %g_graph_mask
  %9 = load i8*, i8** %g_graph_mask
  %10 = load i8**, i8*** %g_graph_mask.ptraddr
  store i8* %9, i8** %10
  %11 = load i8**, i8*** %g_graph_mask.ptraddr
  %12 = bitcast i8** %11 to i32*
  %13 = load i32**, i32*** %ret
  %14 = getelementptr i32*, i32** %13, i32 0
  store i32* %12, i32** %14
  %g_updating_graph_mask = alloca i8*
  %g_updating_graph_mask.ptraddr = alloca i8**
  %15 = call i8* @_Znwm(i64 8)
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %g_updating_graph_mask.ptraddr
  %17 = load i8**, i8*** %arg.addr
  %18 = getelementptr i8*, i8** %17, i32 1
  %19 = load i8*, i8** %18
  %20 = bitcast i8* %19 to i8**
  %21 = load i8*, i8** %20
  store i8* %21, i8** %g_updating_graph_mask
  %22 = load i8*, i8** %g_updating_graph_mask
  %23 = load i8**, i8*** %g_updating_graph_mask.ptraddr
  store i8* %22, i8** %23
  %24 = load i8**, i8*** %g_updating_graph_mask.ptraddr
  %25 = bitcast i8** %24 to i32*
  %26 = load i32**, i32*** %ret
  %27 = getelementptr i32*, i32** %26, i32 1
  store i32* %25, i32** %27
  %g_graph_visited = alloca i8*
  %g_graph_visited.ptraddr = alloca i8**
  %28 = call i8* @_Znwm(i64 8)
  %29 = bitcast i8* %28 to i8**
  store i8** %29, i8*** %g_graph_visited.ptraddr
  %30 = load i8**, i8*** %arg.addr
  %31 = getelementptr i8*, i8** %30, i32 2
  %32 = load i8*, i8** %31
  %33 = bitcast i8* %32 to i8**
  %34 = load i8*, i8** %33
  store i8* %34, i8** %g_graph_visited
  %35 = load i8*, i8** %g_graph_visited
  %36 = load i8**, i8*** %g_graph_visited.ptraddr
  store i8* %35, i8** %36
  %37 = load i8**, i8*** %g_graph_visited.ptraddr
  %38 = bitcast i8** %37 to i32*
  %39 = load i32**, i32*** %ret
  %40 = getelementptr i32*, i32** %39, i32 2
  store i32* %38, i32** %40
  %g_over = alloca i8*
  %g_over.ptraddr = alloca i8**
  %41 = call i8* @_Znwm(i64 8)
  %42 = bitcast i8* %41 to i8**
  store i8** %42, i8*** %g_over.ptraddr
  %43 = load i8**, i8*** %arg.addr
  %44 = getelementptr i8*, i8** %43, i32 3
  %45 = load i8*, i8** %44
  %46 = bitcast i8* %45 to i8**
  %47 = load i8*, i8** %46
  store i8* %47, i8** %g_over
  %48 = load i8*, i8** %g_over
  %49 = load i8**, i8*** %g_over.ptraddr
  store i8* %48, i8** %49
  %50 = load i8**, i8*** %g_over.ptraddr
  %51 = bitcast i8** %50 to i32*
  %52 = load i32**, i32*** %ret
  %53 = getelementptr i32*, i32** %52, i32 3
  store i32* %51, i32** %53
  %no_of_nodes = alloca i32
  %no_of_nodes.ptraddr = alloca i32*
  %54 = call i8* @_Znwm(i64 4)
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %no_of_nodes.ptraddr
  %56 = load i8**, i8*** %arg.addr
  %57 = getelementptr i8*, i8** %56, i32 4
  %58 = load i8*, i8** %57
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59
  store i32 %60, i32* %no_of_nodes
  %61 = load i32, i32* %no_of_nodes
  %62 = load i32*, i32** %no_of_nodes.ptraddr
  store i32 %61, i32* %62
  %63 = load i32*, i32** %no_of_nodes.ptraddr
  %64 = bitcast i32* %63 to i32*
  %65 = load i32**, i32*** %ret
  %66 = getelementptr i32*, i32** %65, i32 4
  store i32* %64, i32** %66
  %67 = load i32**, i32*** %ret
  %68 = bitcast i32** %67 to i8*
  ret i8* %68
}

define i8* @_Z6KernelP4NodePiPbS2_S2_S1_i_wrapper_getArgs(i8** %arg) {
entry:
  %arg.addr = alloca i8**
  store i8** %arg, i8*** %arg.addr
  %ret = alloca i32**
  %0 = call i8* @_Znam(i64 7)
  %1 = bitcast i8* %0 to i32**
  store i32** %1, i32*** %ret
  %g_graph_nodes = alloca %struct.Node*
  %g_graph_nodes.ptraddr = alloca %struct.Node**
  %2 = call i8* @_Znwm(i64 8)
  %3 = bitcast i8* %2 to %struct.Node**
  store %struct.Node** %3, %struct.Node*** %g_graph_nodes.ptraddr
  %4 = load i8**, i8*** %arg.addr
  %5 = getelementptr i8*, i8** %4, i32 0
  %6 = load i8*, i8** %5
  %7 = bitcast i8* %6 to %struct.Node**
  %8 = load %struct.Node*, %struct.Node** %7
  store %struct.Node* %8, %struct.Node** %g_graph_nodes
  %9 = load %struct.Node*, %struct.Node** %g_graph_nodes
  %10 = load %struct.Node**, %struct.Node*** %g_graph_nodes.ptraddr
  store %struct.Node* %9, %struct.Node** %10
  %11 = load %struct.Node**, %struct.Node*** %g_graph_nodes.ptraddr
  %12 = bitcast %struct.Node** %11 to i32*
  %13 = load i32**, i32*** %ret
  %14 = getelementptr i32*, i32** %13, i32 0
  store i32* %12, i32** %14
  %g_graph_edges = alloca i32*
  %g_graph_edges.ptraddr = alloca i32**
  %15 = call i8* @_Znwm(i64 8)
  %16 = bitcast i8* %15 to i32**
  store i32** %16, i32*** %g_graph_edges.ptraddr
  %17 = load i8**, i8*** %arg.addr
  %18 = getelementptr i8*, i8** %17, i32 1
  %19 = load i8*, i8** %18
  %20 = bitcast i8* %19 to i32**
  %21 = load i32*, i32** %20
  store i32* %21, i32** %g_graph_edges
  %22 = load i32*, i32** %g_graph_edges
  %23 = load i32**, i32*** %g_graph_edges.ptraddr
  store i32* %22, i32** %23
  %24 = load i32**, i32*** %g_graph_edges.ptraddr
  %25 = bitcast i32** %24 to i32*
  %26 = load i32**, i32*** %ret
  %27 = getelementptr i32*, i32** %26, i32 1
  store i32* %25, i32** %27
  %g_graph_mask = alloca i8*
  %g_graph_mask.ptraddr = alloca i8**
  %28 = call i8* @_Znwm(i64 8)
  %29 = bitcast i8* %28 to i8**
  store i8** %29, i8*** %g_graph_mask.ptraddr
  %30 = load i8**, i8*** %arg.addr
  %31 = getelementptr i8*, i8** %30, i32 2
  %32 = load i8*, i8** %31
  %33 = bitcast i8* %32 to i8**
  %34 = load i8*, i8** %33
  store i8* %34, i8** %g_graph_mask
  %35 = load i8*, i8** %g_graph_mask
  %36 = load i8**, i8*** %g_graph_mask.ptraddr
  store i8* %35, i8** %36
  %37 = load i8**, i8*** %g_graph_mask.ptraddr
  %38 = bitcast i8** %37 to i32*
  %39 = load i32**, i32*** %ret
  %40 = getelementptr i32*, i32** %39, i32 2
  store i32* %38, i32** %40
  %g_updating_graph_mask = alloca i8*
  %g_updating_graph_mask.ptraddr = alloca i8**
  %41 = call i8* @_Znwm(i64 8)
  %42 = bitcast i8* %41 to i8**
  store i8** %42, i8*** %g_updating_graph_mask.ptraddr
  %43 = load i8**, i8*** %arg.addr
  %44 = getelementptr i8*, i8** %43, i32 3
  %45 = load i8*, i8** %44
  %46 = bitcast i8* %45 to i8**
  %47 = load i8*, i8** %46
  store i8* %47, i8** %g_updating_graph_mask
  %48 = load i8*, i8** %g_updating_graph_mask
  %49 = load i8**, i8*** %g_updating_graph_mask.ptraddr
  store i8* %48, i8** %49
  %50 = load i8**, i8*** %g_updating_graph_mask.ptraddr
  %51 = bitcast i8** %50 to i32*
  %52 = load i32**, i32*** %ret
  %53 = getelementptr i32*, i32** %52, i32 3
  store i32* %51, i32** %53
  %g_graph_visited = alloca i8*
  %g_graph_visited.ptraddr = alloca i8**
  %54 = call i8* @_Znwm(i64 8)
  %55 = bitcast i8* %54 to i8**
  store i8** %55, i8*** %g_graph_visited.ptraddr
  %56 = load i8**, i8*** %arg.addr
  %57 = getelementptr i8*, i8** %56, i32 4
  %58 = load i8*, i8** %57
  %59 = bitcast i8* %58 to i8**
  %60 = load i8*, i8** %59
  store i8* %60, i8** %g_graph_visited
  %61 = load i8*, i8** %g_graph_visited
  %62 = load i8**, i8*** %g_graph_visited.ptraddr
  store i8* %61, i8** %62
  %63 = load i8**, i8*** %g_graph_visited.ptraddr
  %64 = bitcast i8** %63 to i32*
  %65 = load i32**, i32*** %ret
  %66 = getelementptr i32*, i32** %65, i32 4
  store i32* %64, i32** %66
  %g_cost = alloca i32*
  %g_cost.ptraddr = alloca i32**
  %67 = call i8* @_Znwm(i64 8)
  %68 = bitcast i8* %67 to i32**
  store i32** %68, i32*** %g_cost.ptraddr
  %69 = load i8**, i8*** %arg.addr
  %70 = getelementptr i8*, i8** %69, i32 5
  %71 = load i8*, i8** %70
  %72 = bitcast i8* %71 to i32**
  %73 = load i32*, i32** %72
  store i32* %73, i32** %g_cost
  %74 = load i32*, i32** %g_cost
  %75 = load i32**, i32*** %g_cost.ptraddr
  store i32* %74, i32** %75
  %76 = load i32**, i32*** %g_cost.ptraddr
  %77 = bitcast i32** %76 to i32*
  %78 = load i32**, i32*** %ret
  %79 = getelementptr i32*, i32** %78, i32 5
  store i32* %77, i32** %79
  %no_of_nodes = alloca i32
  %no_of_nodes.ptraddr = alloca i32*
  %80 = call i8* @_Znwm(i64 4)
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %no_of_nodes.ptraddr
  %82 = load i8**, i8*** %arg.addr
  %83 = getelementptr i8*, i8** %82, i32 6
  %84 = load i8*, i8** %83
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85
  store i32 %86, i32* %no_of_nodes
  %87 = load i32, i32* %no_of_nodes
  %88 = load i32*, i32** %no_of_nodes.ptraddr
  store i32 %87, i32* %88
  %89 = load i32*, i32** %no_of_nodes.ptraddr
  %90 = bitcast i32* %89 to i32*
  %91 = load i32**, i32*** %ret
  %92 = getelementptr i32*, i32** %91, i32 6
  store i32* %90, i32** %92
  %93 = load i32**, i32*** %ret
  %94 = bitcast i32** %93 to i8*
  ret i8* %94
}

define i8* @__cupbopGetKernellFnArgs(i8* %fnPtr, i8** %args) {
entry:
  %fnPtr.addr = alloca i8*, align 8
  store i8* %fnPtr, i8** %fnPtr.addr
  %0 = load i8*, i8** %fnPtr.addr
  %args.addr = alloca i8**
  store i8** %args, i8*** %args.addr
  %1 = load i8**, i8*** %args.addr
  %2 = icmp eq i8* %0, bitcast (void (i8*)* @_Z7Kernel2PbS_S_S_i_wrapper to i8*)
  br i1 %2, label %if.then1, label %if.else1

if.then1:                                         ; preds = %entry
  %3 = call i8* @_Z7Kernel2PbS_S_S_i_wrapper_getArgs(i8** %1)
  ret i8* %3

if.else1:                                         ; preds = %entry
  %4 = icmp eq i8* %0, bitcast (void (i8*)* @_Z6KernelP4NodePiPbS2_S2_S1_i_wrapper to i8*)
  br i1 %4, label %if.then2, label %if.else2

if.then2:                                         ; preds = %if.else1
  %5 = call i8* @_Z6KernelP4NodePiPbS2_S2_S1_i_wrapper_getArgs(i8** %1)
  ret i8* %5

if.else2:                                         ; preds = %if.else1
  ret i8* null
}
