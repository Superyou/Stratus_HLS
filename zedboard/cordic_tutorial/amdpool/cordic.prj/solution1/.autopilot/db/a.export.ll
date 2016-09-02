; ModuleID = '/home/staff/yw777/Xillybus/cordic_tutorial/amdpool/cordic.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [4 x i8] c"dut\00"
@str48 = internal constant [8 x i8] c"ap_fifo\00"
@str49 = internal constant [1 x i8] zeroinitializer
@str50 = internal constant [8 x i8] c"ap_fifo\00"
@str51 = internal constant [1 x i8] zeroinitializer

define void @dut(i32* %strm_in_V_V, i32* %strm_out_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %strm_in_V_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %strm_out_V_V), !map !11
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %strm_out_V_V, [8 x i8]* @str50, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str51, [1 x i8]* @str51, [8 x i8]* @str50)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %strm_in_V_V, [8 x i8]* @str48, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str49, [1 x i8]* @str49, [8 x i8]* @str48)
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %tmp_V = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %strm_in_V_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %strm_out_V_V, i32 %tmp_V)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"strm_in.V.V", metadata !5, metadata !"uint32"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"strm_out.V.V", metadata !5, metadata !"uint32"}
