; ModuleID = '/home/staff/yw777/Xillybus/cordic_tutorial/amdpool/cordic.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [4 x i8] c"dut\00"       ; [#uses=1 type=[4 x i8]*]
@str48 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@str49 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str50 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@str51 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]

; [#uses=0]
define void @dut(i32* %strm_in_V_V, i32* %strm_out_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %strm_in_V_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %strm_out_V_V), !map !11
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %strm_out_V_V, [8 x i8]* @str50, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str51, [1 x i8]* @str51, [8 x i8]* @str50) ; [#uses=0 type=i32]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %strm_in_V_V, [8 x i8]* @str48, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str49, [1 x i8]* @str49, [8 x i8]* @str48) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %strm_in_V_V}, i64 0, metadata !15), !dbg !696 ; [debug line = 16:27] [debug variable = strm_in.V.V]
  call void @llvm.dbg.value(metadata !{i32* %strm_out_V_V}, i64 0, metadata !697), !dbg !699 ; [debug line = 17:27] [debug variable = strm_out.V.V]
  call void @llvm.dbg.value(metadata !{i32* %strm_in_V_V}, i64 0, metadata !700), !dbg !705 ; [debug line = 129:56@27:20] [debug variable = stream<ap_uint<32> >.V.V]
  %tmp_V = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %strm_in_V_V), !dbg !708 ; [#uses=1 type=i32] [debug line = 131:9@27:20]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !710), !dbg !708 ; [debug line = 131:9@27:20] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !712), !dbg !715 ; [debug line = 32:26] [debug variable = output.V]
  call void @llvm.dbg.value(metadata !{i32* %strm_out_V_V}, i64 0, metadata !716), !dbg !719 ; [debug line = 144:48@33:3] [debug variable = stream<ap_uint<32> >.V.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_V}, i64 0, metadata !721), !dbg !724 ; [debug line = 145:31@33:3] [debug variable = tmp.V]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %strm_out_V_V, i32 %tmp_V), !dbg !725 ; [debug line = 146:9@33:3]
  ret void, !dbg !726                             ; [debug line = 34:1]
}

; [#uses=39]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=2]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
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
!15 = metadata !{i32 790531, metadata !16, metadata !"strm_in.V.V", null, i32 16, metadata !687, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!16 = metadata !{i32 786689, metadata !17, metadata !"strm_in", metadata !18, i32 16777232, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"dut", metadata !"dut", metadata !"_Z3dutRN3hls6streamI7ap_uintILi32EEEES4_", metadata !18, i32 15, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !44, i32 19} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"cordic.cpp", metadata !"/home/staff/yw777/Xillybus/cordic_tutorial/amdpool", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21, metadata !21}
!21 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_reference_type ]
!22 = metadata !{i32 786434, metadata !23, metadata !"stream<ap_uint<32> >", metadata !24, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !25, i32 0, null, metadata !685} ; [ DW_TAG_class_type ]
!23 = metadata !{i32 786489, null, metadata !"hls", metadata !24, i32 69} ; [ DW_TAG_namespace ]
!24 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/hls_stream.h", metadata !"/home/staff/yw777/Xillybus/cordic_tutorial/amdpool", null} ; [ DW_TAG_file_type ]
!25 = metadata !{metadata !26, metadata !653, metadata !657, metadata !660, metadata !663, metadata !666, metadata !669, metadata !670, metadata !675, metadata !676, metadata !677, metadata !680, metadata !683, metadata !684}
!26 = metadata !{i32 786445, metadata !22, metadata !"V", metadata !24, i32 157, i64 32, i64 32, i64 0, i32 1, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 786434, null, metadata !"ap_uint<32>", metadata !28, i32 180, i64 32, i64 32, i32 0, i32 0, null, metadata !29, i32 0, null, metadata !652} ; [ DW_TAG_class_type ]
!28 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/ap_int.h", metadata !"/home/staff/yw777/Xillybus/cordic_tutorial/amdpool", null} ; [ DW_TAG_file_type ]
!29 = metadata !{metadata !30, metadata !578, metadata !582, metadata !587, metadata !588, metadata !591, metadata !594, metadata !597, metadata !600, metadata !603, metadata !606, metadata !609, metadata !612, metadata !615, metadata !618, metadata !621, metadata !624, metadata !627, metadata !630, metadata !633, metadata !636, metadata !641, metadata !642, metadata !645, metadata !646, metadata !647}
!30 = metadata !{i32 786460, metadata !27, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_inheritance ]
!31 = metadata !{i32 786434, null, metadata !"ap_int_base<32, false, true>", metadata !32, i32 1348, i64 32, i64 32, i32 0, i32 0, null, metadata !33, i32 0, null, metadata !537} ; [ DW_TAG_class_type ]
!32 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/ap_int_syn.h", metadata !"/home/staff/yw777/Xillybus/cordic_tutorial/amdpool", null} ; [ DW_TAG_file_type ]
!33 = metadata !{metadata !34, metadata !56, metadata !60, metadata !67, metadata !68, metadata !71, metadata !75, metadata !79, metadata !83, metadata !87, metadata !90, metadata !94, metadata !98, metadata !102, metadata !108, metadata !113, metadata !117, metadata !121, metadata !127, metadata !130, metadata !135, metadata !138, metadata !139, metadata !140, metadata !143, metadata !144, metadata !147, metadata !150, metadata !153, metadata !156, metadata !166, metadata !169, metadata !172, metadata !175, metadata !178, metadata !181, metadata !184, metadata !187, metadata !190, metadata !191, metadata !196, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !207, metadata !208, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !219, metadata !220, metadata !221, metadata !224, metadata !225, metadata !228, metadata !229, metadata !478, metadata !539, metadata !540, metadata !543, metadata !544, metadata !548, metadata !549, metadata !550, metadata !551, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !568, metadata !571, metadata !574}
!34 = metadata !{i32 786460, metadata !31, null, metadata !32, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_inheritance ]
!35 = metadata !{i32 786434, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !36, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !37, i32 0, null, metadata !51} ; [ DW_TAG_class_type ]
!36 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/staff/yw777/Xillybus/cordic_tutorial/amdpool", null} ; [ DW_TAG_file_type ]
!37 = metadata !{metadata !38, metadata !40, metadata !46}
!38 = metadata !{i32 786445, metadata !35, metadata !"V", metadata !36, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 786468, null, metadata !"uint32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !36, i32 34, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 34} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !43}
!43 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !35} ; [ DW_TAG_pointer_type ]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!46 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !36, i32 34, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !44, i32 34} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !43, metadata !49}
!49 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_reference_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!51 = metadata !{metadata !52, metadata !54}
!52 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !53, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!53 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !55, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!55 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1386, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1386} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !59}
!59 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !31} ; [ DW_TAG_pointer_type ]
!60 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base<32, false>", metadata !"ap_int_base<32, false>", metadata !"", metadata !32, i32 1398, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !64, i32 0, metadata !44, i32 1398} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !59, metadata !63}
!63 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_reference_type ]
!64 = metadata !{metadata !65, metadata !66}
!65 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !53, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!66 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !55, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!67 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base<32, false>", metadata !"ap_int_base<32, false>", metadata !"", metadata !32, i32 1401, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !64, i32 0, metadata !44, i32 1401} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1408, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1408} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !59, metadata !55}
!71 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1409, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1409} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !59, metadata !74}
!74 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!75 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1410, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1410} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !59, metadata !78}
!78 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1411, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1411} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !59, metadata !82}
!82 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!83 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1412, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1412} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !59, metadata !86}
!86 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!87 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1413, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1413} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !59, metadata !53}
!90 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1414, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1414} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{null, metadata !59, metadata !93}
!93 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1415, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1415} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !59, metadata !97}
!97 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1416, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1416} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !59, metadata !101}
!101 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!102 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1417, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1417} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !59, metadata !105}
!105 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !106, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ]
!106 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/ap_fixed_syn.h", metadata !"/home/staff/yw777/Xillybus/cordic_tutorial/amdpool", null} ; [ DW_TAG_file_type ]
!107 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!108 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1418, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1418} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{null, metadata !59, metadata !111}
!111 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !106, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ]
!112 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1419, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1419} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !59, metadata !116}
!116 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!117 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1420, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1420} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !59, metadata !120}
!120 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1447, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1447} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{null, metadata !59, metadata !124}
!124 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ]
!125 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_const_type ]
!126 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!127 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1454, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1454} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{null, metadata !59, metadata !124, metadata !74}
!130 = metadata !{i32 786478, i32 0, metadata !31, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EE4readEv", metadata !32, i32 1475, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1475} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{metadata !31, metadata !133}
!133 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !134} ; [ DW_TAG_pointer_type ]
!134 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_volatile_type ]
!135 = metadata !{i32 786478, i32 0, metadata !31, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EE5writeERKS0_", metadata !32, i32 1481, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1481} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !133, metadata !63}
!138 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EEaSERVKS0_", metadata !32, i32 1493, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1493} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EEaSERKS0_", metadata !32, i32 1502, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1502} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSERVKS0_", metadata !32, i32 1525, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1525} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{metadata !63, metadata !59, metadata !63}
!143 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSERKS0_", metadata !32, i32 1530, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1530} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEPKc", metadata !32, i32 1534, metadata !145, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1534} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!146 = metadata !{metadata !63, metadata !59, metadata !124}
!147 = metadata !{i32 786478, i32 0, metadata !31, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEPKca", metadata !32, i32 1542, metadata !148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1542} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{metadata !63, metadata !59, metadata !124, metadata !74}
!150 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEy", metadata !32, i32 1551, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1551} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !63, metadata !59, metadata !112}
!153 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEx", metadata !32, i32 1556, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1556} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !63, metadata !59, metadata !107}
!156 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEcvyEv", metadata !32, i32 1597, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1597} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{metadata !159, metadata !164}
!159 = metadata !{i32 786454, metadata !31, metadata !"RetType", metadata !32, i32 1353, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ]
!160 = metadata !{i32 786454, metadata !161, metadata !"Type", metadata !32, i32 1338, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ]
!161 = metadata !{i32 786434, null, metadata !"retval<false>", metadata !32, i32 1337, i64 8, i64 8, i32 0, i32 0, null, metadata !162, i32 0, null, metadata !163} ; [ DW_TAG_class_type ]
!162 = metadata !{i32 0}
!163 = metadata !{metadata !54}
!164 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !165} ; [ DW_TAG_pointer_type ]
!165 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ]
!166 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_boolEv", metadata !32, i32 1603, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1603} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{metadata !55, metadata !164}
!169 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6to_intEv", metadata !32, i32 1604, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1604} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!171 = metadata !{metadata !53, metadata !164}
!172 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_uintEv", metadata !32, i32 1605, metadata !173, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1605} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !93, metadata !164}
!175 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_longEv", metadata !32, i32 1606, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1606} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{metadata !97, metadata !164}
!178 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE8to_ulongEv", metadata !32, i32 1607, metadata !179, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1607} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!180 = metadata !{metadata !101, metadata !164}
!181 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE8to_int64Ev", metadata !32, i32 1608, metadata !182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1608} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{metadata !105, metadata !164}
!184 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_uint64Ev", metadata !32, i32 1609, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1609} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{metadata !111, metadata !164}
!187 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_doubleEv", metadata !32, i32 1610, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1610} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{metadata !120, metadata !164}
!190 = metadata !{i32 786478, i32 0, metadata !31, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6lengthEv", metadata !32, i32 1623, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1623} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786478, i32 0, metadata !31, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi32ELb0ELb1EE6lengthEv", metadata !32, i32 1624, metadata !192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1624} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!193 = metadata !{metadata !53, metadata !194}
!194 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !195} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_const_type ]
!196 = metadata !{i32 786478, i32 0, metadata !31, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7reverseEv", metadata !32, i32 1629, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1629} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !63, metadata !59}
!199 = metadata !{i32 786478, i32 0, metadata !31, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6iszeroEv", metadata !32, i32 1635, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1635} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786478, i32 0, metadata !31, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7is_zeroEv", metadata !32, i32 1640, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1640} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 786478, i32 0, metadata !31, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE4signEv", metadata !32, i32 1645, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1645} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786478, i32 0, metadata !31, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5clearEi", metadata !32, i32 1653, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1653} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 786478, i32 0, metadata !31, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE6invertEi", metadata !32, i32 1659, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1659} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786478, i32 0, metadata !31, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE4testEi", metadata !32, i32 1667, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1667} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !55, metadata !164, metadata !53}
!207 = metadata !{i32 786478, i32 0, metadata !31, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEi", metadata !32, i32 1673, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1673} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786478, i32 0, metadata !31, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEib", metadata !32, i32 1679, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1679} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{null, metadata !59, metadata !53, metadata !55}
!211 = metadata !{i32 786478, i32 0, metadata !31, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7lrotateEi", metadata !32, i32 1686, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1686} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786478, i32 0, metadata !31, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7rrotateEi", metadata !32, i32 1695, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1695} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786478, i32 0, metadata !31, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7set_bitEib", metadata !32, i32 1703, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1703} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786478, i32 0, metadata !31, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7get_bitEi", metadata !32, i32 1708, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1708} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 786478, i32 0, metadata !31, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5b_notEv", metadata !32, i32 1713, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1713} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786478, i32 0, metadata !31, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE17countLeadingZerosEv", metadata !32, i32 1720, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1720} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !53, metadata !59}
!219 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEppEv", metadata !32, i32 1777, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1777} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEmmEv", metadata !32, i32 1781, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1781} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEppEi", metadata !32, i32 1789, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1789} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !165, metadata !59, metadata !53}
!224 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEmmEi", metadata !32, i32 1794, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1794} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEpsEv", metadata !32, i32 1803, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1803} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !31, metadata !164}
!228 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEntEv", metadata !32, i32 1809, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1809} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEngEv", metadata !32, i32 1814, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1814} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{metadata !232, metadata !164}
!232 = metadata !{i32 786434, null, metadata !"ap_int_base<33, true, true>", metadata !32, i32 1348, i64 64, i64 64, i32 0, i32 0, null, metadata !233, i32 0, null, metadata !443} ; [ DW_TAG_class_type ]
!233 = metadata !{metadata !234, metadata !246, metadata !250, metadata !253, metadata !256, metadata !259, metadata !262, metadata !265, metadata !268, metadata !271, metadata !274, metadata !277, metadata !280, metadata !283, metadata !286, metadata !289, metadata !292, metadata !295, metadata !300, metadata !304, metadata !305, metadata !306, metadata !309, metadata !310, metadata !313, metadata !316, metadata !319, metadata !322, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !346, metadata !349, metadata !352, metadata !355, metadata !356, metadata !361, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !372, metadata !373, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !384, metadata !385, metadata !386, metadata !389, metadata !390, metadata !393, metadata !394, metadata !398, metadata !402, metadata !403, metadata !406, metadata !407, metadata !445, metadata !446, metadata !447, metadata !448, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !472, metadata !475}
!234 = metadata !{i32 786460, metadata !232, null, metadata !32, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_inheritance ]
!235 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, true>", metadata !36, i32 35, i64 64, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, metadata !243} ; [ DW_TAG_class_type ]
!236 = metadata !{metadata !237, metadata !239}
!237 = metadata !{i32 786445, metadata !235, metadata !"V", metadata !36, i32 35, i64 33, i64 64, i64 0, i32 0, metadata !238} ; [ DW_TAG_member ]
!238 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!239 = metadata !{i32 786478, i32 0, metadata !235, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !36, i32 35, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 35} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{null, metadata !242}
!242 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !235} ; [ DW_TAG_pointer_type ]
!243 = metadata !{metadata !244, metadata !245}
!244 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !53, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!245 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !55, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!246 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1386, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1386} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{null, metadata !249}
!249 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !232} ; [ DW_TAG_pointer_type ]
!250 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1408, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1408} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{null, metadata !249, metadata !55}
!253 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1409, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1409} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{null, metadata !249, metadata !74}
!256 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1410, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1410} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{null, metadata !249, metadata !78}
!259 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1411, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1411} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{null, metadata !249, metadata !82}
!262 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1412, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1412} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{null, metadata !249, metadata !86}
!265 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1413, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1413} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{null, metadata !249, metadata !53}
!268 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1414, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1414} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{null, metadata !249, metadata !93}
!271 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1415, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1415} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{null, metadata !249, metadata !97}
!274 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1416, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1416} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{null, metadata !249, metadata !101}
!277 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1417, metadata !278, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1417} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!279 = metadata !{null, metadata !249, metadata !105}
!280 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1418, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1418} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!282 = metadata !{null, metadata !249, metadata !111}
!283 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1419, metadata !284, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1419} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!285 = metadata !{null, metadata !249, metadata !116}
!286 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1420, metadata !287, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !44, i32 1420} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!288 = metadata !{null, metadata !249, metadata !120}
!289 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1447, metadata !290, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1447} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!291 = metadata !{null, metadata !249, metadata !124}
!292 = metadata !{i32 786478, i32 0, metadata !232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1454, metadata !293, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1454} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!294 = metadata !{null, metadata !249, metadata !124, metadata !74}
!295 = metadata !{i32 786478, i32 0, metadata !232, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE4readEv", metadata !32, i32 1475, metadata !296, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1475} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!297 = metadata !{metadata !232, metadata !298}
!298 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !299} ; [ DW_TAG_pointer_type ]
!299 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_volatile_type ]
!300 = metadata !{i32 786478, i32 0, metadata !232, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE5writeERKS0_", metadata !32, i32 1481, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1481} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!302 = metadata !{null, metadata !298, metadata !303}
!303 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_reference_type ]
!304 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !32, i32 1493, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1493} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !32, i32 1502, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1502} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !32, i32 1525, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1525} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{metadata !303, metadata !249, metadata !303}
!309 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !32, i32 1530, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1530} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEPKc", metadata !32, i32 1534, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1534} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{metadata !303, metadata !249, metadata !124}
!313 = metadata !{i32 786478, i32 0, metadata !232, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEPKca", metadata !32, i32 1542, metadata !314, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1542} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!315 = metadata !{metadata !303, metadata !249, metadata !124, metadata !74}
!316 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEy", metadata !32, i32 1551, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1551} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{metadata !303, metadata !249, metadata !112}
!319 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEx", metadata !32, i32 1556, metadata !320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1556} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!321 = metadata !{metadata !303, metadata !249, metadata !107}
!322 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEcvxEv", metadata !32, i32 1597, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1597} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{metadata !325, metadata !329}
!325 = metadata !{i32 786454, metadata !232, metadata !"RetType", metadata !32, i32 1353, i64 0, i64 0, i64 0, i32 0, metadata !326} ; [ DW_TAG_typedef ]
!326 = metadata !{i32 786454, metadata !327, metadata !"Type", metadata !32, i32 1335, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ]
!327 = metadata !{i32 786434, null, metadata !"retval<true>", metadata !32, i32 1334, i64 8, i64 8, i32 0, i32 0, null, metadata !162, i32 0, null, metadata !328} ; [ DW_TAG_class_type ]
!328 = metadata !{metadata !245}
!329 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !330} ; [ DW_TAG_pointer_type ]
!330 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_const_type ]
!331 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_boolEv", metadata !32, i32 1603, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1603} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !55, metadata !329}
!334 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6to_intEv", metadata !32, i32 1604, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1604} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{metadata !53, metadata !329}
!337 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_uintEv", metadata !32, i32 1605, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1605} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{metadata !93, metadata !329}
!340 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_longEv", metadata !32, i32 1606, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1606} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{metadata !97, metadata !329}
!343 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_ulongEv", metadata !32, i32 1607, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1607} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{metadata !101, metadata !329}
!346 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_int64Ev", metadata !32, i32 1608, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1608} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{metadata !105, metadata !329}
!349 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_uint64Ev", metadata !32, i32 1609, metadata !350, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1609} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!351 = metadata !{metadata !111, metadata !329}
!352 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_doubleEv", metadata !32, i32 1610, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1610} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!354 = metadata !{metadata !120, metadata !329}
!355 = metadata !{i32 786478, i32 0, metadata !232, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !32, i32 1623, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1623} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786478, i32 0, metadata !232, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !32, i32 1624, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1624} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!358 = metadata !{metadata !53, metadata !359}
!359 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !360} ; [ DW_TAG_pointer_type ]
!360 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !299} ; [ DW_TAG_const_type ]
!361 = metadata !{i32 786478, i32 0, metadata !232, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7reverseEv", metadata !32, i32 1629, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1629} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!363 = metadata !{metadata !303, metadata !249}
!364 = metadata !{i32 786478, i32 0, metadata !232, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6iszeroEv", metadata !32, i32 1635, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1635} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786478, i32 0, metadata !232, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7is_zeroEv", metadata !32, i32 1640, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1640} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786478, i32 0, metadata !232, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4signEv", metadata !32, i32 1645, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1645} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 786478, i32 0, metadata !232, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5clearEi", metadata !32, i32 1653, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1653} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 786478, i32 0, metadata !232, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE6invertEi", metadata !32, i32 1659, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1659} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 786478, i32 0, metadata !232, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4testEi", metadata !32, i32 1667, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1667} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{metadata !55, metadata !329, metadata !53}
!372 = metadata !{i32 786478, i32 0, metadata !232, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEi", metadata !32, i32 1673, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1673} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786478, i32 0, metadata !232, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEib", metadata !32, i32 1679, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1679} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!375 = metadata !{null, metadata !249, metadata !53, metadata !55}
!376 = metadata !{i32 786478, i32 0, metadata !232, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7lrotateEi", metadata !32, i32 1686, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1686} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786478, i32 0, metadata !232, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7rrotateEi", metadata !32, i32 1695, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1695} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786478, i32 0, metadata !232, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7set_bitEib", metadata !32, i32 1703, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1703} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786478, i32 0, metadata !232, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7get_bitEi", metadata !32, i32 1708, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1708} ; [ DW_TAG_subprogram ]
!380 = metadata !{i32 786478, i32 0, metadata !232, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5b_notEv", metadata !32, i32 1713, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1713} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786478, i32 0, metadata !232, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE17countLeadingZerosEv", metadata !32, i32 1720, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1720} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{metadata !53, metadata !249}
!384 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEv", metadata !32, i32 1777, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1777} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEv", metadata !32, i32 1781, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1781} ; [ DW_TAG_subprogram ]
!386 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEi", metadata !32, i32 1789, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1789} ; [ DW_TAG_subprogram ]
!387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!388 = metadata !{metadata !330, metadata !249, metadata !53}
!389 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEi", metadata !32, i32 1794, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1794} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEpsEv", metadata !32, i32 1803, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1803} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{metadata !232, metadata !329}
!393 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEntEv", metadata !32, i32 1809, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1809} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEngEv", metadata !32, i32 1814, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1814} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!396 = metadata !{metadata !397, metadata !329}
!397 = metadata !{i32 786434, null, metadata !"ap_int_base<34, true, true>", metadata !32, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!398 = metadata !{i32 786478, i32 0, metadata !232, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !32, i32 1944, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1944} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{metadata !401, metadata !249, metadata !53, metadata !53}
!401 = metadata !{i32 786434, null, metadata !"ap_range_ref<33, true>", metadata !32, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!402 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEclEii", metadata !32, i32 1950, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1950} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786478, i32 0, metadata !232, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !32, i32 1956, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1956} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{metadata !401, metadata !329, metadata !53, metadata !53}
!406 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEclEii", metadata !32, i32 1962, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1962} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEixEi", metadata !32, i32 1981, metadata !408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1981} ; [ DW_TAG_subprogram ]
!408 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!409 = metadata !{metadata !410, metadata !249, metadata !53}
!410 = metadata !{i32 786434, null, metadata !"ap_bit_ref<33, true>", metadata !32, i32 1170, i64 128, i64 64, i32 0, i32 0, null, metadata !411, i32 0, null, metadata !443} ; [ DW_TAG_class_type ]
!411 = metadata !{metadata !412, metadata !413, metadata !414, metadata !419, metadata !423, metadata !428, metadata !429, metadata !432, metadata !435, metadata !436, metadata !439, metadata !440}
!412 = metadata !{i32 786445, metadata !410, metadata !"d_bv", metadata !32, i32 1171, i64 64, i64 64, i64 0, i32 0, metadata !303} ; [ DW_TAG_member ]
!413 = metadata !{i32 786445, metadata !410, metadata !"d_index", metadata !32, i32 1172, i64 32, i64 32, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ]
!414 = metadata !{i32 786478, i32 0, metadata !410, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !32, i32 1175, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1175} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{null, metadata !417, metadata !418}
!417 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !410} ; [ DW_TAG_pointer_type ]
!418 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !410} ; [ DW_TAG_reference_type ]
!419 = metadata !{i32 786478, i32 0, metadata !410, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !32, i32 1178, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1178} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{null, metadata !417, metadata !422, metadata !53}
!422 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !232} ; [ DW_TAG_pointer_type ]
!423 = metadata !{i32 786478, i32 0, metadata !410, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi33ELb1EEcvbEv", metadata !32, i32 1180, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1180} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!425 = metadata !{metadata !55, metadata !426}
!426 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !427} ; [ DW_TAG_pointer_type ]
!427 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !410} ; [ DW_TAG_const_type ]
!428 = metadata !{i32 786478, i32 0, metadata !410, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", metadata !32, i32 1181, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1181} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786478, i32 0, metadata !410, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEy", metadata !32, i32 1183, metadata !430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1183} ; [ DW_TAG_subprogram ]
!430 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!431 = metadata !{metadata !418, metadata !417, metadata !112}
!432 = metadata !{i32 786478, i32 0, metadata !410, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSERKS0_", metadata !32, i32 1203, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1203} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{metadata !418, metadata !417, metadata !418}
!435 = metadata !{i32 786478, i32 0, metadata !410, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi33ELb1EE3getEv", metadata !32, i32 1311, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1311} ; [ DW_TAG_subprogram ]
!436 = metadata !{i32 786478, i32 0, metadata !410, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi33ELb1EE3getEv", metadata !32, i32 1315, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1315} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{metadata !55, metadata !417}
!439 = metadata !{i32 786478, i32 0, metadata !410, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi33ELb1EEcoEv", metadata !32, i32 1324, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1324} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 786478, i32 0, metadata !410, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi33ELb1EE6lengthEv", metadata !32, i32 1329, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1329} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{metadata !53, metadata !426}
!443 = metadata !{metadata !444, metadata !245}
!444 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !53, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!445 = metadata !{i32 786478, i32 0, metadata !232, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEixEi", metadata !32, i32 1995, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1995} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786478, i32 0, metadata !232, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !32, i32 2009, metadata !408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2009} ; [ DW_TAG_subprogram ]
!447 = metadata !{i32 786478, i32 0, metadata !232, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !32, i32 2023, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2023} ; [ DW_TAG_subprogram ]
!448 = metadata !{i32 786478, i32 0, metadata !232, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !32, i32 2203, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2203} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{metadata !55, metadata !249}
!451 = metadata !{i32 786478, i32 0, metadata !232, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !32, i32 2206, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2206} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 786478, i32 0, metadata !232, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !32, i32 2209, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2209} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786478, i32 0, metadata !232, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !32, i32 2212, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2212} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 786478, i32 0, metadata !232, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !32, i32 2215, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2215} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 786478, i32 0, metadata !232, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !32, i32 2218, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2218} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786478, i32 0, metadata !232, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !32, i32 2222, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2222} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786478, i32 0, metadata !232, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !32, i32 2225, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2225} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 786478, i32 0, metadata !232, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !32, i32 2228, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2228} ; [ DW_TAG_subprogram ]
!459 = metadata !{i32 786478, i32 0, metadata !232, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !32, i32 2231, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2231} ; [ DW_TAG_subprogram ]
!460 = metadata !{i32 786478, i32 0, metadata !232, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !32, i32 2234, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2234} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786478, i32 0, metadata !232, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !32, i32 2237, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2237} ; [ DW_TAG_subprogram ]
!462 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !32, i32 2244, metadata !463, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2244} ; [ DW_TAG_subprogram ]
!463 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!464 = metadata !{null, metadata !329, metadata !465, metadata !53, metadata !466, metadata !55}
!465 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ]
!466 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !32, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!467 = metadata !{metadata !468, metadata !469, metadata !470, metadata !471}
!468 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!469 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!470 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!471 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!472 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringE8BaseModeb", metadata !32, i32 2271, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2271} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!474 = metadata !{metadata !465, metadata !329, metadata !466, metadata !55}
!475 = metadata !{i32 786478, i32 0, metadata !232, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEab", metadata !32, i32 2275, metadata !476, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2275} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!477 = metadata !{metadata !465, metadata !329, metadata !74, metadata !55}
!478 = metadata !{i32 786478, i32 0, metadata !31, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5rangeEii", metadata !32, i32 1944, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1944} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{metadata !481, metadata !59, metadata !53, metadata !53}
!481 = metadata !{i32 786434, null, metadata !"ap_range_ref<32, false>", metadata !32, i32 924, i64 128, i64 64, i32 0, i32 0, null, metadata !482, i32 0, null, metadata !537} ; [ DW_TAG_class_type ]
!482 = metadata !{metadata !483, metadata !484, metadata !485, metadata !486, metadata !491, metadata !495, metadata !500, metadata !503, metadata !506, metadata !509, metadata !513, metadata !516, metadata !517, metadata !520, metadata !523, metadata !526, metadata !529, metadata !532, metadata !535, metadata !536}
!483 = metadata !{i32 786445, metadata !481, metadata !"d_bv", metadata !32, i32 925, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ]
!484 = metadata !{i32 786445, metadata !481, metadata !"l_index", metadata !32, i32 926, i64 32, i64 32, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ]
!485 = metadata !{i32 786445, metadata !481, metadata !"h_index", metadata !32, i32 927, i64 32, i64 32, i64 96, i32 0, metadata !53} ; [ DW_TAG_member ]
!486 = metadata !{i32 786478, i32 0, metadata !481, metadata !"ap_range_ref", metadata !"ap_range_ref", metadata !"", metadata !32, i32 930, metadata !487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 930} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!488 = metadata !{null, metadata !489, metadata !490}
!489 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !481} ; [ DW_TAG_pointer_type ]
!490 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !481} ; [ DW_TAG_reference_type ]
!491 = metadata !{i32 786478, i32 0, metadata !481, metadata !"ap_range_ref", metadata !"ap_range_ref", metadata !"", metadata !32, i32 933, metadata !492, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 933} ; [ DW_TAG_subprogram ]
!492 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !493, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!493 = metadata !{null, metadata !489, metadata !494, metadata !53, metadata !53}
!494 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!495 = metadata !{i32 786478, i32 0, metadata !481, metadata !"operator ap_int_base", metadata !"operator ap_int_base", metadata !"_ZNK12ap_range_refILi32ELb0EEcv11ap_int_baseILi32ELb0ELb1EEEv", metadata !32, i32 938, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 938} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!497 = metadata !{metadata !31, metadata !498}
!498 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !499} ; [ DW_TAG_pointer_type ]
!499 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !481} ; [ DW_TAG_const_type ]
!500 = metadata !{i32 786478, i32 0, metadata !481, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK12ap_range_refILi32ELb0EEcvyEv", metadata !32, i32 944, metadata !501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 944} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!502 = metadata !{metadata !112, metadata !498}
!503 = metadata !{i32 786478, i32 0, metadata !481, metadata !"operator=", metadata !"operator=", metadata !"_ZN12ap_range_refILi32ELb0EEaSEy", metadata !32, i32 948, metadata !504, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 948} ; [ DW_TAG_subprogram ]
!504 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!505 = metadata !{metadata !490, metadata !489, metadata !112}
!506 = metadata !{i32 786478, i32 0, metadata !481, metadata !"operator=", metadata !"operator=", metadata !"_ZN12ap_range_refILi32ELb0EEaSERKS0_", metadata !32, i32 966, metadata !507, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 966} ; [ DW_TAG_subprogram ]
!507 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!508 = metadata !{metadata !490, metadata !489, metadata !490}
!509 = metadata !{i32 786478, i32 0, metadata !481, metadata !"operator,", metadata !"operator,", metadata !"_ZN12ap_range_refILi32ELb0EEcmER11ap_int_baseILi32ELb0ELb1EE", metadata !32, i32 1021, metadata !510, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1021} ; [ DW_TAG_subprogram ]
!510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!511 = metadata !{metadata !512, metadata !489, metadata !63}
!512 = metadata !{i32 786434, null, metadata !"ap_concat_ref<32, ap_range_ref<32, false>, 32, ap_int_base<32, false, true> >", metadata !32, i32 687, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!513 = metadata !{i32 786478, i32 0, metadata !481, metadata !"length", metadata !"length", metadata !"_ZNK12ap_range_refILi32ELb0EE6lengthEv", metadata !32, i32 1132, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1132} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{metadata !53, metadata !498}
!516 = metadata !{i32 786478, i32 0, metadata !481, metadata !"to_int", metadata !"to_int", metadata !"_ZNK12ap_range_refILi32ELb0EE6to_intEv", metadata !32, i32 1136, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1136} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786478, i32 0, metadata !481, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK12ap_range_refILi32ELb0EE7to_uintEv", metadata !32, i32 1139, metadata !518, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1139} ; [ DW_TAG_subprogram ]
!518 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !519, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!519 = metadata !{metadata !93, metadata !498}
!520 = metadata !{i32 786478, i32 0, metadata !481, metadata !"to_long", metadata !"to_long", metadata !"_ZNK12ap_range_refILi32ELb0EE7to_longEv", metadata !32, i32 1142, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1142} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{metadata !97, metadata !498}
!523 = metadata !{i32 786478, i32 0, metadata !481, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK12ap_range_refILi32ELb0EE8to_ulongEv", metadata !32, i32 1145, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1145} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!525 = metadata !{metadata !101, metadata !498}
!526 = metadata !{i32 786478, i32 0, metadata !481, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK12ap_range_refILi32ELb0EE8to_int64Ev", metadata !32, i32 1148, metadata !527, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1148} ; [ DW_TAG_subprogram ]
!527 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !528, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!528 = metadata !{metadata !105, metadata !498}
!529 = metadata !{i32 786478, i32 0, metadata !481, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK12ap_range_refILi32ELb0EE9to_uint64Ev", metadata !32, i32 1151, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1151} ; [ DW_TAG_subprogram ]
!530 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!531 = metadata !{metadata !111, metadata !498}
!532 = metadata !{i32 786478, i32 0, metadata !481, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE10and_reduceEv", metadata !32, i32 1154, metadata !533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1154} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!534 = metadata !{metadata !55, metadata !498}
!535 = metadata !{i32 786478, i32 0, metadata !481, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE9or_reduceEv", metadata !32, i32 1157, metadata !533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1157} ; [ DW_TAG_subprogram ]
!536 = metadata !{i32 786478, i32 0, metadata !481, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE10xor_reduceEv", metadata !32, i32 1160, metadata !533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1160} ; [ DW_TAG_subprogram ]
!537 = metadata !{metadata !538, metadata !54}
!538 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !53, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!539 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEclEii", metadata !32, i32 1950, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1950} ; [ DW_TAG_subprogram ]
!540 = metadata !{i32 786478, i32 0, metadata !31, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE5rangeEii", metadata !32, i32 1956, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1956} ; [ DW_TAG_subprogram ]
!541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!542 = metadata !{metadata !481, metadata !164, metadata !53, metadata !53}
!543 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEclEii", metadata !32, i32 1962, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1962} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEixEi", metadata !32, i32 1981, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1981} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!546 = metadata !{metadata !547, metadata !59, metadata !53}
!547 = metadata !{i32 786434, null, metadata !"ap_bit_ref<32, false>", metadata !32, i32 1170, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!548 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEixEi", metadata !32, i32 1995, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 1995} ; [ DW_TAG_subprogram ]
!549 = metadata !{i32 786478, i32 0, metadata !31, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3bitEi", metadata !32, i32 2009, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2009} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 786478, i32 0, metadata !31, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE3bitEi", metadata !32, i32 2023, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2023} ; [ DW_TAG_subprogram ]
!551 = metadata !{i32 786478, i32 0, metadata !31, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10and_reduceEv", metadata !32, i32 2203, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2203} ; [ DW_TAG_subprogram ]
!552 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!553 = metadata !{metadata !55, metadata !59}
!554 = metadata !{i32 786478, i32 0, metadata !31, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE11nand_reduceEv", metadata !32, i32 2206, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2206} ; [ DW_TAG_subprogram ]
!555 = metadata !{i32 786478, i32 0, metadata !31, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE9or_reduceEv", metadata !32, i32 2209, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2209} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 786478, i32 0, metadata !31, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10nor_reduceEv", metadata !32, i32 2212, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2212} ; [ DW_TAG_subprogram ]
!557 = metadata !{i32 786478, i32 0, metadata !31, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10xor_reduceEv", metadata !32, i32 2215, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2215} ; [ DW_TAG_subprogram ]
!558 = metadata !{i32 786478, i32 0, metadata !31, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE11xnor_reduceEv", metadata !32, i32 2218, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2218} ; [ DW_TAG_subprogram ]
!559 = metadata !{i32 786478, i32 0, metadata !31, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10and_reduceEv", metadata !32, i32 2222, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2222} ; [ DW_TAG_subprogram ]
!560 = metadata !{i32 786478, i32 0, metadata !31, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE11nand_reduceEv", metadata !32, i32 2225, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2225} ; [ DW_TAG_subprogram ]
!561 = metadata !{i32 786478, i32 0, metadata !31, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9or_reduceEv", metadata !32, i32 2228, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2228} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 786478, i32 0, metadata !31, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10nor_reduceEv", metadata !32, i32 2231, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2231} ; [ DW_TAG_subprogram ]
!563 = metadata !{i32 786478, i32 0, metadata !31, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10xor_reduceEv", metadata !32, i32 2234, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2234} ; [ DW_TAG_subprogram ]
!564 = metadata !{i32 786478, i32 0, metadata !31, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE11xnor_reduceEv", metadata !32, i32 2237, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2237} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !32, i32 2244, metadata !566, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2244} ; [ DW_TAG_subprogram ]
!566 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !567, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!567 = metadata !{null, metadata !164, metadata !465, metadata !53, metadata !466, metadata !55}
!568 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringE8BaseModeb", metadata !32, i32 2271, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2271} ; [ DW_TAG_subprogram ]
!569 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !570, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!570 = metadata !{metadata !465, metadata !164, metadata !466, metadata !55}
!571 = metadata !{i32 786478, i32 0, metadata !31, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringEab", metadata !32, i32 2275, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 2275} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !573, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!573 = metadata !{metadata !465, metadata !164, metadata !74, metadata !55}
!574 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !32, i32 1348, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !44, i32 1348} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{null, metadata !59, metadata !577}
!577 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_reference_type ]
!578 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 183, metadata !579, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 183} ; [ DW_TAG_subprogram ]
!579 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !580, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!580 = metadata !{null, metadata !581}
!581 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !27} ; [ DW_TAG_pointer_type ]
!582 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint<32>", metadata !"ap_uint<32>", metadata !"", metadata !28, i32 185, metadata !583, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !586, i32 0, metadata !44, i32 185} ; [ DW_TAG_subprogram ]
!583 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !584, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!584 = metadata !{null, metadata !581, metadata !585}
!585 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_reference_type ]
!586 = metadata !{metadata !65}
!587 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint<32>", metadata !"ap_uint<32>", metadata !"", metadata !28, i32 191, metadata !583, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !586, i32 0, metadata !44, i32 191} ; [ DW_TAG_subprogram ]
!588 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint<32, false>", metadata !"ap_uint<32, false>", metadata !"", metadata !28, i32 226, metadata !589, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !64, i32 0, metadata !44, i32 226} ; [ DW_TAG_subprogram ]
!589 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !590, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!590 = metadata !{null, metadata !581, metadata !63}
!591 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 245, metadata !592, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 245} ; [ DW_TAG_subprogram ]
!592 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !593, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!593 = metadata !{null, metadata !581, metadata !55}
!594 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 246, metadata !595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 246} ; [ DW_TAG_subprogram ]
!595 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !596, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!596 = metadata !{null, metadata !581, metadata !74}
!597 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 247, metadata !598, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 247} ; [ DW_TAG_subprogram ]
!598 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !599, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!599 = metadata !{null, metadata !581, metadata !78}
!600 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 248, metadata !601, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 248} ; [ DW_TAG_subprogram ]
!601 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!602 = metadata !{null, metadata !581, metadata !82}
!603 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 249, metadata !604, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 249} ; [ DW_TAG_subprogram ]
!604 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !605, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!605 = metadata !{null, metadata !581, metadata !86}
!606 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 250, metadata !607, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 250} ; [ DW_TAG_subprogram ]
!607 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !608, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!608 = metadata !{null, metadata !581, metadata !53}
!609 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 251, metadata !610, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 251} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!611 = metadata !{null, metadata !581, metadata !93}
!612 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 252, metadata !613, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 252} ; [ DW_TAG_subprogram ]
!613 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !614, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!614 = metadata !{null, metadata !581, metadata !97}
!615 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 253, metadata !616, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 253} ; [ DW_TAG_subprogram ]
!616 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !617, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!617 = metadata !{null, metadata !581, metadata !101}
!618 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 254, metadata !619, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 254} ; [ DW_TAG_subprogram ]
!619 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !620, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!620 = metadata !{null, metadata !581, metadata !112}
!621 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 255, metadata !622, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 255} ; [ DW_TAG_subprogram ]
!622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!623 = metadata !{null, metadata !581, metadata !107}
!624 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 256, metadata !625, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 256} ; [ DW_TAG_subprogram ]
!625 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !626, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!626 = metadata !{null, metadata !581, metadata !116}
!627 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 257, metadata !628, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 257} ; [ DW_TAG_subprogram ]
!628 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !629, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!629 = metadata !{null, metadata !581, metadata !120}
!630 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 259, metadata !631, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 259} ; [ DW_TAG_subprogram ]
!631 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !632, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!632 = metadata !{null, metadata !581, metadata !124}
!633 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 260, metadata !634, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 260} ; [ DW_TAG_subprogram ]
!634 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !635, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!635 = metadata !{null, metadata !581, metadata !124, metadata !74}
!636 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi32EEaSERKS0_", metadata !28, i32 263, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 263} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!638 = metadata !{null, metadata !639, metadata !585}
!639 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !640} ; [ DW_TAG_pointer_type ]
!640 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_volatile_type ]
!641 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi32EEaSERVKS0_", metadata !28, i32 267, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 267} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi32EEaSERVKS0_", metadata !28, i32 271, metadata !643, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 271} ; [ DW_TAG_subprogram ]
!643 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !644, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!644 = metadata !{metadata !585, metadata !581, metadata !585}
!645 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi32EEaSERKS0_", metadata !28, i32 276, metadata !643, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 276} ; [ DW_TAG_subprogram ]
!646 = metadata !{i32 786478, i32 0, metadata !27, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !28, i32 180, metadata !579, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !44, i32 180} ; [ DW_TAG_subprogram ]
!647 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !28, i32 180, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !44, i32 180} ; [ DW_TAG_subprogram ]
!648 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !649, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!649 = metadata !{null, metadata !581, metadata !650}
!650 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_reference_type ]
!651 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!652 = metadata !{metadata !538}
!653 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 83, metadata !654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 83} ; [ DW_TAG_subprogram ]
!654 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !655, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!655 = metadata !{null, metadata !656}
!656 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !22} ; [ DW_TAG_pointer_type ]
!657 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 86, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 86} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{null, metadata !656, metadata !124}
!660 = metadata !{i32 786478, i32 0, metadata !22, metadata !"stream", metadata !"stream", metadata !"", metadata !24, i32 91, metadata !661, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !44, i32 91} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!662 = metadata !{null, metadata !656, metadata !21}
!663 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI7ap_uintILi32EEEaSERKS3_", metadata !24, i32 94, metadata !664, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !44, i32 94} ; [ DW_TAG_subprogram ]
!664 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !665, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!665 = metadata !{metadata !21, metadata !656, metadata !21}
!666 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI7ap_uintILi32EEErsERS2_", metadata !24, i32 101, metadata !667, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 101} ; [ DW_TAG_subprogram ]
!667 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !668, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!668 = metadata !{null, metadata !656, metadata !585}
!669 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI7ap_uintILi32EEElsERKS2_", metadata !24, i32 105, metadata !667, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 105} ; [ DW_TAG_subprogram ]
!670 = metadata !{i32 786478, i32 0, metadata !22, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI7ap_uintILi32EEE5emptyEv", metadata !24, i32 112, metadata !671, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 112} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!672 = metadata !{metadata !55, metadata !673}
!673 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !674} ; [ DW_TAG_pointer_type ]
!674 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!675 = metadata !{i32 786478, i32 0, metadata !22, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI7ap_uintILi32EEE4fullEv", metadata !24, i32 117, metadata !671, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 117} ; [ DW_TAG_subprogram ]
!676 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi32EEE4readERS2_", metadata !24, i32 123, metadata !667, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 123} ; [ DW_TAG_subprogram ]
!677 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi32EEE4readEv", metadata !24, i32 129, metadata !678, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 129} ; [ DW_TAG_subprogram ]
!678 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!679 = metadata !{metadata !27, metadata !656}
!680 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI7ap_uintILi32EEE7read_nbERS2_", metadata !24, i32 136, metadata !681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 136} ; [ DW_TAG_subprogram ]
!681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!682 = metadata !{metadata !55, metadata !656, metadata !585}
!683 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI7ap_uintILi32EEE5writeERKS2_", metadata !24, i32 144, metadata !667, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 144} ; [ DW_TAG_subprogram ]
!684 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI7ap_uintILi32EEE8write_nbERKS2_", metadata !24, i32 150, metadata !681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 150} ; [ DW_TAG_subprogram ]
!685 = metadata !{metadata !686}
!686 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !27, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!687 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !688} ; [ DW_TAG_pointer_type ]
!688 = metadata !{i32 786438, metadata !23, metadata !"stream<ap_uint<32> >", metadata !24, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !689, i32 0, null, metadata !685} ; [ DW_TAG_class_field_type ]
!689 = metadata !{metadata !690}
!690 = metadata !{i32 786438, null, metadata !"ap_uint<32>", metadata !28, i32 180, i64 32, i64 32, i32 0, i32 0, null, metadata !691, i32 0, null, metadata !652} ; [ DW_TAG_class_field_type ]
!691 = metadata !{metadata !692}
!692 = metadata !{i32 786438, null, metadata !"ap_int_base<32, false, true>", metadata !32, i32 1348, i64 32, i64 32, i32 0, i32 0, null, metadata !693, i32 0, null, metadata !537} ; [ DW_TAG_class_field_type ]
!693 = metadata !{metadata !694}
!694 = metadata !{i32 786438, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !36, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !695, i32 0, null, metadata !51} ; [ DW_TAG_class_field_type ]
!695 = metadata !{metadata !38}
!696 = metadata !{i32 16, i32 27, metadata !17, null}
!697 = metadata !{i32 790531, metadata !698, metadata !"strm_out.V.V", null, i32 17, metadata !687, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!698 = metadata !{i32 786689, metadata !17, metadata !"strm_out", metadata !18, i32 33554449, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!699 = metadata !{i32 17, i32 27, metadata !17, null}
!700 = metadata !{i32 790531, metadata !701, metadata !"stream<ap_uint<32> >.V.V", null, i32 129, metadata !704, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!701 = metadata !{i32 786689, metadata !702, metadata !"this", metadata !24, i32 16777345, metadata !703, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!702 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi32EEE4readEv", metadata !24, i32 129, metadata !678, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !677, metadata !44, i32 129} ; [ DW_TAG_subprogram ]
!703 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!704 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !688} ; [ DW_TAG_pointer_type ]
!705 = metadata !{i32 129, i32 56, metadata !702, metadata !706}
!706 = metadata !{i32 27, i32 20, metadata !707, null}
!707 = metadata !{i32 786443, metadata !17, i32 19, i32 1, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!708 = metadata !{i32 131, i32 9, metadata !709, metadata !706}
!709 = metadata !{i32 786443, metadata !702, i32 129, i32 63, metadata !24, i32 47} ; [ DW_TAG_lexical_block ]
!710 = metadata !{i32 790529, metadata !711, metadata !"tmp.V", null, i32 130, metadata !690, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!711 = metadata !{i32 786688, metadata !709, metadata !"tmp", metadata !24, i32 130, metadata !585, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!712 = metadata !{i32 790529, metadata !713, metadata !"output.V", null, i32 32, metadata !690, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!713 = metadata !{i32 786688, metadata !707, metadata !"output", metadata !18, i32 32, metadata !714, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!714 = metadata !{i32 786454, null, metadata !"bit32_t", metadata !18, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!715 = metadata !{i32 32, i32 26, metadata !707, null}
!716 = metadata !{i32 790531, metadata !717, metadata !"stream<ap_uint<32> >.V.V", null, i32 144, metadata !704, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!717 = metadata !{i32 786689, metadata !718, metadata !"this", metadata !24, i32 16777360, metadata !703, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!718 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI7ap_uintILi32EEE5writeERKS2_", metadata !24, i32 144, metadata !667, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !683, metadata !44, i32 144} ; [ DW_TAG_subprogram ]
!719 = metadata !{i32 144, i32 48, metadata !718, metadata !720}
!720 = metadata !{i32 33, i32 3, metadata !707, null}
!721 = metadata !{i32 790529, metadata !722, metadata !"tmp.V", null, i32 145, metadata !690, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!722 = metadata !{i32 786688, metadata !723, metadata !"tmp", metadata !24, i32 145, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!723 = metadata !{i32 786443, metadata !718, i32 144, i32 79, metadata !24, i32 46} ; [ DW_TAG_lexical_block ]
!724 = metadata !{i32 145, i32 31, metadata !723, metadata !720}
!725 = metadata !{i32 146, i32 9, metadata !723, metadata !720}
!726 = metadata !{i32 34, i32 1, metadata !707, null}
