; ModuleID = 'C:\temp2\llvm-project\WindbgPlugin\ExecutableTest\ReturnFromFrameTests.cpp'
source_filename = "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\ReturnFromFrameTests.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.27.29111"

%rtti.TypeDescriptor30 = type { i8**, i8*, [31 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor19 = type { i8**, i8*, [20 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.CompleteObjectLocator = type { i32, i32, i32, i32, i32, i32 }
%rtti.ClassHierarchyDescriptor = type { i32, i32, i32, i32 }
%rtti.BaseClassDescriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%class.anon = type { i8 }
%"class.tests::returnFromFrame::M" = type { i32 }
%class.anon.0 = type { i8 }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { i8*, [8 x i8] }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }
%"struct.std::_Container_base0" = type { i8 }
%"class.std::allocator" = type { i8 }
%class.anon.2 = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { i32 (...)**, %struct.__std_exception_data }
%struct.__std_exception_data = type { i8*, i8 }

$"??1M@returnFromFrame@tests@@QEAA@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z" = comdat any

$"??$?9DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z" = comdat any

$"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"??$_Convert_size@_K@std@@YA_K_K@Z" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$max@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$min@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"?max@?$numeric_limits@_J@std@@SA_JXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z" = comdat any

$"??$_Get_size_of_n@$00@std@@YA_K_K@Z" = comdat any

$"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" = comdat any

$"?_Throw_bad_array_new_length@std@@YAXXZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@XZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" = comdat any

$"??0bad_alloc@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z" = comdat any

$"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z" = comdat any

$"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z" = comdat any

$"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z" = comdat any

$"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z" = comdat any

$"??_C@_02KLACJAOD@56?$AA@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA3?AVbad_array_new_length@std@@" = comdat any

$"_TI3?AVbad_array_new_length@std@@" = comdat any

$"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = comdat any

$"??_7bad_array_new_length@std@@6B@" = comdat largest

$"??_R4bad_array_new_length@std@@6B@" = comdat any

$"??_R3bad_array_new_length@std@@8" = comdat any

$"??_R2bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_alloc@std@@8" = comdat any

$"??_R3bad_alloc@std@@8" = comdat any

$"??_R2bad_alloc@std@@8" = comdat any

$"??_R1A@?0A@EA@exception@std@@8" = comdat any

$"??_R3exception@std@@8" = comdat any

$"??_R2exception@std@@8" = comdat any

$"??_7bad_alloc@std@@6B@" = comdat largest

$"??_R4bad_alloc@std@@6B@" = comdat any

$"??_7exception@std@@6B@" = comdat largest

$"??_R4exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

@"?g_counter@returnFromFrame@tests@@3HA" = dso_local dllexport global i32 0, align 4, !dbg !0
@"?g_frameTwoMet@returnFromFrame@tests@@3_NA" = dso_local dllexport global i8 0, align 1, !dbg !6
@"?g_notifyBp@@3_NA" = external dso_local global i8, align 1
@"?g_shouldPauseExecute@@3_NA" = external dso_local global i8, align 1
@"??_C@_02KLACJAOD@56?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"56\00", comdat, align 1
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1
@"??_7type_info@@6B@" = external constant i8*
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { i8** @"??_7type_info@@6B@", i8* null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_array_new_length"* (%"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"*)* @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { i8** @"??_7type_info@@6B@", i8* null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_alloc"* (%"class.std::bad_alloc"*, %"class.std::bad_alloc"*)* @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { i8** @"??_7type_info@@6B@", i8* null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::exception"* (%"class.std::exception"*, %"class.std::exception"*)* @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (void (%"class.std::bad_array_new_length"*)* @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableTypeArray.3* @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 1
@0 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_array_new_length@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_array_new_length"*, i32)* @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_array_new_length@std@@6B@")
@"??_R4bad_array_new_length@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_array_new_length@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_array_new_length@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([4 x i32]* @"??_R2bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_array_new_length@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_array_new_length@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@bad_alloc@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_alloc@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_alloc@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@exception@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3exception@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([2 x i32]* @"??_R2exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2exception@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@1 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_alloc@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_alloc"*, i32)* @"??_Gbad_alloc@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_alloc@std@@6B@")
@"??_R4bad_alloc@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_alloc@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@2 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4exception@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::exception"*, i32)* @"??_Gexception@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7exception@std@@6B@")
@"??_R4exception@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4exception@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 1

@"??_7bad_array_new_length@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @0, i32 0, i32 0, i32 1)
@"??_7bad_alloc@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @1, i32 0, i32 0, i32 1)
@"??_7exception@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @2, i32 0, i32 0, i32 1)

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?sanity@returnFromFrame@tests@@YAX_N@Z"(i1 zeroext %0) #0 !dbg !1543 {
  %2 = alloca i8, align 1
  %3 = alloca %class.anon, align 1
  %4 = zext i1 %0 to i8
  store i8 %4, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1546, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.declare(metadata %class.anon* %3, metadata !1548, metadata !DIExpression()), !dbg !1550
  call void @"??R<lambda_0>@?0??sanity@returnFromFrame@tests@@YAX_N@Z@QEBA?A?<auto>@@XZ"(%class.anon* %3), !dbg !1551
  %5 = load i8, i8* %2, align 1, !dbg !1552
  %6 = trunc i8 %5 to i1, !dbg !1552
  br i1 %6, label %7, label %10, !dbg !1554

7:                                                ; preds = %1
  %8 = load i32, i32* @"?g_counter@returnFromFrame@tests@@3HA", align 4, !dbg !1555
  %9 = icmp eq i32 %8, 3, !dbg !1557
  call void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext %9), !dbg !1558
  br label %13, !dbg !1559

10:                                               ; preds = %1
  %11 = load i32, i32* @"?g_counter@returnFromFrame@tests@@3HA", align 4, !dbg !1560
  %12 = icmp eq i32 %11, 1, !dbg !1562
  call void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext %12), !dbg !1563
  br label %13

13:                                               ; preds = %10, %7
  ret void, !dbg !1564
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline optnone uwtable
define internal void @"??R<lambda_0>@?0??sanity@returnFromFrame@tests@@YAX_N@Z@QEBA?A?<auto>@@XZ"(%class.anon* %0) #0 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1565 {
  %2 = alloca %class.anon*, align 8
  %3 = alloca %"class.tests::returnFromFrame::M", align 4
  %4 = alloca %"class.tests::returnFromFrame::M", align 4
  %5 = alloca %"class.tests::returnFromFrame::M", align 4
  store %class.anon* %0, %class.anon** %2, align 8
  call void @llvm.dbg.declare(metadata %class.anon** %2, metadata !1574, metadata !DIExpression()), !dbg !1576
  %6 = load %class.anon*, %class.anon** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.tests::returnFromFrame::M"* %3, metadata !1577, metadata !DIExpression()), !dbg !1585
  invoke void @fsf()
          to label %7 unwind label %25, !dbg !1586

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.tests::returnFromFrame::M", %"class.tests::returnFromFrame::M"* %3, i32 0, i32 0, !dbg !1587
  store i32 2, i32* %8, align 4, !dbg !1588
  call void @llvm.dbg.declare(metadata %"class.tests::returnFromFrame::M"* %4, metadata !1589, metadata !DIExpression()), !dbg !1591
  invoke void @fsf()
          to label %9 unwind label %16, !dbg !1592

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.tests::returnFromFrame::M", %"class.tests::returnFromFrame::M"* %4, i32 0, i32 0, !dbg !1593
  store i32 1, i32* %10, align 4, !dbg !1594
  invoke void @fsf()
          to label %11 unwind label %16, !dbg !1595

11:                                               ; preds = %9
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %4) #11, !dbg !1595
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !1596
  br label %12, !dbg !1596

12:                                               ; preds = %15, %11
  %13 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !1596
  %14 = trunc i8 %13 to i1, !dbg !1596
  br i1 %14, label %15, label %18, !dbg !1596

15:                                               ; preds = %12
  br label %12, !dbg !1596, !llvm.loop !1597

16:                                               ; preds = %9, %7
  %17 = cleanuppad within none [], !dbg !1595
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %4) #11 [ "funclet"(token %17) ], !dbg !1595
  cleanupret from %17 unwind label %25, !dbg !1595

18:                                               ; preds = %12
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !1596
  call void @llvm.dbg.declare(metadata %"class.tests::returnFromFrame::M"* %5, metadata !1598, metadata !DIExpression()), !dbg !1599
  invoke void @fsf()
          to label %19 unwind label %23, !dbg !1600

19:                                               ; preds = %18
  invoke void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext false)
          to label %20 unwind label %23, !dbg !1601

20:                                               ; preds = %19
  invoke void @fsf()
          to label %21 unwind label %23, !dbg !1602

21:                                               ; preds = %20
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %5) #11, !dbg !1602
  invoke void @fsf()
          to label %22 unwind label %25, !dbg !1602

22:                                               ; preds = %21
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %3) #11, !dbg !1602
  ret void, !dbg !1602

23:                                               ; preds = %20, %19, %18
  %24 = cleanuppad within none [], !dbg !1602
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %5) #11 [ "funclet"(token %24) ], !dbg !1602
  cleanupret from %24 unwind label %25, !dbg !1602

25:                                               ; preds = %21, %23, %16, %1
  %26 = cleanuppad within none [], !dbg !1602
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %3) #11 [ "funclet"(token %26) ], !dbg !1602
  cleanupret from %26 unwind to caller, !dbg !1602
}

declare dso_local void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext) #2

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?noOperationAfterConstructor@returnFromFrame@tests@@YAXXZ"() #0 !dbg !1603 {
  %1 = alloca %class.anon.0, align 1
  call void @llvm.dbg.declare(metadata %class.anon.0* %1, metadata !1604, metadata !DIExpression()), !dbg !1606
  call void @"??R<lambda_1>@?0??noOperationAfterConstructor@returnFromFrame@tests@@YAXXZ@QEBA?A?<auto>@@XZ"(%class.anon.0* %1), !dbg !1607
  %2 = load i32, i32* @"?g_counter@returnFromFrame@tests@@3HA", align 4, !dbg !1608
  %3 = icmp eq i32 %2, 2, !dbg !1609
  call void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext %3), !dbg !1610
  ret void, !dbg !1611
}

; Function Attrs: noinline optnone uwtable
define internal void @"??R<lambda_1>@?0??noOperationAfterConstructor@returnFromFrame@tests@@YAXXZ@QEBA?A?<auto>@@XZ"(%class.anon.0* %0) #0 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1612 {
  %2 = alloca %class.anon.0*, align 8
  %3 = alloca %"class.tests::returnFromFrame::M", align 4
  store %class.anon.0* %0, %class.anon.0** %2, align 8
  call void @llvm.dbg.declare(metadata %class.anon.0** %2, metadata !1620, metadata !DIExpression()), !dbg !1622
  %4 = load %class.anon.0*, %class.anon.0** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.tests::returnFromFrame::M"* %3, metadata !1623, metadata !DIExpression()), !dbg !1624
  invoke void @fsf()
          to label %5 unwind label %13, !dbg !1625

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.tests::returnFromFrame::M", %"class.tests::returnFromFrame::M"* %3, i32 0, i32 0, !dbg !1626
  store i32 2, i32* %6, align 4, !dbg !1627
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !1628
  br label %7, !dbg !1628

7:                                                ; preds = %10, %5
  %8 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !1628
  %9 = trunc i8 %8 to i1, !dbg !1628
  br i1 %9, label %10, label %11, !dbg !1628

10:                                               ; preds = %7
  br label %7, !dbg !1628, !llvm.loop !1629

11:                                               ; preds = %7
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !1628
  invoke void @fsf()
          to label %12 unwind label %13, !dbg !1630

12:                                               ; preds = %11
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %3) #11, !dbg !1630
  ret void, !dbg !1630

13:                                               ; preds = %11, %1
  %14 = cleanuppad within none [], !dbg !1630
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %3) #11 [ "funclet"(token %14) ], !dbg !1630
  cleanupret from %14 unwind to caller, !dbg !1630
}

; Function Attrs: noinline optnone uwtable
define dso_local void @"?func1@returnFromFrame@tests@@YAXXZ"() #0 !dbg !1631 {
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !1632
  br label %1, !dbg !1632

1:                                                ; preds = %4, %0
  %2 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !1632
  %3 = trunc i8 %2 to i1, !dbg !1632
  br i1 %3, label %4, label %5, !dbg !1632

4:                                                ; preds = %1
  br label %1, !dbg !1632, !llvm.loop !1633

5:                                                ; preds = %1
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !1632
  ret void, !dbg !1634
}

; Function Attrs: noinline optnone uwtable
define dso_local void @"?func2@returnFromFrame@tests@@YAX_N@Z"(i1 zeroext %0) #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1635 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.tests::returnFromFrame::M", align 4
  %4 = zext i1 %0 to i8
  store i8 %4, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1636, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.declare(metadata %"class.tests::returnFromFrame::M"* %3, metadata !1638, metadata !DIExpression()), !dbg !1639
  invoke void @fsf()
          to label %5 unwind label %10, !dbg !1640

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.tests::returnFromFrame::M", %"class.tests::returnFromFrame::M"* %3, i32 0, i32 0, !dbg !1641
  store i32 9, i32* %6, align 4, !dbg !1642
  invoke void @"?func1@returnFromFrame@tests@@YAXXZ"()
          to label %7 unwind label %10, !dbg !1643

7:                                                ; preds = %5
  invoke void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext false)
          to label %8 unwind label %10, !dbg !1644

8:                                                ; preds = %7
  invoke void @fsf()
          to label %9 unwind label %10, !dbg !1645

9:                                                ; preds = %8
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %3) #11, !dbg !1645
  ret void, !dbg !1645

10:                                               ; preds = %8, %7, %5, %1
  %11 = cleanuppad within none [], !dbg !1645
  call void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %3) #11 [ "funclet"(token %11) ], !dbg !1645
  cleanupret from %11 unwind to caller, !dbg !1645
}

declare void @fsf()

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1M@returnFromFrame@tests@@QEAA@XZ"(%"class.tests::returnFromFrame::M"* %0) unnamed_addr #3 comdat align 2 !dbg !1646 {
  %2 = alloca %"class.tests::returnFromFrame::M"*, align 8
  store %"class.tests::returnFromFrame::M"* %0, %"class.tests::returnFromFrame::M"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.tests::returnFromFrame::M"** %2, metadata !1647, metadata !DIExpression()), !dbg !1649
  %3 = load %"class.tests::returnFromFrame::M"*, %"class.tests::returnFromFrame::M"** %2, align 8
  %4 = getelementptr inbounds %"class.tests::returnFromFrame::M", %"class.tests::returnFromFrame::M"* %3, i32 0, i32 0, !dbg !1650
  %5 = load i32, i32* %4, align 4, !dbg !1650
  %6 = load i32, i32* @"?g_counter@returnFromFrame@tests@@3HA", align 4, !dbg !1652
  %7 = add nsw i32 %6, %5, !dbg !1652
  store i32 %7, i32* @"?g_counter@returnFromFrame@tests@@3HA", align 4, !dbg !1652
  ret void, !dbg !1653
}

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?untilTwoFrames@returnFromFrame@tests@@YAX_N@Z"(i1 zeroext %0) #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1654 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = zext i1 %0 to i8
  store i8 %4, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %3, metadata !1657, metadata !DIExpression()), !dbg !1659
  %5 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02KLACJAOD@56?$AA@", i64 0, i64 0)), !dbg !1660
  invoke void @fsf()
          to label %6 unwind label %17, !dbg !1661

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1, !dbg !1662
  %8 = trunc i8 %7 to i1, !dbg !1662
  invoke void @"?func2@returnFromFrame@tests@@YAX_N@Z"(i1 zeroext %8)
          to label %9 unwind label %17, !dbg !1663

9:                                                ; preds = %6
  %10 = invoke zeroext i1 @"??$?9DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02KLACJAOD@56?$AA@", i64 0, i64 0))
          to label %11 unwind label %17, !dbg !1664

11:                                               ; preds = %9
  invoke void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext %10)
          to label %12 unwind label %17, !dbg !1665

12:                                               ; preds = %11
  %13 = load i32, i32* @"?g_counter@returnFromFrame@tests@@3HA", align 4, !dbg !1666
  %14 = icmp ne i32 %13, 9, !dbg !1667
  invoke void @"?failTestIfFalse@@YAX_N@Z"(i1 zeroext %14)
          to label %15 unwind label %17, !dbg !1668

15:                                               ; preds = %12
  store i8 1, i8* @"?g_frameTwoMet@returnFromFrame@tests@@3_NA", align 1, !dbg !1669
  invoke void @fsf()
          to label %16 unwind label %17, !dbg !1670

16:                                               ; preds = %15
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #11, !dbg !1670
  ret void, !dbg !1670

17:                                               ; preds = %15, %12, %11, %9, %6, %1
  %18 = cleanuppad within none [], !dbg !1670
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #11 [ "funclet"(token %18) ], !dbg !1670
  cleanupret from %18 unwind to caller, !dbg !1670
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* returned %0, i8* %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1671 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %6 = alloca %"struct.std::_Fake_allocator"*, align 8
  %7 = alloca %"struct.std::_Fake_allocator", align 1
  %8 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1672, metadata !DIExpression()), !dbg !1673
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !1674, metadata !DIExpression()), !dbg !1676
  %9 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %10 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i32 0, i32 0, !dbg !1677
  %11 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %5, i32 0, i32 0, !dbg !1677
  %12 = load i8, i8* %11, align 1, !dbg !1677
  %13 = call %"class.std::_Compressed_pair"* @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair"* %10, i8 %12), !dbg !1677
  invoke void @fsf()
          to label %14 unwind label %23, !dbg !1677

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_allocator"** %6, metadata !1678, metadata !DIExpression()), !dbg !1681
  store %"struct.std::_Fake_allocator"* %7, %"struct.std::_Fake_allocator"** %6, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"* %8, metadata !1682, metadata !DIExpression()), !dbg !1717
  %15 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i32 0, i32 0, !dbg !1718
  %16 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %15, i32 0, i32 0, !dbg !1719
  %17 = bitcast %"class.std::_String_val"* %16 to %"struct.std::_Container_base0"*, !dbg !1718
  %18 = load %"struct.std::_Fake_allocator"*, %"struct.std::_Fake_allocator"** %6, align 8, !dbg !1720
  %19 = call %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* %8, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %18, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %17) #11, !dbg !1717
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %9) #11, !dbg !1721
  %20 = load i8*, i8** %3, align 8, !dbg !1722
  %21 = invoke nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %9, i8* %20)
          to label %22 unwind label %23, !dbg !1723

22:                                               ; preds = %14
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %8) #11, !dbg !1724
  ret %"class.std::basic_string"* %9, !dbg !1725

23:                                               ; preds = %14, %2
  %24 = cleanuppad within none [], !dbg !1726
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %10) #11 [ "funclet"(token %24) ], !dbg !1726
  cleanupret from %24 unwind to caller, !dbg !1726
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??$?9DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %0, i8* %1) #0 comdat !dbg !1727 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1730, metadata !DIExpression()), !dbg !1731
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !1732, metadata !DIExpression()), !dbg !1733
  %5 = load i8*, i8** %3, align 8, !dbg !1734
  %6 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8, !dbg !1735
  %7 = call zeroext i1 @"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6, i8* %5), !dbg !1736
  %8 = xor i1 %7, true, !dbg !1737
  ret i1 %8, !dbg !1738
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1739 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !1740, metadata !DIExpression()), !dbg !1741
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %3) #11, !dbg !1742
  invoke void @fsf()
          to label %4 unwind label <badref>, !dbg !1744

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i32 0, i32 0, !dbg !1744
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %5) #11, !dbg !1744
  ret void, !dbg !1745
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %0) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1746 {
  %2 = alloca %"class.std::basic_string"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i8, align 1
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !1747, metadata !DIExpression()), !dbg !1748
  %6 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %7 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1749
  %8 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %7, i32 0, i32 0, !dbg !1750
  %9 = bitcast %"class.std::_String_val"* %8 to %"struct.std::_Container_base0"*, !dbg !1749
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %9) #11, !dbg !1751
  %10 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1752
  %11 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %10, i32 0, i32 0, !dbg !1754
  %12 = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %11) #11, !dbg !1755
  br i1 %12, label %13, label %32, !dbg !1756

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1757, metadata !DIExpression()), !dbg !1761
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1762
  %15 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %14, i32 0, i32 0, !dbg !1763
  %16 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %15, i32 0, i32 0, !dbg !1764
  %17 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %16 to i8**, !dbg !1765
  %18 = load i8*, i8** %17, align 8, !dbg !1765
  store i8* %18, i8** %3, align 8, !dbg !1761
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !1766, metadata !DIExpression()), !dbg !1767
  %19 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %6) #11, !dbg !1768
  store %"class.std::allocator"* %19, %"class.std::allocator"** %4, align 8, !dbg !1767
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1769
  %21 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %20, i32 0, i32 0, !dbg !1770
  %22 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %21, i32 0, i32 0, !dbg !1771
  %23 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %22 to i8**, !dbg !1772
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %23) #11, !dbg !1773
  %24 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8, !dbg !1774
  %25 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1775
  %26 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %25, i32 0, i32 0, !dbg !1776
  %27 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %26, i32 0, i32 2, !dbg !1777
  %28 = load i64, i64* %27, align 8, !dbg !1777
  %29 = add i64 %28, 1, !dbg !1778
  %30 = load i8*, i8** %3, align 8, !dbg !1779
  invoke void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %24, i8* %30, i64 %29)
          to label %31 unwind label %44, !dbg !1780

31:                                               ; preds = %13
  br label %32, !dbg !1781

32:                                               ; preds = %31, %1
  %33 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1782
  %34 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %33, i32 0, i32 0, !dbg !1783
  %35 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %34, i32 0, i32 1, !dbg !1784
  store i64 0, i64* %35, align 8, !dbg !1785
  %36 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1786
  %37 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %36, i32 0, i32 0, !dbg !1787
  %38 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %37, i32 0, i32 2, !dbg !1788
  store i64 15, i64* %38, align 8, !dbg !1789
  store i8 0, i8* %5, align 1, !dbg !1790
  %39 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !1791
  %40 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %39, i32 0, i32 0, !dbg !1792
  %41 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %40, i32 0, i32 0, !dbg !1793
  %42 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %41 to [16 x i8]*, !dbg !1794
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %42, i64 0, i64 0, !dbg !1791
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %43, i8* nonnull align 1 dereferenceable(1) %5) #11, !dbg !1795
  ret void, !dbg !1796

44:                                               ; preds = %13
  %45 = cleanuppad within none [], !dbg !1780
  call void @__std_terminate() #12 [ "funclet"(token %45) ], !dbg !1780
  unreachable, !dbg !1780
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1797 {
  %2 = alloca %"class.std::_Compressed_pair"*, align 8
  store %"class.std::_Compressed_pair"* %0, %"class.std::_Compressed_pair"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair"** %2, metadata !1801, metadata !DIExpression()), !dbg !1803
  %3 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %2, align 8
  invoke void @fsf()
          to label %4 unwind label <badref>, !dbg !1804

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %3, i32 0, i32 0, !dbg !1804
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %5) #11, !dbg !1804
  ret void, !dbg !1806
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %0) #3 comdat align 2 !dbg !1807 {
  %2 = alloca %"struct.std::_Container_base0"*, align 8
  store %"struct.std::_Container_base0"* %0, %"struct.std::_Container_base0"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Container_base0"** %2, metadata !1808, metadata !DIExpression()), !dbg !1809
  %3 = load %"struct.std::_Container_base0"*, %"struct.std::_Container_base0"** %2, align 8
  ret void, !dbg !1810
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %0) #3 comdat align 2 !dbg !1811 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !1812, metadata !DIExpression()), !dbg !1814
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 2, !dbg !1815
  %5 = load i64, i64* %4, align 8, !dbg !1815
  %6 = icmp ule i64 16, %5, !dbg !1816
  ret i1 %6, !dbg !1817
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %0) #3 comdat align 2 !dbg !1818 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !1819, metadata !DIExpression()), !dbg !1820
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i32 0, i32 0, !dbg !1821
  %5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %4) #11, !dbg !1822
  ret %"class.std::allocator"* %5, !dbg !1823
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0) #3 comdat !dbg !1824 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1830, metadata !DIExpression()), !dbg !1831
  %3 = load i8**, i8*** %2, align 8, !dbg !1832
  ret void, !dbg !1833
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %0, i8* %1, i64 %2) #0 comdat align 2 !dbg !1834 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store i64 %2, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1835, metadata !DIExpression()), !dbg !1836
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1837, metadata !DIExpression()), !dbg !1838
  store %"class.std::allocator"* %0, %"class.std::allocator"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %6, metadata !1839, metadata !DIExpression()), !dbg !1841
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %8 = load i64, i64* %4, align 8, !dbg !1842
  %9 = mul i64 1, %8, !dbg !1843
  %10 = load i8*, i8** %5, align 8, !dbg !1844
  call void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(i8* %10, i64 %9) #11, !dbg !1845
  ret void, !dbg !1846
}

declare dso_local void @__std_terminate()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %0, i8* nonnull align 1 dereferenceable(1) %1) #3 comdat align 2 !dbg !1847 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1850, metadata !DIExpression()), !dbg !1851
  %5 = load i8*, i8** %3, align 8, !dbg !1852
  %6 = load i8, i8* %5, align 1, !dbg !1852
  %7 = load i8*, i8** %4, align 8, !dbg !1853
  store i8 %6, i8* %7, align 1, !dbg !1854
  ret void, !dbg !1855
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %0) #3 comdat align 2 !dbg !1856 {
  %2 = alloca %"class.std::_Compressed_pair"*, align 8
  store %"class.std::_Compressed_pair"* %0, %"class.std::_Compressed_pair"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair"** %2, metadata !1857, metadata !DIExpression()), !dbg !1858
  %3 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %2, align 8
  %4 = bitcast %"class.std::_Compressed_pair"* %3 to %"class.std::allocator"*, !dbg !1859
  ret %"class.std::allocator"* %4, !dbg !1860
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(i8* %0, i64 %1) #3 comdat personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1861 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1867, metadata !DIExpression()), !dbg !1868
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1869, metadata !DIExpression()), !dbg !1870
  %5 = load i64, i64* %3, align 8, !dbg !1871
  %6 = icmp uge i64 %5, 4096, !dbg !1873
  br i1 %6, label %7, label %9, !dbg !1874

7:                                                ; preds = %2
  invoke void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(i8** nonnull align 8 dereferenceable(8) %4, i64* nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %12, !dbg !1875

8:                                                ; preds = %7
  br label %9, !dbg !1877

9:                                                ; preds = %8, %2
  %10 = load i64, i64* %3, align 8, !dbg !1878
  %11 = load i8*, i8** %4, align 8, !dbg !1879
  call void @"??3@YAXPEAX_K@Z"(i8* %11, i64 %10) #11, !dbg !1880
  ret void, !dbg !1881

12:                                               ; preds = %7
  %13 = cleanuppad within none [], !dbg !1875
  call void @__std_terminate() #12 [ "funclet"(token %13) ], !dbg !1875
  unreachable, !dbg !1875
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(i8** nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !1882 {
  %3 = alloca i64*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %1, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !1887, metadata !DIExpression()), !dbg !1888
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1889, metadata !DIExpression()), !dbg !1890
  %9 = load i64*, i64** %3, align 8, !dbg !1891
  %10 = load i64, i64* %9, align 8, !dbg !1892
  %11 = add i64 %10, 39, !dbg !1892
  store i64 %11, i64* %9, align 8, !dbg !1892
  call void @llvm.dbg.declare(metadata i64** %5, metadata !1893, metadata !DIExpression()), !dbg !1897
  %12 = load i8**, i8*** %4, align 8, !dbg !1898
  %13 = load i8*, i8** %12, align 8, !dbg !1898
  %14 = bitcast i8* %13 to i64*, !dbg !1899
  store i64* %14, i64** %5, align 8, !dbg !1897
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1900, metadata !DIExpression()), !dbg !1901
  %15 = load i64*, i64** %5, align 8, !dbg !1902
  %16 = getelementptr inbounds i64, i64* %15, i64 -1, !dbg !1902
  %17 = load i64, i64* %16, align 8, !dbg !1902
  store i64 %17, i64* %6, align 8, !dbg !1901
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1903, metadata !DIExpression()), !dbg !1904
  store i64 8, i64* %7, align 8, !dbg !1904
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1905, metadata !DIExpression()), !dbg !1906
  %18 = load i8**, i8*** %4, align 8, !dbg !1907
  %19 = load i8*, i8** %18, align 8, !dbg !1907
  %20 = ptrtoint i8* %19 to i64, !dbg !1908
  %21 = load i64, i64* %6, align 8, !dbg !1909
  %22 = sub i64 %20, %21, !dbg !1910
  store i64 %22, i64* %8, align 8, !dbg !1906
  br label %23, !dbg !1911

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8, !dbg !1912
  %25 = icmp uge i64 %24, 8, !dbg !1912
  br i1 %25, label %26, label %30, !dbg !1912

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8, !dbg !1912
  %28 = icmp ule i64 %27, 39, !dbg !1912
  br i1 %28, label %29, label %30, !dbg !1915

29:                                               ; preds = %26
  br label %33, !dbg !1916

30:                                               ; preds = %26, %23
  br label %31, !dbg !1918

31:                                               ; preds = %30
  call void @_invalid_parameter_noinfo_noreturn() #13, !dbg !1920
  unreachable, !dbg !1920

32:                                               ; No predecessors!
  br label %33

33:                                               ; preds = %32, %29
  br label %34, !dbg !1915

34:                                               ; preds = %33
  %35 = load i64, i64* %6, align 8, !dbg !1922
  %36 = inttoptr i64 %35 to i8*, !dbg !1923
  %37 = load i8**, i8*** %4, align 8, !dbg !1924
  store i8* %36, i8** %37, align 8, !dbg !1925
  ret void, !dbg !1926
}

; Function Attrs: nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(i8*, i64) #4

; Function Attrs: noreturn
declare dso_local void @_invalid_parameter_noinfo_noreturn() #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1927 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !1929, metadata !DIExpression()), !dbg !1931
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  invoke void @fsf()
          to label %4 unwind label <badref>, !dbg !1932

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 0, !dbg !1932
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5) #11, !dbg !1932
  ret void, !dbg !1934
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %0) unnamed_addr #3 comdat align 2 !dbg !1935 {
  %2 = alloca %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, align 8
  store %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %0, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  call void @llvm.dbg.declare(metadata %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, metadata !1936, metadata !DIExpression()), !dbg !1938
  %3 = load %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  ret void, !dbg !1939
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair"* @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair"* returned %0, i8 %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !1940 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca %"class.std::_Compressed_pair"*, align 8
  %5 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %3, i32 0, i32 0
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata %"struct.std::_Zero_then_variadic_args_t"* %3, metadata !1952, metadata !DIExpression()), !dbg !1953
  store %"class.std::_Compressed_pair"* %0, %"class.std::_Compressed_pair"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair"** %4, metadata !1954, metadata !DIExpression()), !dbg !1955
  %6 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %4, align 8
  %7 = bitcast %"class.std::_Compressed_pair"* %6 to %"class.std::allocator"*, !dbg !1956
  %8 = call %"class.std::allocator"* @"??0?$allocator@D@std@@QEAA@XZ"(%"class.std::allocator"* %7) #11, !dbg !1957
  %9 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %6, i32 0, i32 0, !dbg !1958
  %10 = call %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %9), !dbg !1958
  invoke void @fsf()
          to label %11 unwind label %12, !dbg !1958

11:                                               ; preds = %2
  ret %"class.std::_Compressed_pair"* %6, !dbg !1959

12:                                               ; preds = %2
  %13 = cleanuppad within none [], !dbg !1960
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %9) #11 [ "funclet"(token %13) ], !dbg !1960
  cleanupret from %13 unwind to caller, !dbg !1960
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* returned %0, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %1, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 !dbg !1962 {
  %4 = alloca %"struct.std::_Container_base0"*, align 8
  %5 = alloca %"struct.std::_Fake_allocator"*, align 8
  %6 = alloca %"struct.std::_Fake_proxy_ptr_impl"*, align 8
  store %"struct.std::_Container_base0"* %2, %"struct.std::_Container_base0"** %4, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Container_base0"** %4, metadata !1963, metadata !DIExpression()), !dbg !1964
  store %"struct.std::_Fake_allocator"* %1, %"struct.std::_Fake_allocator"** %5, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_allocator"** %5, metadata !1965, metadata !DIExpression()), !dbg !1966
  store %"struct.std::_Fake_proxy_ptr_impl"* %0, %"struct.std::_Fake_proxy_ptr_impl"** %6, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"** %6, metadata !1967, metadata !DIExpression()), !dbg !1969
  %7 = load %"struct.std::_Fake_proxy_ptr_impl"*, %"struct.std::_Fake_proxy_ptr_impl"** %6, align 8
  ret %"struct.std::_Fake_proxy_ptr_impl"* %7, !dbg !1970
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %0) #3 comdat align 2 !dbg !1971 {
  %2 = alloca %"class.std::basic_string"*, align 8
  %3 = alloca i8, align 1
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !1972, metadata !DIExpression()), !dbg !1973
  %4 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %5 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i32 0, i32 0, !dbg !1974
  %6 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %5, i32 0, i32 0, !dbg !1975
  %7 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %6, i32 0, i32 1, !dbg !1976
  store i64 0, i64* %7, align 8, !dbg !1977
  %8 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i32 0, i32 0, !dbg !1978
  %9 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %8, i32 0, i32 0, !dbg !1979
  %10 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %9, i32 0, i32 2, !dbg !1980
  store i64 15, i64* %10, align 8, !dbg !1981
  store i8 0, i8* %3, align 1, !dbg !1982
  %11 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i32 0, i32 0, !dbg !1983
  %12 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %11, i32 0, i32 0, !dbg !1984
  %13 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %12, i32 0, i32 0, !dbg !1985
  %14 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %13 to [16 x i8]*, !dbg !1986
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0, !dbg !1983
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %15, i8* nonnull align 1 dereferenceable(1) %3) #11, !dbg !1987
  ret void, !dbg !1988
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %0, i8* %1) #0 comdat align 2 !dbg !1989 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1990, metadata !DIExpression()), !dbg !1991
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !1992, metadata !DIExpression()), !dbg !1993
  %5 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %6 = load i8*, i8** %3, align 8, !dbg !1994
  %7 = call i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %6) #11, !dbg !1995
  %8 = call i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %7) #11, !dbg !1996
  %9 = load i8*, i8** %3, align 8, !dbg !1997
  %10 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %5, i8* %9, i64 %8), !dbg !1998
  ret %"class.std::basic_string"* %10, !dbg !1999
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %0) #3 comdat align 2 !dbg !2000 {
  %2 = alloca %"struct.std::_Fake_proxy_ptr_impl"*, align 8
  store %"struct.std::_Fake_proxy_ptr_impl"* %0, %"struct.std::_Fake_proxy_ptr_impl"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"** %2, metadata !2001, metadata !DIExpression()), !dbg !2002
  %3 = load %"struct.std::_Fake_proxy_ptr_impl"*, %"struct.std::_Fake_proxy_ptr_impl"** %2, align 8
  ret void, !dbg !2003
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::allocator"* @"??0?$allocator@D@std@@QEAA@XZ"(%"class.std::allocator"* returned %0) unnamed_addr #3 comdat align 2 !dbg !2004 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !2005, metadata !DIExpression()), !dbg !2006
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret %"class.std::allocator"* %3, !dbg !2007
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* returned %0) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2008 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !2009, metadata !DIExpression()), !dbg !2010
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  %4 = bitcast %"class.std::_String_val"* %3 to %"struct.std::_Container_base0"*, !dbg !2011
  %5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 0, !dbg !2012
  %6 = call %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5), !dbg !2012
  invoke void @fsf()
          to label %7 unwind label %10, !dbg !2012

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 1, !dbg !2013
  store i64 0, i64* %8, align 8, !dbg !2013
  %9 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 2, !dbg !2014
  store i64 0, i64* %9, align 8, !dbg !2014
  ret %"class.std::_String_val"* %3, !dbg !2015

10:                                               ; preds = %1
  %11 = cleanuppad within none [], !dbg !2016
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5) #11 [ "funclet"(token %11) ], !dbg !2016
  cleanupret from %11 unwind to caller, !dbg !2016
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* returned %0) unnamed_addr #0 comdat align 2 !dbg !2018 {
  %2 = alloca %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, align 8
  store %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %0, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  call void @llvm.dbg.declare(metadata %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, metadata !2019, metadata !DIExpression()), !dbg !2020
  %3 = load %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  ret %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %3, !dbg !2021
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %0, i8* %1, i64 %2) #0 comdat align 2 !dbg !2022 {
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"class.std::basic_string"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %class.anon.2, align 1
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2023, metadata !DIExpression()), !dbg !2024
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2025, metadata !DIExpression()), !dbg !2026
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %7, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %7, metadata !2027, metadata !DIExpression()), !dbg !2028
  %11 = load %"class.std::basic_string"*, %"class.std::basic_string"** %7, align 8
  %12 = load i64, i64* %5, align 8, !dbg !2029
  %13 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i32 0, i32 0, !dbg !2031
  %14 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %13, i32 0, i32 0, !dbg !2032
  %15 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %14, i32 0, i32 2, !dbg !2033
  %16 = load i64, i64* %15, align 8, !dbg !2033
  %17 = icmp ule i64 %12, %16, !dbg !2034
  br i1 %17, label %18, label %33, !dbg !2035

18:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2036, metadata !DIExpression()), !dbg !2038
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i32 0, i32 0, !dbg !2039
  %20 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %19, i32 0, i32 0, !dbg !2040
  %21 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %20) #11, !dbg !2041
  store i8* %21, i8** %8, align 8, !dbg !2038
  %22 = load i64, i64* %5, align 8, !dbg !2042
  %23 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i32 0, i32 0, !dbg !2043
  %24 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %23, i32 0, i32 0, !dbg !2044
  %25 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %24, i32 0, i32 1, !dbg !2045
  store i64 %22, i64* %25, align 8, !dbg !2046
  %26 = load i64, i64* %5, align 8, !dbg !2047
  %27 = load i8*, i8** %6, align 8, !dbg !2048
  %28 = load i8*, i8** %8, align 8, !dbg !2049
  %29 = call i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %28, i8* %27, i64 %26) #11, !dbg !2050
  store i8 0, i8* %9, align 1, !dbg !2051
  %30 = load i8*, i8** %8, align 8, !dbg !2052
  %31 = load i64, i64* %5, align 8, !dbg !2053
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !2052
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %32, i8* nonnull align 1 dereferenceable(1) %9) #11, !dbg !2054
  store %"class.std::basic_string"* %11, %"class.std::basic_string"** %4, align 8, !dbg !2055
  br label %39, !dbg !2055

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8, !dbg !2056
  %35 = load i64, i64* %5, align 8, !dbg !2057
  %36 = getelementptr inbounds %class.anon.2, %class.anon.2* %10, i32 0, i32 0, !dbg !2058
  %37 = load i8, i8* %36, align 1, !dbg !2058
  %38 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(%"class.std::basic_string"* %11, i64 %35, i8 %37, i8* %34), !dbg !2058
  store %"class.std::basic_string"* %38, %"class.std::basic_string"** %4, align 8, !dbg !2059
  br label %39, !dbg !2059

39:                                               ; preds = %33, %18
  %40 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8, !dbg !2060
  ret %"class.std::basic_string"* %40, !dbg !2060
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %0) #3 comdat !dbg !2061 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2066, metadata !DIExpression()), !dbg !2067
  %3 = load i64, i64* %2, align 8, !dbg !2068
  ret i64 %3, !dbg !2069
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %0) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2070 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2071, metadata !DIExpression()), !dbg !2072
  %3 = load i8*, i8** %2, align 8, !dbg !2073
  %4 = invoke i64 @strlen(i8* %3)
          to label %5 unwind label %6, !dbg !2074

5:                                                ; preds = %1
  ret i64 %4, !dbg !2075

6:                                                ; preds = %1
  %7 = cleanuppad within none [], !dbg !2074
  call void @__std_terminate() #12 [ "funclet"(token %7) ], !dbg !2074
  unreachable, !dbg !2074
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %0) #3 comdat align 2 !dbg !2076 {
  %2 = alloca %"class.std::_String_val"*, align 8
  %3 = alloca i8*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !2077, metadata !DIExpression()), !dbg !2078
  %4 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2079, metadata !DIExpression()), !dbg !2080
  %5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !2081
  %6 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5 to [16 x i8]*, !dbg !2082
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !2081
  store i8* %7, i8** %3, align 8, !dbg !2080
  %8 = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %4) #11, !dbg !2083
  br i1 %8, label %9, label %14, !dbg !2085

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !2086
  %11 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %10 to i8**, !dbg !2088
  %12 = load i8*, i8** %11, align 8, !dbg !2088
  %13 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %12) #11, !dbg !2089
  store i8* %13, i8** %3, align 8, !dbg !2090
  br label %14, !dbg !2091

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %3, align 8, !dbg !2092
  ret i8* %15, !dbg !2093
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %0, i8* %1, i64 %2) #3 comdat align 2 !dbg !2094 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %2, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2095, metadata !DIExpression()), !dbg !2096
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2097, metadata !DIExpression()), !dbg !2098
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2099, metadata !DIExpression()), !dbg !2100
  %7 = load i8*, i8** %6, align 8, !dbg !2101
  %8 = load i8*, i8** %5, align 8, !dbg !2102
  %9 = load i64, i64* %4, align 8, !dbg !2103
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %9, i1 false), !dbg !2104
  ret i8* %7, !dbg !2105
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(%"class.std::basic_string"* %0, i64 %1, i8 %2, i8* %3) #0 comdat align 2 !dbg !2106 {
  %5 = alloca %class.anon.2, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::basic_string"*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::allocator"*, align 8
  %12 = alloca i8*, align 8
  %13 = getelementptr inbounds %class.anon.2, %class.anon.2* %5, i32 0, i32 0
  store i8 %2, i8* %13, align 1
  store i8* %3, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2116, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.declare(metadata %class.anon.2* %5, metadata !2118, metadata !DIExpression()), !dbg !2119
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2120, metadata !DIExpression()), !dbg !2121
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %8, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %8, metadata !2122, metadata !DIExpression()), !dbg !2123
  %14 = load %"class.std::basic_string"*, %"class.std::basic_string"** %8, align 8
  %15 = load i64, i64* %7, align 8, !dbg !2124
  %16 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %14) #11, !dbg !2126
  %17 = icmp ugt i64 %15, %16, !dbg !2127
  br i1 %17, label %18, label %19, !dbg !2128

18:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #13, !dbg !2129
  unreachable, !dbg !2129

19:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2131, metadata !DIExpression()), !dbg !2132
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !2133
  %21 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %20, i32 0, i32 0, !dbg !2134
  %22 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %21, i32 0, i32 2, !dbg !2135
  %23 = load i64, i64* %22, align 8, !dbg !2135
  store i64 %23, i64* %9, align 8, !dbg !2132
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2136, metadata !DIExpression()), !dbg !2137
  %24 = load i64, i64* %7, align 8, !dbg !2138
  %25 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %14, i64 %24) #11, !dbg !2139
  store i64 %25, i64* %10, align 8, !dbg !2137
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %11, metadata !2140, metadata !DIExpression()), !dbg !2141
  %26 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %14) #11, !dbg !2142
  store %"class.std::allocator"* %26, %"class.std::allocator"** %11, align 8, !dbg !2141
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2143, metadata !DIExpression()), !dbg !2144
  %27 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8, !dbg !2145
  %28 = load i64, i64* %10, align 8, !dbg !2146
  %29 = add i64 %28, 1, !dbg !2147
  %30 = call i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %27, i64 %29), !dbg !2148, !heapallocsite !33
  store i8* %30, i8** %12, align 8, !dbg !2144
  %31 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !2149
  %32 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %31, i32 0, i32 0, !dbg !2150
  %33 = bitcast %"class.std::_String_val"* %32 to %"struct.std::_Container_base0"*, !dbg !2149
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %33) #11, !dbg !2151
  %34 = load i64, i64* %7, align 8, !dbg !2152
  %35 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !2153
  %36 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %35, i32 0, i32 0, !dbg !2154
  %37 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %36, i32 0, i32 1, !dbg !2155
  store i64 %34, i64* %37, align 8, !dbg !2156
  %38 = load i64, i64* %10, align 8, !dbg !2157
  %39 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !2158
  %40 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %39, i32 0, i32 0, !dbg !2159
  %41 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %40, i32 0, i32 2, !dbg !2160
  store i64 %38, i64* %41, align 8, !dbg !2161
  %42 = load i8*, i8** %6, align 8, !dbg !2162
  %43 = load i64, i64* %7, align 8, !dbg !2163
  %44 = load i8*, i8** %12, align 8, !dbg !2164
  %45 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %44) #11, !dbg !2165
  call void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(%class.anon.2* %5, i8* %45, i64 %43, i8* %42), !dbg !2166
  %46 = load i64, i64* %9, align 8, !dbg !2167
  %47 = icmp ule i64 16, %46, !dbg !2169
  br i1 %47, label %48, label %62, !dbg !2170

48:                                               ; preds = %19
  %49 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8, !dbg !2171
  %50 = load i64, i64* %9, align 8, !dbg !2173
  %51 = add i64 %50, 1, !dbg !2174
  %52 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !2175
  %53 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %52, i32 0, i32 0, !dbg !2176
  %54 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %53, i32 0, i32 0, !dbg !2177
  %55 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %54 to i8**, !dbg !2178
  %56 = load i8*, i8** %55, align 8, !dbg !2178
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %49, i8* %56, i64 %51), !dbg !2179
  %57 = load i8*, i8** %12, align 8, !dbg !2180
  %58 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !2181
  %59 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %58, i32 0, i32 0, !dbg !2182
  %60 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %59, i32 0, i32 0, !dbg !2183
  %61 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %60 to i8**, !dbg !2184
  store i8* %57, i8** %61, align 8, !dbg !2185
  br label %67, !dbg !2186

62:                                               ; preds = %19
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !2187
  %64 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %63, i32 0, i32 0, !dbg !2189
  %65 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %64, i32 0, i32 0, !dbg !2190
  %66 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %65 to i8**, !dbg !2191
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %66, i8** nonnull align 8 dereferenceable(8) %12) #11, !dbg !2192
  br label %67

67:                                               ; preds = %62, %48
  ret %"class.std::basic_string"* %14, !dbg !2193
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %0) #3 comdat !dbg !2194 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2196, metadata !DIExpression()), !dbg !2197
  %3 = load i8*, i8** %2, align 8, !dbg !2198
  ret i8* %3, !dbg !2199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %0) #3 comdat align 2 !dbg !2200 {
  %2 = alloca %"class.std::basic_string"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !2201, metadata !DIExpression()), !dbg !2203
  %8 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2204, metadata !DIExpression()), !dbg !2205
  %9 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %8) #11, !dbg !2206
  %10 = call i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9) #11, !dbg !2207
  store i64 %10, i64* %3, align 8, !dbg !2205
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2208, metadata !DIExpression()), !dbg !2209
  store i64 16, i64* %5, align 8, !dbg !2210
  %11 = call nonnull align 8 dereferenceable(8) i64* @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %3, i64* nonnull align 8 dereferenceable(8) %5) #11, !dbg !2211
  %12 = load i64, i64* %11, align 8, !dbg !2211
  store i64 %12, i64* %4, align 8, !dbg !2209
  %13 = load i64, i64* %4, align 8, !dbg !2212
  %14 = sub i64 %13, 1, !dbg !2213
  store i64 %14, i64* %6, align 8, !dbg !2212
  %15 = call i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #11, !dbg !2214
  store i64 %15, i64* %7, align 8, !dbg !2215
  %16 = call nonnull align 8 dereferenceable(8) i64* @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %7, i64* nonnull align 8 dereferenceable(8) %6) #11, !dbg !2216
  %17 = load i64, i64* %16, align 8, !dbg !2216
  ret i64 %17, !dbg !2217
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #7 comdat !dbg !2218 {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@", i64 0, i64 0)) #13, !dbg !2219
  unreachable, !dbg !2219
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %0, i64 %1) #3 comdat align 2 !dbg !2220 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2221, metadata !DIExpression()), !dbg !2222
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !2223, metadata !DIExpression()), !dbg !2224
  %5 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %6 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %5) #11, !dbg !2225
  %7 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i32 0, i32 0, !dbg !2226
  %8 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %7, i32 0, i32 0, !dbg !2227
  %9 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %8, i32 0, i32 2, !dbg !2228
  %10 = load i64, i64* %9, align 8, !dbg !2228
  %11 = load i64, i64* %3, align 8, !dbg !2229
  %12 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 %11, i64 %10, i64 %6) #11, !dbg !2230
  ret i64 %12, !dbg !2231
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %0, i64 %1) #0 comdat align 2 !dbg !2232 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2233, metadata !DIExpression()), !dbg !2234
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !2235, metadata !DIExpression()), !dbg !2236
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %6 = load i64, i64* %3, align 8, !dbg !2237
  %7 = call i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 %6), !dbg !2238
  %8 = call i8* @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 %7), !dbg !2239, !heapallocsite !33
  ret i8* %8, !dbg !2240
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(%class.anon.2* %0, i8* %1, i64 %2, i8* %3) #0 comdat align 2 !dbg !2241 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %class.anon.2*, align 8
  %9 = alloca i8, align 1
  store i8* %3, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2249, metadata !DIExpression()), !dbg !2250
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2251, metadata !DIExpression()), !dbg !2252
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2253, metadata !DIExpression()), !dbg !2254
  store %class.anon.2* %0, %class.anon.2** %8, align 8
  call void @llvm.dbg.declare(metadata %class.anon.2** %8, metadata !2255, metadata !DIExpression()), !dbg !2257
  %10 = load %class.anon.2*, %class.anon.2** %8, align 8
  %11 = load i64, i64* %6, align 8, !dbg !2258
  %12 = load i8*, i8** %5, align 8, !dbg !2259
  %13 = load i8*, i8** %7, align 8, !dbg !2260
  %14 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %13, i8* %12, i64 %11) #11, !dbg !2261
  store i8 0, i8* %9, align 1, !dbg !2262
  %15 = load i8*, i8** %7, align 8, !dbg !2263
  %16 = load i64, i64* %6, align 8, !dbg !2264
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !2263
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %17, i8* nonnull align 1 dereferenceable(1) %9) #11, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0, i8** nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !2267 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %1, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2275, metadata !DIExpression()), !dbg !2276
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2277, metadata !DIExpression()), !dbg !2278
  %5 = load i8**, i8*** %4, align 8, !dbg !2279
  %6 = call i8** @"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %5) #11, !dbg !2280
  %7 = bitcast i8** %6 to i8*, !dbg !2280
  %8 = bitcast i8* %7 to i8**, !dbg !2281
  %9 = load i8**, i8*** %3, align 8, !dbg !2282
  %10 = call nonnull align 8 dereferenceable(8) i8** @"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %9) #11, !dbg !2283
  %11 = load i8*, i8** %10, align 8, !dbg !2283
  store i8* %11, i8** %8, align 8, !dbg !2281
  ret void, !dbg !2284
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #3 comdat align 2 !dbg !2285 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !2286, metadata !DIExpression()), !dbg !2287
  ret i64 -1, !dbg !2288
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %0) #3 comdat align 2 !dbg !2289 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !2290, metadata !DIExpression()), !dbg !2291
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i32 0, i32 0, !dbg !2292
  %5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %4) #11, !dbg !2293
  ret %"class.std::allocator"* %5, !dbg !2294
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !2295 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %1, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !2302, metadata !DIExpression()), !dbg !2303
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !2304, metadata !DIExpression()), !dbg !2305
  %5 = load i64*, i64** %4, align 8, !dbg !2306
  %6 = load i64, i64* %5, align 8, !dbg !2306
  %7 = load i64*, i64** %3, align 8, !dbg !2307
  %8 = load i64, i64* %7, align 8, !dbg !2307
  %9 = icmp ult i64 %6, %8, !dbg !2308
  br i1 %9, label %10, label %12, !dbg !2306

10:                                               ; preds = %2
  %11 = load i64*, i64** %3, align 8, !dbg !2309
  br label %14, !dbg !2306

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !2310
  br label %14, !dbg !2306

14:                                               ; preds = %12, %10
  %15 = phi i64* [ %11, %10 ], [ %13, %12 ], !dbg !2306
  ret i64* %15, !dbg !2311
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !2312 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %1, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !2313, metadata !DIExpression()), !dbg !2314
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !2315, metadata !DIExpression()), !dbg !2316
  %5 = load i64*, i64** %3, align 8, !dbg !2317
  %6 = load i64, i64* %5, align 8, !dbg !2317
  %7 = load i64*, i64** %4, align 8, !dbg !2318
  %8 = load i64, i64* %7, align 8, !dbg !2318
  %9 = icmp ult i64 %6, %8, !dbg !2319
  br i1 %9, label %10, label %12, !dbg !2317

10:                                               ; preds = %2
  %11 = load i64*, i64** %3, align 8, !dbg !2320
  br label %14, !dbg !2317

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !2321
  br label %14, !dbg !2317

14:                                               ; preds = %12, %10
  %15 = phi i64* [ %11, %10 ], [ %13, %12 ], !dbg !2317
  ret i64* %15, !dbg !2322
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #3 comdat align 2 !dbg !2323 {
  ret i64 9223372036854775807, !dbg !2378
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %0) #3 comdat align 2 !dbg !2379 {
  %2 = alloca %"class.std::_Compressed_pair"*, align 8
  store %"class.std::_Compressed_pair"* %0, %"class.std::_Compressed_pair"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair"** %2, metadata !2380, metadata !DIExpression()), !dbg !2382
  %3 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %2, align 8
  %4 = bitcast %"class.std::_Compressed_pair"* %3 to %"class.std::allocator"*, !dbg !2383
  ret %"class.std::allocator"* %4, !dbg !2384
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 %0, i64 %1, i64 %2) #3 comdat align 2 !dbg !2385 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2386, metadata !DIExpression()), !dbg !2387
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2388, metadata !DIExpression()), !dbg !2389
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2390, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2392, metadata !DIExpression()), !dbg !2393
  %10 = load i64, i64* %7, align 8, !dbg !2394
  %11 = or i64 %10, 15, !dbg !2395
  store i64 %11, i64* %8, align 8, !dbg !2393
  %12 = load i64, i64* %8, align 8, !dbg !2396
  %13 = load i64, i64* %5, align 8, !dbg !2398
  %14 = icmp ugt i64 %12, %13, !dbg !2399
  br i1 %14, label %15, label %17, !dbg !2400

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8, !dbg !2401
  store i64 %16, i64* %4, align 8, !dbg !2403
  br label %33, !dbg !2403

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8, !dbg !2404
  %19 = load i64, i64* %5, align 8, !dbg !2406
  %20 = load i64, i64* %6, align 8, !dbg !2407
  %21 = udiv i64 %20, 2, !dbg !2408
  %22 = sub i64 %19, %21, !dbg !2409
  %23 = icmp ugt i64 %18, %22, !dbg !2410
  br i1 %23, label %24, label %26, !dbg !2411

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8, !dbg !2412
  store i64 %25, i64* %4, align 8, !dbg !2414
  br label %33, !dbg !2414

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8, !dbg !2415
  %28 = load i64, i64* %6, align 8, !dbg !2416
  %29 = udiv i64 %28, 2, !dbg !2417
  %30 = add i64 %27, %29, !dbg !2418
  store i64 %30, i64* %9, align 8, !dbg !2415
  %31 = call nonnull align 8 dereferenceable(8) i64* @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %8, i64* nonnull align 8 dereferenceable(8) %9) #11, !dbg !2419
  %32 = load i64, i64* %31, align 8, !dbg !2419
  store i64 %32, i64* %4, align 8, !dbg !2420
  br label %33, !dbg !2420

33:                                               ; preds = %26, %24, %15
  %34 = load i64, i64* %4, align 8, !dbg !2421
  ret i64 %34, !dbg !2421
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 %0) #0 comdat !dbg !2422 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2430, metadata !DIExpression()), !dbg !2431
  %4 = load i64, i64* %3, align 8, !dbg !2432
  %5 = icmp uge i64 %4, 4096, !dbg !2434
  br i1 %5, label %6, label %9, !dbg !2435

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8, !dbg !2436
  %8 = call i8* @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 %7), !dbg !2438, !heapallocsite !116
  store i8* %8, i8** %2, align 8, !dbg !2439
  br label %16, !dbg !2439

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !2440
  %11 = icmp ne i64 %10, 0, !dbg !2442
  br i1 %11, label %12, label %15, !dbg !2443

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8, !dbg !2444
  %14 = call i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %13), !dbg !2446, !heapallocsite !116
  store i8* %14, i8** %2, align 8, !dbg !2447
  br label %16, !dbg !2447

15:                                               ; preds = %9
  store i8* null, i8** %2, align 8, !dbg !2448
  br label %16, !dbg !2448

16:                                               ; preds = %15, %12, %6
  %17 = load i8*, i8** %2, align 8, !dbg !2449
  ret i8* %17, !dbg !2449
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 %0) #0 comdat !dbg !2450 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2453, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i8 0, i8* %3, align 1, !dbg !2456
  %4 = load i64, i64* %2, align 8, !dbg !2457
  %5 = mul i64 %4, 1, !dbg !2458
  ret i64 %5, !dbg !2459
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 %0) #0 comdat !dbg !2460 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2463, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2465, metadata !DIExpression()), !dbg !2466
  %6 = load i64, i64* %2, align 8, !dbg !2467
  %7 = add i64 39, %6, !dbg !2468
  store i64 %7, i64* %3, align 8, !dbg !2466
  %8 = load i64, i64* %3, align 8, !dbg !2469
  %9 = load i64, i64* %2, align 8, !dbg !2471
  %10 = icmp ule i64 %8, %9, !dbg !2472
  br i1 %10, label %11, label %12, !dbg !2473

11:                                               ; preds = %1
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #13, !dbg !2474
  unreachable, !dbg !2474

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2476, metadata !DIExpression()), !dbg !2477
  %13 = load i64, i64* %3, align 8, !dbg !2478
  %14 = call i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %13), !dbg !2479, !heapallocsite !116
  %15 = ptrtoint i8* %14 to i64, !dbg !2480
  store i64 %15, i64* %4, align 8, !dbg !2477
  br label %16, !dbg !2481

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8, !dbg !2482
  %18 = icmp ne i64 %17, 0, !dbg !2482
  br i1 %18, label %19, label %20, !dbg !2485

19:                                               ; preds = %16
  br label %23, !dbg !2486

20:                                               ; preds = %16
  br label %21, !dbg !2488

21:                                               ; preds = %20
  call void @_invalid_parameter_noinfo_noreturn() #13, !dbg !2490
  unreachable, !dbg !2490

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %19
  br label %24, !dbg !2485

24:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2492, metadata !DIExpression()), !dbg !2494
  %25 = load i64, i64* %4, align 8, !dbg !2495
  %26 = add i64 %25, 39, !dbg !2496
  %27 = and i64 %26, -32, !dbg !2497
  %28 = inttoptr i64 %27 to i8*, !dbg !2498
  store i8* %28, i8** %5, align 8, !dbg !2494
  %29 = load i64, i64* %4, align 8, !dbg !2499
  %30 = load i8*, i8** %5, align 8, !dbg !2500
  %31 = bitcast i8* %30 to i64*, !dbg !2501
  %32 = getelementptr inbounds i64, i64* %31, i64 -1, !dbg !2501
  store i64 %29, i64* %32, align 8, !dbg !2502
  %33 = load i8*, i8** %5, align 8, !dbg !2503
  ret i8* %33, !dbg !2504
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %0) #0 comdat align 2 !dbg !2505 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2506, metadata !DIExpression()), !dbg !2507
  %3 = load i64, i64* %2, align 8, !dbg !2508
  %4 = call noalias nonnull i8* @"??2@YAPEAX_K@Z"(i64 %3) #14, !dbg !2509, !heapallocsite !116
  ret i8* %4, !dbg !2510
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #7 comdat !dbg !2511 {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@XZ"(%"class.std::bad_array_new_length"* %1) #11, !dbg !2512
  %3 = bitcast %"class.std::bad_array_new_length"* %1 to i8*, !dbg !2512
  call void @_CxxThrowException(i8* %3, %eh.ThrowInfo* @"_TI3?AVbad_array_new_length@std@@") #13, !dbg !2512
  unreachable, !dbg !2512
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@XZ"(%"class.std::bad_array_new_length"* returned %0) unnamed_addr #3 comdat align 2 !dbg !2513 {
  %2 = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %2, metadata !2566, metadata !DIExpression()), !dbg !2568
  %3 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %2, align 8
  %4 = bitcast %"class.std::bad_array_new_length"* %3 to %"class.std::bad_alloc"*, !dbg !2569
  %5 = call %"class.std::bad_alloc"* @"??0bad_alloc@std@@AEAA@QEBD@Z"(%"class.std::bad_alloc"* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@", i64 0, i64 0)) #11, !dbg !2570
  %6 = bitcast %"class.std::bad_array_new_length"* %3 to i32 (...)***, !dbg !2569
  store i32 (...)** bitcast (i8** @"??_7bad_array_new_length@std@@6B@" to i32 (...)**), i32 (...)*** %6, align 8, !dbg !2569
  ret %"class.std::bad_array_new_length"* %3, !dbg !2571
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(%"class.std::bad_array_new_length"* returned %0, %"class.std::bad_array_new_length"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 !dbg !2572 {
  %3 = alloca %"class.std::bad_array_new_length"*, align 8
  %4 = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %1, %"class.std::bad_array_new_length"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %3, metadata !2578, metadata !DIExpression()), !dbg !2579
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %4, metadata !2580, metadata !DIExpression()), !dbg !2579
  %5 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %4, align 8
  %6 = bitcast %"class.std::bad_array_new_length"* %5 to %"class.std::bad_alloc"*, !dbg !2581
  %7 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %3, align 8, !dbg !2581
  %8 = bitcast %"class.std::bad_array_new_length"* %7 to %"class.std::bad_alloc"*, !dbg !2581
  %9 = call %"class.std::bad_alloc"* @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(%"class.std::bad_alloc"* %6, %"class.std::bad_alloc"* nonnull align 8 dereferenceable(24) %8) #11, !dbg !2581
  %10 = bitcast %"class.std::bad_array_new_length"* %5 to i32 (...)***, !dbg !2581
  store i32 (...)** bitcast (i8** @"??_7bad_array_new_length@std@@6B@" to i32 (...)**), i32 (...)*** %10, align 8, !dbg !2581
  ret %"class.std::bad_array_new_length"* %5, !dbg !2581
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_alloc"* @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(%"class.std::bad_alloc"* returned %0, %"class.std::bad_alloc"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 !dbg !2582 {
  %3 = alloca %"class.std::bad_alloc"*, align 8
  %4 = alloca %"class.std::bad_alloc"*, align 8
  store %"class.std::bad_alloc"* %1, %"class.std::bad_alloc"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %3, metadata !2588, metadata !DIExpression()), !dbg !2589
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %4, metadata !2590, metadata !DIExpression()), !dbg !2589
  %5 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %4, align 8
  %6 = bitcast %"class.std::bad_alloc"* %5 to %"class.std::exception"*, !dbg !2592
  %7 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %3, align 8, !dbg !2592
  %8 = bitcast %"class.std::bad_alloc"* %7 to %"class.std::exception"*, !dbg !2592
  %9 = call %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* %6, %"class.std::exception"* nonnull align 8 dereferenceable(24) %8) #11, !dbg !2592
  %10 = bitcast %"class.std::bad_alloc"* %5 to i32 (...)***, !dbg !2592
  store i32 (...)** bitcast (i8** @"??_7bad_alloc@std@@6B@" to i32 (...)**), i32 (...)*** %10, align 8, !dbg !2592
  ret %"class.std::bad_alloc"* %5, !dbg !2592
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* returned %0, %"class.std::exception"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2593 {
  %3 = alloca %"class.std::exception"*, align 8
  %4 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %1, %"class.std::exception"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %3, metadata !2594, metadata !DIExpression()), !dbg !2595
  store %"class.std::exception"* %0, %"class.std::exception"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %4, metadata !2596, metadata !DIExpression()), !dbg !2598
  %5 = load %"class.std::exception"*, %"class.std::exception"** %4, align 8
  %6 = bitcast %"class.std::exception"* %5 to i32 (...)***, !dbg !2599
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %6, align 8, !dbg !2599
  %7 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %5, i32 0, i32 1, !dbg !2600
  %8 = bitcast %struct.__std_exception_data* %7 to i8*, !dbg !2600
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false), !dbg !2600
  %9 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %5, i32 0, i32 1, !dbg !2601
  %10 = load %"class.std::exception"*, %"class.std::exception"** %3, align 8, !dbg !2603
  %11 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %10, i32 0, i32 1, !dbg !2604
  invoke void @__std_exception_copy(%struct.__std_exception_data* %11, %struct.__std_exception_data* %9)
          to label %12 unwind label %13, !dbg !2605

12:                                               ; preds = %2
  ret %"class.std::exception"* %5, !dbg !2606

13:                                               ; preds = %2
  %14 = cleanuppad within none [], !dbg !2605
  call void @__std_terminate() #12 [ "funclet"(token %14) ], !dbg !2605
  unreachable, !dbg !2605
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(%"class.std::bad_array_new_length"* %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2607 {
  %2 = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %2, metadata !2609, metadata !DIExpression()), !dbg !2610
  %3 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %2, align 8
  invoke void @fsf()
          to label %4 unwind label <badref>, !dbg !2611

4:                                                ; preds = %1
  %5 = bitcast %"class.std::bad_array_new_length"* %3 to %"class.std::bad_alloc"*, !dbg !2611
  call void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %5) #11, !dbg !2611
  ret void, !dbg !2613
}

declare dso_local void @_CxxThrowException(i8*, %eh.ThrowInfo*)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_alloc"* @"??0bad_alloc@std@@AEAA@QEBD@Z"(%"class.std::bad_alloc"* returned %0, i8* %1) unnamed_addr #3 comdat align 2 !dbg !2614 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::bad_alloc"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2615, metadata !DIExpression()), !dbg !2616
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %4, metadata !2617, metadata !DIExpression()), !dbg !2618
  %5 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %4, align 8
  %6 = bitcast %"class.std::bad_alloc"* %5 to %"class.std::exception"*, !dbg !2619
  %7 = load i8*, i8** %3, align 8, !dbg !2620
  %8 = call %"class.std::exception"* @"??0exception@std@@QEAA@QEBDH@Z"(%"class.std::exception"* %6, i8* %7, i32 1) #11, !dbg !2621
  %9 = bitcast %"class.std::bad_alloc"* %5 to i32 (...)***, !dbg !2619
  store i32 (...)** bitcast (i8** @"??_7bad_alloc@std@@6B@" to i32 (...)**), i32 (...)*** %9, align 8, !dbg !2619
  ret %"class.std::bad_alloc"* %5, !dbg !2622
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(%"class.std::bad_array_new_length"* %0, i32 %1) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2623 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::bad_array_new_length"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2624, metadata !DIExpression()), !dbg !2625
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %5, metadata !2626, metadata !DIExpression()), !dbg !2625
  %6 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %5, align 8
  %7 = bitcast %"class.std::bad_array_new_length"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(%"class.std::bad_array_new_length"* %6) #11, !dbg !2627
  invoke void @fsf()
          to label %9 unwind label <badref>, !dbg !2627

9:                                                ; preds = %2
  %10 = icmp eq i32 %8, 0, !dbg !2627
  br i1 %10, label %13, label %11, !dbg !2627

11:                                               ; preds = %9
  %12 = bitcast %"class.std::bad_array_new_length"* %6 to i8*, !dbg !2627
  call void @"??3@YAXPEAX@Z"(i8* %12) #15, !dbg !2627
  br label %13, !dbg !2627

13:                                               ; preds = %11, %9
  %14 = load i8*, i8** %3, align 8, !dbg !2627
  ret i8* %14, !dbg !2627
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?what@exception@std@@UEBAPEBDXZ"(%"class.std::exception"* %0) unnamed_addr #0 comdat align 2 !dbg !2628 {
  %2 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %0, %"class.std::exception"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %2, metadata !2629, metadata !DIExpression()), !dbg !2631
  %3 = load %"class.std::exception"*, %"class.std::exception"** %2, align 8
  %4 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %3, i32 0, i32 1, !dbg !2632
  %5 = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %4, i32 0, i32 0, !dbg !2633
  %6 = load i8*, i8** %5, align 8, !dbg !2633
  %7 = icmp ne i8* %6, null, !dbg !2632
  br i1 %7, label %8, label %12, !dbg !2632

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %3, i32 0, i32 1, !dbg !2634
  %10 = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %9, i32 0, i32 0, !dbg !2635
  %11 = load i8*, i8** %10, align 8, !dbg !2635
  br label %13, !dbg !2632

12:                                               ; preds = %1
  br label %13, !dbg !2632

13:                                               ; preds = %12, %8
  %14 = phi i8* [ %11, %8 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", i64 0, i64 0), %12 ], !dbg !2632
  ret i8* %14, !dbg !2636
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@QEBDH@Z"(%"class.std::exception"* returned %0, i8* %1, i32 %2) unnamed_addr #3 comdat align 2 !dbg !2637 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::exception"*, align 8
  store i32 %2, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2638, metadata !DIExpression()), !dbg !2639
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2640, metadata !DIExpression()), !dbg !2641
  store %"class.std::exception"* %0, %"class.std::exception"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %6, metadata !2642, metadata !DIExpression()), !dbg !2643
  %7 = load %"class.std::exception"*, %"class.std::exception"** %6, align 8
  %8 = bitcast %"class.std::exception"* %7 to i32 (...)***, !dbg !2644
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %8, align 8, !dbg !2644
  %9 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %7, i32 0, i32 1, !dbg !2645
  %10 = bitcast %struct.__std_exception_data* %9 to i8*, !dbg !2645
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false), !dbg !2645
  %11 = load i8*, i8** %5, align 8, !dbg !2646
  %12 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %7, i32 0, i32 1, !dbg !2648
  %13 = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %12, i32 0, i32 0, !dbg !2649
  store i8* %11, i8** %13, align 8, !dbg !2650
  ret %"class.std::exception"* %7, !dbg !2651
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(%"class.std::bad_alloc"* %0, i32 %1) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2652 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::bad_alloc"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2654, metadata !DIExpression()), !dbg !2655
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %5, metadata !2656, metadata !DIExpression()), !dbg !2655
  %6 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %5, align 8
  %7 = bitcast %"class.std::bad_alloc"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %6) #11, !dbg !2657
  invoke void @fsf()
          to label %9 unwind label <badref>, !dbg !2657

9:                                                ; preds = %2
  %10 = icmp eq i32 %8, 0, !dbg !2657
  br i1 %10, label %13, label %11, !dbg !2657

11:                                               ; preds = %9
  %12 = bitcast %"class.std::bad_alloc"* %6 to i8*, !dbg !2657
  call void @"??3@YAXPEAX@Z"(i8* %12) #15, !dbg !2657
  br label %13, !dbg !2657

13:                                               ; preds = %11, %9
  %14 = load i8*, i8** %3, align 8, !dbg !2657
  ret i8* %14, !dbg !2657
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gexception@std@@UEAAPEAXI@Z"(%"class.std::exception"* %0, i32 %1) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2658 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::exception"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2659, metadata !DIExpression()), !dbg !2660
  store %"class.std::exception"* %0, %"class.std::exception"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %5, metadata !2661, metadata !DIExpression()), !dbg !2660
  %6 = load %"class.std::exception"*, %"class.std::exception"** %5, align 8
  %7 = bitcast %"class.std::exception"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %6) #11, !dbg !2662
  invoke void @fsf()
          to label %9 unwind label <badref>, !dbg !2662

9:                                                ; preds = %2
  %10 = icmp eq i32 %8, 0, !dbg !2662
  br i1 %10, label %13, label %11, !dbg !2662

11:                                               ; preds = %9
  %12 = bitcast %"class.std::exception"* %6 to i8*, !dbg !2662
  call void @"??3@YAXPEAX@Z"(i8* %12) #15, !dbg !2662
  br label %13, !dbg !2662

13:                                               ; preds = %11, %9
  %14 = load i8*, i8** %3, align 8, !dbg !2663
  ret i8* %14, !dbg !2663
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2664 {
  %2 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %0, %"class.std::exception"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %2, metadata !2665, metadata !DIExpression()), !dbg !2666
  %3 = load %"class.std::exception"*, %"class.std::exception"** %2, align 8
  %4 = bitcast %"class.std::exception"* %3 to i32 (...)***, !dbg !2667
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8, !dbg !2667
  %5 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %3, i32 0, i32 1, !dbg !2668
  invoke void @__std_exception_destroy(%struct.__std_exception_data* %5)
          to label %6 unwind label %7, !dbg !2670

6:                                                ; preds = %1
  ret void, !dbg !2671

7:                                                ; preds = %1
  %8 = cleanuppad within none [], !dbg !2670
  call void @__std_terminate() #12 [ "funclet"(token %8) ], !dbg !2670
  unreachable, !dbg !2670
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX@Z"(i8*) #9

declare dso_local void @__std_exception_destroy(%struct.__std_exception_data*) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2672 {
  %2 = alloca %"class.std::bad_alloc"*, align 8
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %2, metadata !2673, metadata !DIExpression()), !dbg !2674
  %3 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %2, align 8
  invoke void @fsf()
          to label %4 unwind label <badref>, !dbg !2675

4:                                                ; preds = %1
  %5 = bitcast %"class.std::bad_alloc"* %3 to %"class.std::exception"*, !dbg !2675
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %5) #11, !dbg !2675
  ret void, !dbg !2677
}

declare dso_local void @__std_exception_copy(%struct.__std_exception_data*, %struct.__std_exception_data*) #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @"??2@YAPEAX_K@Z"(i64) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %0, i8* %1, i64 %2) #3 comdat align 2 !dbg !2678 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %2, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2679, metadata !DIExpression()), !dbg !2680
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2681, metadata !DIExpression()), !dbg !2682
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2683, metadata !DIExpression()), !dbg !2684
  %7 = load i8*, i8** %6, align 8, !dbg !2685
  %8 = load i8*, i8** %5, align 8, !dbg !2686
  %9 = load i64, i64* %4, align 8, !dbg !2687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %9, i1 false), !dbg !2688
  ret i8* %7, !dbg !2689
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8** @"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0) #3 comdat !dbg !2690 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !2693, metadata !DIExpression()), !dbg !2694
  %3 = load i8**, i8*** %2, align 8, !dbg !2695
  ret i8** %3, !dbg !2696
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i8** @"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0) #3 comdat !dbg !2697 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !2706, metadata !DIExpression()), !dbg !2707
  %3 = load i8**, i8*** %2, align 8, !dbg !2708
  ret i8** %3, !dbg !2709
}

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %0, i8* %1) #0 comdat !dbg !2710 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2711, metadata !DIExpression()), !dbg !2712
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !2713, metadata !DIExpression()), !dbg !2714
  %5 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8, !dbg !2715
  %6 = load i8*, i8** %3, align 8, !dbg !2716
  %7 = call zeroext i1 @"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z"(%"class.std::basic_string"* %5, i8* %6) #11, !dbg !2717
  ret i1 %7, !dbg !2718
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z"(%"class.std::basic_string"* %0, i8* %1) #3 comdat align 2 !dbg !2719 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2720, metadata !DIExpression()), !dbg !2721
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !2722, metadata !DIExpression()), !dbg !2723
  %5 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %6 = load i8*, i8** %3, align 8, !dbg !2724
  %7 = call i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %6) #11, !dbg !2725
  %8 = load i8*, i8** %3, align 8, !dbg !2726
  %9 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i32 0, i32 0, !dbg !2727
  %10 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %9, i32 0, i32 0, !dbg !2728
  %11 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %10, i32 0, i32 1, !dbg !2729
  %12 = load i64, i64* %11, align 8, !dbg !2729
  %13 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i32 0, i32 0, !dbg !2730
  %14 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %13, i32 0, i32 0, !dbg !2731
  %15 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %14) #11, !dbg !2732
  %16 = call zeroext i1 @"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z"(i8* %15, i64 %12, i8* %8, i64 %7) #11, !dbg !2733
  ret i1 %16, !dbg !2734
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z"(i8* %0, i64 %1, i8* %2, i64 %3) #3 comdat !dbg !2735 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64 %3, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2744, metadata !DIExpression()), !dbg !2745
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2746, metadata !DIExpression()), !dbg !2747
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2748, metadata !DIExpression()), !dbg !2749
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2750, metadata !DIExpression()), !dbg !2751
  %9 = load i64, i64* %7, align 8, !dbg !2752
  %10 = load i64, i64* %5, align 8, !dbg !2753
  %11 = icmp eq i64 %9, %10, !dbg !2754
  br i1 %11, label %12, label %18, !dbg !2755

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8, !dbg !2756
  %14 = load i8*, i8** %6, align 8, !dbg !2757
  %15 = load i8*, i8** %8, align 8, !dbg !2758
  %16 = call i32 @"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z"(i8* %15, i8* %14, i64 %13) #11, !dbg !2759
  %17 = icmp eq i32 %16, 0, !dbg !2760
  br label %18

18:                                               ; preds = %12, %4
  %19 = phi i1 [ false, %4 ], [ %17, %12 ], !dbg !2761
  ret i1 %19, !dbg !2762
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %0) #3 comdat align 2 !dbg !2763 {
  %2 = alloca %"class.std::_String_val"*, align 8
  %3 = alloca i8*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !2764, metadata !DIExpression()), !dbg !2765
  %4 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2766, metadata !DIExpression()), !dbg !2767
  %5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !2768
  %6 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5 to [16 x i8]*, !dbg !2769
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !2768
  store i8* %7, i8** %3, align 8, !dbg !2767
  %8 = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %4) #11, !dbg !2770
  br i1 %8, label %9, label %14, !dbg !2772

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !2773
  %11 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %10 to i8**, !dbg !2775
  %12 = load i8*, i8** %11, align 8, !dbg !2775
  %13 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %12) #11, !dbg !2776
  store i8* %13, i8** %3, align 8, !dbg !2777
  br label %14, !dbg !2778

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %3, align 8, !dbg !2779
  ret i8* %15, !dbg !2780
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z"(i8* %0, i8* %1, i64 %2) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2781 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %2, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2782, metadata !DIExpression()), !dbg !2783
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2786, metadata !DIExpression()), !dbg !2787
  %7 = load i64, i64* %4, align 8, !dbg !2788
  %8 = load i8*, i8** %5, align 8, !dbg !2789
  %9 = load i8*, i8** %6, align 8, !dbg !2790
  %10 = invoke i32 @memcmp(i8* %9, i8* %8, i64 %7)
          to label %11 unwind label %12, !dbg !2791

11:                                               ; preds = %3
  ret i32 %10, !dbg !2792

12:                                               ; preds = %3
  %13 = cleanuppad within none [], !dbg !2791
  call void @__std_terminate() #12 [ "funclet"(token %13) ], !dbg !2791
  unreachable, !dbg !2791
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #2

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noinline noreturn optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn writeonly }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.dbg.cu = !{!9}
!llvm.linker.options = !{!1534, !1535, !1536, !1537, !1538}
!llvm.module.flags = !{!1539, !1540, !1541}
!llvm.ident = !{!1542}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_counter", linkageName: "?g_counter@returnFromFrame@tests@@3HA", scope: !2, file: !4, line: 8, type: !5, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "returnFromFrame", scope: !3)
!3 = !DINamespace(name: "tests", scope: null)
!4 = !DIFile(filename: "ReturnFromFrameTests.cpp", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "g_frameTwoMet", linkageName: "?g_frameTwoMet@returnFromFrame@tests@@3_NA", scope: !2, file: !4, line: 9, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !10, producer: "clang version 11.0.0 (https://github.com/ykfre/llvm-project.git 0785b9e4c1ca1c5deecfe71d37d3398ee84015c2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !26, globals: !709, imports: !716, nameTableKind: None)
!10 = !DIFile(filename: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\ReturnFromFrameTests.cpp", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!11 = !{!12, !19}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !14, file: !13, line: 25, baseType: !5, size: 32, elements: !15, identifier: ".?AW4float_denorm_style@std@@")
!13 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\limits", directory: "C:\\")
!14 = !DINamespace(name: "std", scope: null)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "denorm_indeterminate", value: -1)
!17 = !DIEnumerator(name: "denorm_absent", value: 0)
!18 = !DIEnumerator(name: "denorm_present", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_round_style", scope: !14, file: !13, line: 32, baseType: !5, size: 32, elements: !20, identifier: ".?AW4float_round_style@std@@")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "round_indeterminate", value: -1)
!22 = !DIEnumerator(name: "round_toward_zero", value: 0)
!23 = !DIEnumerator(name: "round_to_nearest", value: 1)
!24 = !DIEnumerator(name: "round_toward_infinity", value: 2)
!25 = !DIEnumerator(name: "round_toward_neg_infinity", value: 3)
!26 = !{!27, !28, !31, !32, !34, !36, !39, !41, !96}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !29, line: 61, baseType: !30)
!29 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\vadefs.h", directory: "C:\\")
!30 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !30)
!35 = !DIFile(filename: "temp\\Release\\lib\\clang\\11.0.0\\include\\stddef.h", directory: "C:\\temp2\\llvm-project")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!41 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !14, file: !42, line: 2205, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !43, templateParams: !654, identifier: ".?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@")
!42 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\xstring", directory: "C:\\")
!43 = !{!44, !46, !47, !49, !51, !52, !53, !194, !200, !203, !206, !209, !242, !245, !249, !252, !255, !258, !261, !264, !278, !281, !285, !288, !292, !296, !300, !320, !338, !341, !342, !343, !346, !349, !350, !355, !358, !359, !360, !361, !370, !373, !374, !375, !378, !381, !384, !387, !390, !391, !392, !395, !396, !399, !402, !403, !406, !407, !408, !409, !410, !411, !414, !417, !420, !423, !426, !429, !432, !435, !438, !441, !444, !445, !448, !451, !454, !457, !460, !463, !466, !469, !472, !475, !479, !480, !481, !484, !487, !488, !489, !494, !499, !500, !501, !502, !503, !504, !505, !506, !512, !518, !519, !520, !523, !524, !527, !530, !531, !532, !533, !534, !537, !538, !539, !540, !541, !544, !547, !550, !553, !554, !559, !560, !563, !566, !569, !572, !575, !576, !577, !578, !579, !580, !581, !582, !583, !586, !587, !588, !589, !590, !591, !594, !595, !596, !597, !598, !599, !602, !605, !608, !611, !614, !617, !620, !623, !626, !630, !633, !636, !637, !638, !639, !640, !641, !642, !649}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_BUF_SIZE", scope: !41, file: !42, line: 2242, baseType: !45, flags: DIFlagStaticMember, extraData: i64 16)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_ALLOC_MASK", scope: !41, file: !42, line: 2243, baseType: !45, flags: DIFlagStaticMember, extraData: i64 15)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_Can_memcpy_val", scope: !41, file: !42, line: 2255, baseType: !48, flags: DIFlagStaticMember)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_Memcpy_val_offset", scope: !41, file: !42, line: 2257, baseType: !50, flags: DIFlagStaticMember)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_Memcpy_val_size", scope: !41, file: !42, line: 2258, baseType: !50, flags: DIFlagStaticMember)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !41, file: !42, line: 2732, baseType: !45, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_Mypair", scope: !41, file: !42, line: 4332, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Compressed_pair<std::allocator<char>, std::_String_val<std::_Simple_types<char> >, true>", scope: !14, file: !55, line: 1327, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !56, templateParams: !190, identifier: ".?AV?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@")
!55 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\xmemory", directory: "C:\\")
!56 = !{!57, !95, !180, !185}
!57 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !54, baseType: !58, extraData: i32 0)
!58 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !14, file: !55, line: 761, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !59, templateParams: !93, identifier: ".?AV?$allocator@D@std@@")
!59 = !{!60, !66, !70, !74, !78, !82, !85, !90}
!60 = !DISubprogram(name: "address", linkageName: "?address@?$allocator@D@std@@QEBAPEADAEAD@Z", scope: !58, file: !55, line: 787, type: !61, scopeLine: 787, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{!32, !63, !65}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !33, size: 64)
!66 = !DISubprogram(name: "address", linkageName: "?address@?$allocator@D@std@@QEBAPEBDAEBD@Z", scope: !58, file: !55, line: 791, type: !67, scopeLine: 791, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{!39, !63, !69}
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !40, size: 64)
!70 = !DISubprogram(name: "allocator", scope: !58, file: !55, line: 795, type: !71, scopeLine: 795, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!74 = !DISubprogram(name: "allocator", scope: !58, file: !55, line: 797, type: !75, scopeLine: 797, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !73, !77}
!77 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !64, size: 64)
!78 = !DISubprogram(name: "deallocate", linkageName: "?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z", scope: !58, file: !55, line: 801, type: !79, scopeLine: 801, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !73, !81, !50}
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!82 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$allocator@D@std@@QEAAPEAD_K@Z", scope: !58, file: !55, line: 806, type: !83, scopeLine: 806, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!83 = !DISubroutineType(types: !84)
!84 = !{!32, !73, !50}
!85 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$allocator@D@std@@QEAAPEAD_KPEBX@Z", scope: !58, file: !55, line: 810, type: !86, scopeLine: 810, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{!32, !73, !50, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!90 = !DISubprogram(name: "max_size", linkageName: "?max_size@?$allocator@D@std@@QEBA_KXZ", scope: !58, file: !55, line: 825, type: !91, scopeLine: 825, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!91 = !DISubroutineType(types: !92)
!92 = !{!34, !63}
!93 = !{!94}
!94 = !DITemplateTypeParameter(name: "_Ty", type: !33)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_Myval2", scope: !54, file: !55, line: 1329, baseType: !96, size: 256, flags: DIFlagPublic)
!96 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_String_val<std::_Simple_types<char> >", scope: !14, file: !42, line: 2114, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !97, templateParams: !178, identifier: ".?AV?$_String_val@U?$_Simple_types@D@std@@@std@@")
!97 = !{!98, !120, !127, !128, !148, !149, !150, !154, !158, !165, !168, !171, !172, !175}
!98 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !96, baseType: !99, flags: DIFlagPublic, extraData: i32 0)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Container_base", scope: !14, file: !55, line: 1238, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Container_base0", scope: !14, file: !55, line: 1064, size: 8, flags: DIFlagTypePassByValue, elements: !101, identifier: ".?AU_Container_base0@std@@")
!101 = !{!102, !106, !110, !117}
!102 = !DISubprogram(name: "_Orphan_all", linkageName: "?_Orphan_all@_Container_base0@std@@QEAAXXZ", scope: !100, file: !55, line: 1065, type: !103, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!106 = !DISubprogram(name: "_Swap_proxy_and_iterators", linkageName: "?_Swap_proxy_and_iterators@_Container_base0@std@@QEAAXAEAU12@@Z", scope: !100, file: !55, line: 1066, type: !107, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !105, !109}
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100, size: 64)
!110 = !DISubprogram(name: "_Alloc_proxy", linkageName: "?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z", scope: !100, file: !55, line: 1067, type: !111, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !105, !113}
!113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Fake_allocator", scope: !14, file: !55, line: 1062, size: 8, flags: DIFlagTypePassByValue, elements: !116, identifier: ".?AU_Fake_allocator@std@@")
!116 = !{}
!117 = !DISubprogram(name: "_Reload_proxy", linkageName: "?_Reload_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@0@Z", scope: !100, file: !55, line: 1068, type: !118, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !105, !113, !113}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_BUF_SIZE", scope: !96, file: !42, line: 2127, baseType: !121, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 16)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !96, file: !42, line: 2117, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !124, file: !55, line: 753, baseType: !34)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Simple_types<char>", scope: !14, file: !55, line: 750, size: 8, flags: DIFlagTypePassByValue, elements: !116, templateParams: !125, identifier: ".?AU?$_Simple_types@D@std@@")
!125 = !{!126}
!126 = !DITemplateTypeParameter(name: "_Value_type", type: !33)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_ALLOC_MASK", scope: !96, file: !42, line: 2129, baseType: !121, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 15)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_Bx", scope: !96, file: !42, line: 2185, baseType: !129, size: 128, flags: DIFlagPublic)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Bxty", scope: !96, file: !42, line: 2177, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !130, identifier: ".?AT_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@")
!130 = !{!131, !137, !141, !143, !147}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_Buf", scope: !129, file: !42, line: 2182, baseType: !132, size: 128)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !135)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !96, file: !42, line: 2116, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !124, file: !55, line: 752, baseType: !33)
!135 = !{!136}
!136 = !DISubrange(count: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_Ptr", scope: !129, file: !42, line: 2183, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !96, file: !42, line: 2119, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !124, file: !55, line: 755, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_Alias", scope: !129, file: !42, line: 2184, baseType: !142, size: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !135)
!143 = !DISubprogram(name: "_Bxty", scope: !129, file: !42, line: 2178, type: !144, scopeLine: 2178, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!147 = !DISubprogram(name: "~_Bxty", scope: !129, file: !42, line: 2180, type: !144, scopeLine: 2180, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_Mysize", scope: !96, file: !42, line: 2187, baseType: !122, size: 64, offset: 128, flags: DIFlagPublic)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_Myres", scope: !96, file: !42, line: 2188, baseType: !122, size: 64, offset: 192, flags: DIFlagPublic)
!150 = !DISubprogram(name: "_String_val", scope: !96, file: !42, line: 2124, type: !151, scopeLine: 2124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ", scope: !96, file: !42, line: 2134, type: !155, scopeLine: 2134, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !153}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!158 = !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ", scope: !96, file: !42, line: 2143, type: !159, scopeLine: 2143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !163}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!165 = !DISubprogram(name: "_Large_string_engaged", linkageName: "?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ", scope: !96, file: !42, line: 2152, type: !166, scopeLine: 2152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!166 = !DISubroutineType(types: !167)
!167 = !{!8, !163}
!168 = !DISubprogram(name: "_Check_offset", linkageName: "?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z", scope: !96, file: !42, line: 2156, type: !169, scopeLine: 2156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !163, !121}
!171 = !DISubprogram(name: "_Check_offset_exclusive", linkageName: "?_Check_offset_exclusive@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z", scope: !96, file: !42, line: 2162, type: !169, scopeLine: 2162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!172 = !DISubprogram(name: "_Xran", linkageName: "?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ", scope: !96, file: !42, line: 2168, type: !173, scopeLine: 2168, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember | DIFlagNoReturn, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !DISubprogram(name: "_Clamp_suffix_size", linkageName: "?_Clamp_suffix_size@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_K_K0@Z", scope: !96, file: !42, line: 2172, type: !176, scopeLine: 2172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!122, !163, !121, !121}
!178 = !{!179}
!179 = !DITemplateTypeParameter(name: "_Val_types", type: !124)
!180 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ", scope: !54, file: !55, line: 1343, type: !181, scopeLine: 1343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !58, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!185 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ", scope: !54, file: !55, line: 1347, type: !186, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!77, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!190 = !{!191, !192, !193}
!191 = !DITemplateTypeParameter(name: "_Ty1", type: !58)
!192 = !DITemplateTypeParameter(name: "_Ty2", type: !96)
!193 = !DITemplateValueParameter(type: !8, value: i8 1)
!194 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2272, type: !195, scopeLine: 2272, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197, !198}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!198 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!200 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2280, type: !201, scopeLine: 2280, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !197, !198, !77}
!203 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2287, type: !204, scopeLine: 2287, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !197}
!206 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2292, type: !207, scopeLine: 2292, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !197, !77}
!209 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2297, type: !210, scopeLine: 2297, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !197, !198, !212, !77}
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !41, file: !42, line: 2228, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !215, file: !55, line: 664, baseType: !34)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Default_allocator_traits<std::allocator<char> >", scope: !14, file: !55, line: 655, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !240, identifier: ".?AU?$_Default_allocator_traits@V?$allocator@D@std@@@std@@")
!216 = !{!217, !226, !230, !234, !237}
!217 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SAPEADAEAV?$allocator@D@2@_K@Z", scope: !215, file: !55, line: 678, type: !218, scopeLine: 678, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !183, !224}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !215, file: !55, line: 659, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !215, file: !55, line: 657, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !58, file: !55, line: 768, baseType: !33)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !55, line: 664, baseType: !34)
!226 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SAPEADAEAV?$allocator@D@2@_KPEBX@Z", scope: !215, file: !55, line: 683, type: !227, scopeLine: 683, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!220, !183, !224, !229}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !55, line: 662, baseType: !88)
!230 = !DISubprogram(name: "deallocate", linkageName: "?deallocate@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SAXAEAV?$allocator@D@2@QEAD_K@Z", scope: !215, file: !55, line: 687, type: !231, scopeLine: 687, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !183, !233, !224}
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!234 = !DISubprogram(name: "max_size", linkageName: "?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z", scope: !215, file: !55, line: 702, type: !235, scopeLine: 702, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!214, !77}
!237 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z", scope: !215, file: !55, line: 706, type: !238, scopeLine: 706, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!58, !77}
!240 = !{!241}
!241 = !DITemplateTypeParameter(name: "_Alloc", type: !58)
!242 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2306, type: !243, scopeLine: 2306, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !197, !198, !212, !212, !77}
!245 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2316, type: !246, scopeLine: 2316, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !197, !248, !212}
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!249 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2325, type: !250, scopeLine: 2325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !197, !248, !212, !77}
!252 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2335, type: !253, scopeLine: 2335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !197, !248}
!255 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2346, type: !256, scopeLine: 2346, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !197, !248, !77}
!258 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2354, type: !259, scopeLine: 2354, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !197, !212, !40}
!261 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2366, type: !262, scopeLine: 2366, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !197, !212, !40, !77}
!264 = !DISubprogram(name: "_Construct", linkageName: "?_Construct@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXQEAD0Urandom_access_iterator_tag@2@@Z", scope: !41, file: !42, line: 2404, type: !265, scopeLine: 2404, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !197, !81, !81, !267}
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !14, file: !268, line: 238, size: 8, flags: DIFlagTypePassByValue, elements: !269, identifier: ".?AUrandom_access_iterator_tag@std@@")
!268 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\xutility", directory: "C:\\")
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !267, baseType: !271, extraData: i32 0)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !14, file: !268, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !272, identifier: ".?AUbidirectional_iterator_tag@std@@")
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !271, baseType: !274, extraData: i32 0)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !14, file: !268, line: 234, size: 8, flags: DIFlagTypePassByValue, elements: !275, identifier: ".?AUforward_iterator_tag@std@@")
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !274, baseType: !277, extraData: i32 0)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !14, file: !268, line: 230, size: 8, flags: DIFlagTypePassByValue, elements: !116, identifier: ".?AUinput_iterator_tag@std@@")
!278 = !DISubprogram(name: "_Construct", linkageName: "?_Construct@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXQEBD0Urandom_access_iterator_tag@2@@Z", scope: !41, file: !42, line: 2411, type: !279, scopeLine: 2411, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !197, !248, !248, !267}
!281 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2418, type: !282, scopeLine: 2418, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !197, !284}
!284 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !41, size: 64)
!285 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2423, type: !286, scopeLine: 2423, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !197, !284, !77}
!288 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2440, type: !289, scopeLine: 2440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !197, !291, !198, !248, !212, !248, !212}
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "_String_constructor_concat_tag", scope: !14, file: !42, line: 2195, flags: DIFlagFwdDecl, identifier: ".?AU_String_constructor_concat_tag@std@@")
!292 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2468, type: !293, scopeLine: 2468, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !197, !291, !295, !295}
!295 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !41, size: 64)
!296 = !DISubprogram(name: "_Move_assign", linkageName: "?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z", scope: !41, file: !42, line: 2558, type: !297, scopeLine: 2558, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !197, !295, !299}
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Equal_allocators", scope: !14, file: !55, line: 721, flags: DIFlagFwdDecl, identifier: ".?AU_Equal_allocators@std@@")
!300 = !DISubprogram(name: "_Move_assign", linkageName: "?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z", scope: !41, file: !42, line: 2564, type: !301, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !197, !295, !303}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Propagate_allocators", scope: !14, file: !55, line: 722, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !14, file: !305, line: 41, baseType: !306)
!305 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\xtr1common", directory: "C:\\")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_constant<true>", scope: !14, file: !305, line: 39, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !14, file: !305, line: 22, size: 8, flags: DIFlagTypePassByValue, elements: !308, templateParams: !317, identifier: ".?AU?$integral_constant@_N$00@std@@")
!308 = !{!309, !310, !316}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !305, line: 23, baseType: !48, flags: DIFlagStaticMember)
!310 = !DISubprogram(name: "operator bool", linkageName: "??B?$integral_constant@_N$00@std@@QEBA_NXZ", scope: !307, file: !305, line: 28, type: !311, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !307, file: !305, line: 25, baseType: !8)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!316 = !DISubprogram(name: "operator()", linkageName: "??R?$integral_constant@_N$00@std@@QEBA_NXZ", scope: !307, file: !305, line: 32, type: !311, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!317 = !{!318, !319}
!318 = !DITemplateTypeParameter(name: "_Ty", type: !8)
!319 = !DITemplateValueParameter(name: "_Val", type: !8, value: i8 1)
!320 = !DISubprogram(name: "_Move_assign", linkageName: "?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$0A@@2@@Z", scope: !41, file: !42, line: 2577, type: !321, scopeLine: 2577, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !197, !295, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "_No_propagate_allocators", scope: !14, file: !55, line: 723, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !14, file: !305, line: 42, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_constant<false>", scope: !14, file: !305, line: 39, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !14, file: !305, line: 22, size: 8, flags: DIFlagTypePassByValue, elements: !327, templateParams: !336, identifier: ".?AU?$integral_constant@_N$0A@@std@@")
!327 = !{!328, !329, !335}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !305, line: 23, baseType: !48, flags: DIFlagStaticMember)
!329 = !DISubprogram(name: "operator bool", linkageName: "??B?$integral_constant@_N$0A@@std@@QEBA_NXZ", scope: !326, file: !305, line: 28, type: !330, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !326, file: !305, line: 25, baseType: !8)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!335 = !DISubprogram(name: "operator()", linkageName: "??R?$integral_constant@_N$0A@@std@@QEBA_NXZ", scope: !326, file: !305, line: 32, type: !330, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!336 = !{!318, !337}
!337 = !DITemplateValueParameter(name: "_Val", type: !8, value: i8 0)
!338 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z", scope: !41, file: !42, line: 2586, type: !339, scopeLine: 2586, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!339 = !DISubroutineType(types: !340)
!340 = !{!295, !197, !284}
!341 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@$$QEAV12@@Z", scope: !41, file: !42, line: 2594, type: !339, scopeLine: 2594, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!342 = !DISubprogram(name: "_Memcpy_val_from", linkageName: "?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !41, file: !42, line: 2600, type: !195, scopeLine: 2600, flags: DIFlagPrototyped, spFlags: 0)
!343 = !DISubprogram(name: "_Take_contents", linkageName: "?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z", scope: !41, file: !42, line: 2609, type: !344, scopeLine: 2609, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !197, !295, !304}
!346 = !DISubprogram(name: "_Take_contents", linkageName: "?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$0A@@2@@Z", scope: !41, file: !42, line: 2628, type: !347, scopeLine: 2628, flags: DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !197, !295, !324}
!349 = !DISubprogram(name: "_Construct_lv_contents", linkageName: "?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !41, file: !42, line: 2650, type: !195, scopeLine: 2650, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DISubprogram(name: "basic_string", scope: !41, file: !42, line: 2676, type: !351, scopeLine: 2676, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !197, !353, !77}
!353 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !14, file: !354, line: 23, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$initializer_list@D@std@@")
!354 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\initializer_list", directory: "C:\\")
!355 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@V?$initializer_list@D@1@@Z", scope: !41, file: !42, line: 2685, type: !356, scopeLine: 2685, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!356 = !DISubroutineType(types: !357)
!357 = !{!295, !197, !353}
!358 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@V?$initializer_list@D@1@@Z", scope: !41, file: !42, line: 2689, type: !356, scopeLine: 2689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!359 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$initializer_list@D@2@@Z", scope: !41, file: !42, line: 2693, type: !356, scopeLine: 2693, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!360 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$initializer_list@D@2@@Z", scope: !41, file: !42, line: 2697, type: !356, scopeLine: 2697, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!361 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$initializer_list@D@2@@Z", scope: !41, file: !42, line: 2701, type: !362, scopeLine: 2701, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !197, !366, !369}
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !41, file: !42, line: 2235, baseType: !365)
!365 = !DICompositeType(tag: DW_TAG_class_type, name: "_String_iterator<std::_String_val<std::_Simple_types<char> > >", scope: !14, file: !42, line: 1986, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@")
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !41, file: !42, line: 2236, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_class_type, name: "_String_const_iterator<std::_String_val<std::_Simple_types<char> > >", scope: !14, file: !42, line: 1758, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@")
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!370 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0V?$initializer_list@D@2@@Z", scope: !41, file: !42, line: 2710, type: !371, scopeLine: 2710, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!295, !197, !366, !366, !369}
!373 = !DISubprogram(name: "~basic_string", scope: !41, file: !42, line: 2722, type: !204, scopeLine: 2722, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!374 = !DISubprogram(name: "_Copy_assign_val_from_small", linkageName: "?_Copy_assign_val_from_small@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !41, file: !42, line: 2735, type: !195, scopeLine: 2735, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DISubprogram(name: "_Copy_assign", linkageName: "?_Copy_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@U?$integral_constant@_N$0A@@2@@Z", scope: !41, file: !42, line: 2748, type: !376, scopeLine: 2748, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !197, !198, !324}
!378 = !DISubprogram(name: "_Copy_assign", linkageName: "?_Copy_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@U?$integral_constant@_N$00@2@@Z", scope: !41, file: !42, line: 2753, type: !379, scopeLine: 2753, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !197, !198, !304}
!381 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@AEBV01@@Z", scope: !41, file: !42, line: 2784, type: !382, scopeLine: 2784, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{!295, !197, !198}
!384 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z", scope: !41, file: !42, line: 2799, type: !385, scopeLine: 2799, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!295, !197, !248}
!387 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@D@Z", scope: !41, file: !42, line: 2803, type: !388, scopeLine: 2803, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!388 = !DISubroutineType(types: !389)
!389 = !{!295, !197, !40}
!390 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@AEBV01@@Z", scope: !41, file: !42, line: 2811, type: !382, scopeLine: 2811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!391 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z", scope: !41, file: !42, line: 2822, type: !385, scopeLine: 2822, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!392 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@D@Z", scope: !41, file: !42, line: 2826, type: !393, scopeLine: 2826, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{!295, !197, !33}
!395 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z", scope: !41, file: !42, line: 2831, type: !382, scopeLine: 2831, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!396 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@_K_K@Z", scope: !41, file: !42, line: 2835, type: !397, scopeLine: 2835, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!397 = !DISubroutineType(types: !398)
!398 = !{!295, !197, !198, !212, !213}
!399 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z", scope: !41, file: !42, line: 2857, type: !400, scopeLine: 2857, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!400 = !DISubroutineType(types: !401)
!401 = !{!295, !197, !248, !212}
!402 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z", scope: !41, file: !42, line: 2879, type: !385, scopeLine: 2879, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!403 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z", scope: !41, file: !42, line: 2883, type: !404, scopeLine: 2883, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{!295, !197, !212, !40}
!406 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z", scope: !41, file: !42, line: 2937, type: !382, scopeLine: 2937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!407 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@_K_K@Z", scope: !41, file: !42, line: 2942, type: !397, scopeLine: 2942, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!408 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z", scope: !41, file: !42, line: 2964, type: !400, scopeLine: 2964, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!409 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z", scope: !41, file: !42, line: 2983, type: !385, scopeLine: 2983, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!410 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z", scope: !41, file: !42, line: 2987, type: !404, scopeLine: 2987, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!411 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KAEBV12@@Z", scope: !41, file: !42, line: 3050, type: !412, scopeLine: 3050, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!295, !197, !212, !198}
!414 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KAEBV12@0_K@Z", scope: !41, file: !42, line: 3054, type: !415, scopeLine: 3054, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!295, !197, !212, !198, !212, !213}
!417 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD0@Z", scope: !41, file: !42, line: 3077, type: !418, scopeLine: 3077, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!418 = !DISubroutineType(types: !419)
!419 = !{!295, !197, !212, !248, !212}
!420 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD@Z", scope: !41, file: !42, line: 3116, type: !421, scopeLine: 3116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{!295, !197, !212, !248}
!423 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z", scope: !41, file: !42, line: 3120, type: !424, scopeLine: 3120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!295, !197, !212, !212, !40}
!426 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@D@Z", scope: !41, file: !42, line: 3144, type: !427, scopeLine: 3144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!364, !197, !366, !40}
!429 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@_KD@Z", scope: !41, file: !42, line: 3153, type: !430, scopeLine: 3153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{!364, !197, !366, !212, !40}
!432 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K@Z", scope: !41, file: !42, line: 3209, type: !433, scopeLine: 3209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!295, !197, !212}
!435 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_K@Z", scope: !41, file: !42, line: 3215, type: !436, scopeLine: 3215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!436 = !DISubroutineType(types: !437)
!437 = !{!295, !197, !212, !213}
!438 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@@Z", scope: !41, file: !42, line: 3227, type: !439, scopeLine: 3227, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!364, !197, !366}
!441 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0@Z", scope: !41, file: !42, line: 3236, type: !442, scopeLine: 3236, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!442 = !DISubroutineType(types: !443)
!443 = !{!364, !197, !366, !366}
!444 = !DISubprogram(name: "clear", linkageName: "?clear@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !41, file: !42, line: 3246, type: !204, scopeLine: 3246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!445 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0AEBV12@@Z", scope: !41, file: !42, line: 3250, type: !446, scopeLine: 3250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{!295, !197, !212, !212, !198}
!448 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_KAEBV12@01@Z", scope: !41, file: !42, line: 3255, type: !449, scopeLine: 3255, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!295, !197, !212, !213, !198, !212, !213}
!451 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_KQEBD0@Z", scope: !41, file: !42, line: 3280, type: !452, scopeLine: 3280, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!295, !197, !212, !213, !248, !212}
!454 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0QEBD@Z", scope: !41, file: !42, line: 3340, type: !455, scopeLine: 3340, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!295, !197, !212, !212, !248}
!457 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_K0D@Z", scope: !41, file: !42, line: 3345, type: !458, scopeLine: 3345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!458 = !DISubroutineType(types: !459)
!459 = !{!295, !197, !212, !213, !212, !40}
!460 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0AEBV12@@Z", scope: !41, file: !42, line: 3377, type: !461, scopeLine: 3377, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{!295, !197, !366, !366, !198}
!463 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0QEBD_K@Z", scope: !41, file: !42, line: 3400, type: !464, scopeLine: 3400, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!295, !197, !366, !366, !248, !212}
!466 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0QEBD@Z", scope: !41, file: !42, line: 3411, type: !467, scopeLine: 3411, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!295, !197, !366, !366, !248}
!469 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0_KD@Z", scope: !41, file: !42, line: 3421, type: !470, scopeLine: 3421, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!470 = !DISubroutineType(types: !471)
!471 = !{!295, !197, !366, !366, !212, !40}
!472 = !DISubprogram(name: "begin", linkageName: "?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3485, type: !473, scopeLine: 3485, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!364, !197}
!475 = !DISubprogram(name: "begin", linkageName: "?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3489, type: !476, scopeLine: 3489, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!367, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DISubprogram(name: "end", linkageName: "?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3493, type: !473, scopeLine: 3493, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!480 = !DISubprogram(name: "end", linkageName: "?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3499, type: !476, scopeLine: 3499, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!481 = !DISubprogram(name: "_Unchecked_begin", linkageName: "?_Unchecked_begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAPEADXZ", scope: !41, file: !42, line: 3505, type: !482, scopeLine: 3505, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!482 = !DISubroutineType(types: !483)
!483 = !{!32, !197}
!484 = !DISubprogram(name: "_Unchecked_begin", linkageName: "?_Unchecked_begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !41, file: !42, line: 3509, type: !485, scopeLine: 3509, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!39, !478}
!487 = !DISubprogram(name: "_Unchecked_end", linkageName: "?_Unchecked_end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAPEADXZ", scope: !41, file: !42, line: 3513, type: !482, scopeLine: 3513, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!488 = !DISubprogram(name: "_Unchecked_end", linkageName: "?_Unchecked_end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !41, file: !42, line: 3517, type: !485, scopeLine: 3517, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!489 = !DISubprogram(name: "rbegin", linkageName: "?rbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$reverse_iterator@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3521, type: !490, scopeLine: 3521, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !197}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !41, file: !42, line: 2238, baseType: !493)
!493 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_String_iterator<std::_String_val<std::_Simple_types<char> > > >", scope: !14, file: !268, line: 1808, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$reverse_iterator@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@")
!494 = !DISubprogram(name: "rbegin", linkageName: "?rbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3525, type: !495, scopeLine: 3525, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !478}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !41, file: !42, line: 2239, baseType: !498)
!498 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_String_const_iterator<std::_String_val<std::_Simple_types<char> > > >", scope: !14, file: !268, line: 1808, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@")
!499 = !DISubprogram(name: "rend", linkageName: "?rend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$reverse_iterator@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3529, type: !490, scopeLine: 3529, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!500 = !DISubprogram(name: "rend", linkageName: "?rend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3533, type: !495, scopeLine: 3533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!501 = !DISubprogram(name: "cbegin", linkageName: "?cbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3537, type: !476, scopeLine: 3537, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!502 = !DISubprogram(name: "cend", linkageName: "?cend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3541, type: !476, scopeLine: 3541, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!503 = !DISubprogram(name: "crbegin", linkageName: "?crbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3545, type: !495, scopeLine: 3545, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!504 = !DISubprogram(name: "crend", linkageName: "?crend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !41, file: !42, line: 3549, type: !495, scopeLine: 3549, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!505 = !DISubprogram(name: "shrink_to_fit", linkageName: "?shrink_to_fit@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !41, file: !42, line: 3553, type: !204, scopeLine: 3553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!506 = !DISubprogram(name: "at", linkageName: "?at@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z", scope: !41, file: !42, line: 3576, type: !507, scopeLine: 3576, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !197, !212}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !41, file: !42, line: 2232, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !41, file: !42, line: 2227, baseType: !33)
!512 = !DISubprogram(name: "at", linkageName: "?at@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z", scope: !41, file: !42, line: 3581, type: !513, scopeLine: 3581, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !478, !212}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !41, file: !42, line: 2233, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!518 = !DISubprogram(name: "operator[]", linkageName: "??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z", scope: !41, file: !42, line: 3586, type: !507, scopeLine: 3586, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!519 = !DISubprogram(name: "operator[]", linkageName: "??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z", scope: !41, file: !42, line: 3593, type: !513, scopeLine: 3593, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!520 = !DISubprogram(name: "push_back", linkageName: "?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z", scope: !41, file: !42, line: 3607, type: !521, scopeLine: 3607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !197, !40}
!523 = !DISubprogram(name: "pop_back", linkageName: "?pop_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !41, file: !42, line: 3627, type: !204, scopeLine: 3627, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!524 = !DISubprogram(name: "front", linkageName: "?front@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEADXZ", scope: !41, file: !42, line: 3635, type: !525, scopeLine: 3635, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!509, !197}
!527 = !DISubprogram(name: "front", linkageName: "?front@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBDXZ", scope: !41, file: !42, line: 3643, type: !528, scopeLine: 3643, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!515, !478}
!530 = !DISubprogram(name: "back", linkageName: "?back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEADXZ", scope: !41, file: !42, line: 3651, type: !525, scopeLine: 3651, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!531 = !DISubprogram(name: "back", linkageName: "?back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBDXZ", scope: !41, file: !42, line: 3659, type: !528, scopeLine: 3659, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!532 = !DISubprogram(name: "c_str", linkageName: "?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !41, file: !42, line: 3667, type: !485, scopeLine: 3667, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!533 = !DISubprogram(name: "data", linkageName: "?data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !41, file: !42, line: 3671, type: !485, scopeLine: 3671, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!534 = !DISubprogram(name: "length", linkageName: "?length@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !41, file: !42, line: 3681, type: !535, scopeLine: 3681, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{!213, !478}
!537 = !DISubprogram(name: "size", linkageName: "?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !41, file: !42, line: 3685, type: !535, scopeLine: 3685, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!538 = !DISubprogram(name: "max_size", linkageName: "?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !41, file: !42, line: 3689, type: !535, scopeLine: 3689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!539 = !DISubprogram(name: "resize", linkageName: "?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z", scope: !41, file: !42, line: 3698, type: !259, scopeLine: 3698, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!540 = !DISubprogram(name: "capacity", linkageName: "?capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !41, file: !42, line: 3708, type: !535, scopeLine: 3708, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DISubprogram(name: "reserve", linkageName: "?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z", scope: !41, file: !42, line: 3733, type: !542, scopeLine: 3733, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !197, !212}
!544 = !DISubprogram(name: "empty", linkageName: "?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ", scope: !41, file: !42, line: 3763, type: !545, scopeLine: 3763, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!8, !478}
!547 = !DISubprogram(name: "copy", linkageName: "?copy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEAD_K_K@Z", scope: !41, file: !42, line: 3767, type: !548, scopeLine: 3767, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!548 = !DISubroutineType(types: !549)
!549 = !{!213, !478, !81, !213, !212}
!550 = !DISubprogram(name: "_Copy_s", linkageName: "?_Copy_s@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEAD_K_K1@Z", scope: !41, file: !42, line: 3775, type: !551, scopeLine: 3775, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!213, !478, !81, !212, !213, !212}
!553 = !DISubprogram(name: "_Swap_data", linkageName: "?_Swap_data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@U?$integral_constant@_N$00@2@@Z", scope: !41, file: !42, line: 3784, type: !344, scopeLine: 3784, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!554 = !DISubprogram(name: "_Swap_bx_large_with_small", linkageName: "?_Swap_bx_large_with_small@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV?$_String_val@U?$_Simple_types@D@std@@@2@0@Z", scope: !41, file: !42, line: 3796, type: !555, scopeLine: 3796, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !197, !557, !557}
!557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Scary_val", scope: !41, file: !42, line: 2212, baseType: !96)
!559 = !DISubprogram(name: "_Swap_data", linkageName: "?_Swap_data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@U?$integral_constant@_N$0A@@2@@Z", scope: !41, file: !42, line: 3804, type: !347, scopeLine: 3804, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!560 = !DISubprogram(name: "swap", linkageName: "?swap@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z", scope: !41, file: !42, line: 3831, type: !561, scopeLine: 3831, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !197, !295}
!563 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !41, file: !42, line: 3865, type: !564, scopeLine: 3865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!213, !478, !198, !212}
!566 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !41, file: !42, line: 3871, type: !567, scopeLine: 3871, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!213, !478, !248, !212, !212}
!569 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !41, file: !42, line: 3878, type: !570, scopeLine: 3878, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!570 = !DISubroutineType(types: !571)
!571 = !{!213, !478, !248, !212}
!572 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !41, file: !42, line: 3885, type: !573, scopeLine: 3885, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!573 = !DISubroutineType(types: !574)
!574 = !{!213, !478, !40, !212}
!575 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !41, file: !42, line: 3901, type: !564, scopeLine: 3901, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!576 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !41, file: !42, line: 3907, type: !567, scopeLine: 3907, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!577 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !41, file: !42, line: 3914, type: !570, scopeLine: 3914, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!578 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !41, file: !42, line: 3921, type: !573, scopeLine: 3921, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!579 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !41, file: !42, line: 3937, type: !564, scopeLine: 3937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!580 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !41, file: !42, line: 3944, type: !567, scopeLine: 3944, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!581 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !41, file: !42, line: 3951, type: !570, scopeLine: 3951, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!582 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !41, file: !42, line: 3958, type: !573, scopeLine: 3958, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!583 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !41, file: !42, line: 3974, type: !584, scopeLine: 3974, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!213, !478, !198, !213}
!586 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !41, file: !42, line: 3981, type: !567, scopeLine: 3981, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!587 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !41, file: !42, line: 3988, type: !570, scopeLine: 3988, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!588 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !41, file: !42, line: 3995, type: !573, scopeLine: 3995, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!589 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !41, file: !42, line: 4012, type: !564, scopeLine: 4012, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!590 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !41, file: !42, line: 4019, type: !567, scopeLine: 4019, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!591 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !41, file: !42, line: 4026, type: !592, scopeLine: 4026, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{!213, !478, !248, !213}
!594 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !41, file: !42, line: 4033, type: !573, scopeLine: 4033, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!595 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !41, file: !42, line: 4051, type: !564, scopeLine: 4051, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!596 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !41, file: !42, line: 4058, type: !567, scopeLine: 4058, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!597 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !41, file: !42, line: 4065, type: !570, scopeLine: 4065, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!598 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !41, file: !42, line: 4072, type: !573, scopeLine: 4072, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!599 = !DISubprogram(name: "substr", linkageName: "?substr@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV12@_K0@Z", scope: !41, file: !42, line: 4085, type: !600, scopeLine: 4085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!600 = !DISubroutineType(types: !601)
!601 = !{!41, !478, !212, !212}
!602 = !DISubprogram(name: "_Equal", linkageName: "?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NAEBV12@@Z", scope: !41, file: !42, line: 4090, type: !603, scopeLine: 4090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{!8, !478, !198}
!605 = !DISubprogram(name: "_Equal", linkageName: "?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z", scope: !41, file: !42, line: 4095, type: !606, scopeLine: 4095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!8, !478, !248}
!608 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAHAEBV12@@Z", scope: !41, file: !42, line: 4128, type: !609, scopeLine: 4128, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{!5, !478, !198}
!611 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0AEBV12@@Z", scope: !41, file: !42, line: 4133, type: !612, scopeLine: 4133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!612 = !DISubroutineType(types: !613)
!613 = !{!5, !478, !213, !213, !198}
!614 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0AEBV12@00@Z", scope: !41, file: !42, line: 4140, type: !615, scopeLine: 4140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!5, !478, !212, !212, !198, !212, !212}
!617 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAHQEBD@Z", scope: !41, file: !42, line: 4149, type: !618, scopeLine: 4149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!5, !478, !248}
!620 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0QEBD@Z", scope: !41, file: !42, line: 4154, type: !621, scopeLine: 4154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!621 = !DISubroutineType(types: !622)
!622 = !{!5, !478, !212, !212, !248}
!623 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0QEBD0@Z", scope: !41, file: !42, line: 4161, type: !624, scopeLine: 4161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!5, !478, !212, !212, !248, !212}
!626 = !DISubprogram(name: "get_allocator", linkageName: "?get_allocator@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$allocator@D@2@XZ", scope: !41, file: !42, line: 4194, type: !627, scopeLine: 4194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !478}
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !41, file: !42, line: 2225, baseType: !58)
!630 = !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z", scope: !41, file: !42, line: 4199, type: !631, scopeLine: 4199, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!213, !212, !212, !212}
!633 = !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z", scope: !41, file: !42, line: 4213, type: !634, scopeLine: 4213, flags: DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{!213, !478, !212}
!636 = !DISubprogram(name: "_Become_small", linkageName: "?_Become_small@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !41, file: !42, line: 4275, type: !204, scopeLine: 4275, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubprogram(name: "_Eos", linkageName: "?_Eos@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAX_K@Z", scope: !41, file: !42, line: 4288, type: !542, scopeLine: 4288, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DISubprogram(name: "_Tidy_init", linkageName: "?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !41, file: !42, line: 4292, type: !204, scopeLine: 4292, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DISubprogram(name: "_Tidy_deallocate", linkageName: "?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !41, file: !42, line: 4299, type: !204, scopeLine: 4299, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DISubprogram(name: "_Orphan_all", linkageName: "?_Orphan_all@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !41, file: !42, line: 4315, type: !204, scopeLine: 4315, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!641 = !DISubprogram(name: "_Swap_proxy_and_iterators", linkageName: "?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z", scope: !41, file: !42, line: 4320, type: !561, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ", scope: !41, file: !42, line: 4324, type: !643, scopeLine: 4324, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !197}
!645 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Alty", scope: !41, file: !42, line: 2209, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Rebind_alloc_t<std::allocator<char>, char>", scope: !14, file: !55, line: 731, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !215, file: !55, line: 673, baseType: !58)
!649 = !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ", scope: !41, file: !42, line: 4328, type: !650, scopeLine: 4328, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{!652, !478}
!652 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!654 = !{!655, !656, !241}
!655 = !DITemplateTypeParameter(name: "_Elem", type: !33)
!656 = !DITemplateTypeParameter(name: "_Traits", type: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !14, file: !42, line: 409, size: 8, flags: DIFlagTypePassByValue, elements: !658, templateParams: !708, identifier: ".?AU?$char_traits@D@std@@")
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !657, baseType: !660, extraData: i32 0)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Narrow_char_traits<char, int>", scope: !14, file: !42, line: 281, size: 8, flags: DIFlagTypePassByValue, elements: !661, templateParams: !706, identifier: ".?AU?$_Narrow_char_traits@DH@std@@")
!661 = !{!662, !665, !668, !671, !674, !677, !678, !681, !684, !687, !688, !694, !697, !700, !703}
!662 = !DISubprogram(name: "compare", linkageName: "?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z", scope: !660, file: !42, line: 288, type: !663, scopeLine: 288, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!5, !248, !248, !50}
!665 = !DISubprogram(name: "length", linkageName: "?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z", scope: !660, file: !42, line: 305, type: !666, scopeLine: 305, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!34, !248}
!668 = !DISubprogram(name: "copy", linkageName: "?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !660, file: !42, line: 325, type: !669, scopeLine: 325, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{!32, !81, !248, !50}
!671 = !DISubprogram(name: "_Copy_s", linkageName: "?_Copy_s@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KQEBD1@Z", scope: !660, file: !42, line: 331, type: !672, scopeLine: 331, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!672 = !DISubroutineType(types: !673)
!673 = !{!32, !81, !50, !248, !50}
!674 = !DISubprogram(name: "find", linkageName: "?find@?$_Narrow_char_traits@DH@std@@SAPEBDQEBD_KAEBD@Z", scope: !660, file: !42, line: 339, type: !675, scopeLine: 339, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!675 = !DISubroutineType(types: !676)
!676 = !{!39, !248, !50, !69}
!677 = !DISubprogram(name: "move", linkageName: "?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !660, file: !42, line: 360, type: !669, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!678 = !DISubprogram(name: "assign", linkageName: "?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z", scope: !660, file: !42, line: 366, type: !679, scopeLine: 366, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{!32, !81, !50, !40}
!681 = !DISubprogram(name: "assign", linkageName: "?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z", scope: !660, file: !42, line: 372, type: !682, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !65, !69}
!684 = !DISubprogram(name: "eq", linkageName: "?eq@?$_Narrow_char_traits@DH@std@@SA_NAEBD0@Z", scope: !660, file: !42, line: 376, type: !685, scopeLine: 376, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{!8, !69, !69}
!687 = !DISubprogram(name: "lt", linkageName: "?lt@?$_Narrow_char_traits@DH@std@@SA_NAEBD0@Z", scope: !660, file: !42, line: 380, type: !685, scopeLine: 380, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!688 = !DISubprogram(name: "to_char_type", linkageName: "?to_char_type@?$_Narrow_char_traits@DH@std@@SADAEBH@Z", scope: !660, file: !42, line: 384, type: !689, scopeLine: 384, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!689 = !DISubroutineType(types: !690)
!690 = !{!33, !691}
!691 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !660, file: !42, line: 283, baseType: !5)
!694 = !DISubprogram(name: "to_int_type", linkageName: "?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z", scope: !660, file: !42, line: 388, type: !695, scopeLine: 388, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!693, !69}
!697 = !DISubprogram(name: "eq_int_type", linkageName: "?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z", scope: !660, file: !42, line: 392, type: !698, scopeLine: 392, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!698 = !DISubroutineType(types: !699)
!699 = !{!8, !691, !691}
!700 = !DISubprogram(name: "not_eof", linkageName: "?not_eof@?$_Narrow_char_traits@DH@std@@SAHAEBH@Z", scope: !660, file: !42, line: 396, type: !701, scopeLine: 396, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!693, !691}
!703 = !DISubprogram(name: "eof", linkageName: "?eof@?$_Narrow_char_traits@DH@std@@SAHXZ", scope: !660, file: !42, line: 400, type: !704, scopeLine: 400, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!693}
!706 = !{!655, !707}
!707 = !DITemplateTypeParameter(name: "_Int_type", type: !5)
!708 = !{!655}
!709 = !{!0, !6, !710, !712, !714}
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!711 = distinct !DIGlobalVariable(name: "_Big_allocation_threshold", scope: !14, file: !55, line: 92, type: !50, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression(DW_OP_constu, 39, DW_OP_stack_value))
!713 = distinct !DIGlobalVariable(name: "_Non_user_size", scope: !14, file: !55, line: 102, type: !50, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!715 = distinct !DIGlobalVariable(name: "_Big_allocation_alignment", scope: !14, file: !55, line: 93, type: !50, isLocal: true, isDefinition: true)
!716 = !{!717, !720, !724, !725, !728, !730, !734, !741, !743, !748, !753, !757, !761, !765, !774, !779, !789, !793, !797, !801, !805, !809, !813, !819, !823, !827, !831, !835, !840, !845, !849, !854, !860, !864, !865, !869, !871, !875, !879, !883, !888, !892, !896, !900, !902, !904, !906, !909, !910, !914, !919, !920, !923, !928, !929, !931, !936, !941, !945, !947, !949, !954, !959, !963, !965, !967, !971, !975, !979, !983, !987, !989, !993, !995, !997, !999, !1001, !1005, !1010, !1013, !1018, !1021, !1023, !1025, !1028, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1072, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1108, !1116, !1117, !1120, !1121, !1126, !1130, !1132, !1134, !1136, !1138, !1143, !1147, !1151, !1156, !1160, !1164, !1168, !1172, !1174, !1178, !1184, !1188, !1192, !1194, !1196, !1200, !1202, !1206, !1210, !1212, !1214, !1216, !1218, !1220, !1224, !1228, !1232, !1236, !1240, !1244, !1246, !1251, !1255, !1259, !1263, !1267, !1269, !1271, !1275, !1277, !1279, !1280, !1283, !1285, !1290, !1294, !1298, !1302, !1306, !1310, !1315, !1317, !1319, !1323, !1328, !1332, !1337, !1343, !1345, !1349, !1354, !1358, !1362, !1366, !1370, !1374, !1378, !1382, !1384, !1389, !1395, !1400, !1404, !1408, !1410, !1412, !1416, !1420, !1424, !1428, !1430, !1432, !1434, !1436, !1440, !1444, !1446, !1448, !1452, !1456, !1460, !1462, !1464, !1466, !1468, !1474, !1476, !1480, !1482, !1486, !1490, !1494, !1498, !1501, !1504, !1508, !1510, !1512, !1514, !1516, !1518, !1520, !1522, !1524, !1526, !1528, !1530, !1532}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !718, file: !35, line: 94)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !14, file: !35, line: 93, baseType: !719)
!719 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !721, file: !723, line: 23)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !35, line: 35, baseType: !722)
!722 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!723 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\cstddef", directory: "C:\\")
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !34, file: !723, line: 24)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !726, file: !723, line: 95)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", scope: !14, file: !723, line: 25, baseType: !727)
!727 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !34, file: !729, line: 36)
!729 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\cstdlib", directory: "C:\\")
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !731, file: !729, line: 37)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !732, line: 279, baseType: !733)
!732 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\stdlib.h", directory: "C:\\")
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !732, line: 275, flags: DIFlagFwdDecl, identifier: ".?AU_div_t@@")
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !735, file: !729, line: 38)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !732, line: 285, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !732, line: 281, size: 64, flags: DIFlagTypePassByValue, elements: !737, identifier: ".?AU_ldiv_t@@")
!737 = !{!738, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !736, file: !732, line: 283, baseType: !739, size: 32)
!739 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !736, file: !732, line: 284, baseType: !739, size: 32, offset: 32)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !742, file: !729, line: 39)
!742 = !DISubprogram(name: "abort", scope: !732, file: !732, line: 60, type: !173, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !744, file: !729, line: 40)
!744 = !DISubprogram(name: "abs", linkageName: "?abs@@YAOO@Z", scope: !729, file: !729, line: 31, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!747, !747}
!747 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !749, file: !729, line: 41)
!749 = !DISubprogram(name: "atexit", scope: !732, file: !732, line: 144, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!5, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !754, file: !729, line: 42)
!754 = !DISubprogram(name: "atof", scope: !732, file: !732, line: 450, type: !755, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DISubroutineType(types: !756)
!756 = !{!727, !39}
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !758, file: !729, line: 43)
!758 = !DISubprogram(name: "atoi", scope: !732, file: !732, line: 451, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DISubroutineType(types: !760)
!760 = !{!5, !39}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !762, file: !729, line: 44)
!762 = !DISubprogram(name: "atol", scope: !732, file: !732, line: 452, type: !763, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{!739, !39}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !766, file: !729, line: 45)
!766 = !DISubprogram(name: "bsearch", scope: !767, file: !767, line: 52, type: !768, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_search.h", directory: "C:\\")
!768 = !DISubroutineType(types: !769)
!769 = !{!31, !88, !88, !34, !34, !770}
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "_CoreCrtNonSecureSearchSortCompareFunction", file: !767, line: 24, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!5, !88, !88}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !775, file: !729, line: 46)
!775 = !DISubprogram(name: "calloc", scope: !776, file: !776, line: 66, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_malloc.h", directory: "C:\\")
!777 = !DISubroutineType(types: !778)
!778 = !{!31, !34, !34}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !780, file: !729, line: 47)
!780 = !DISubprogram(name: "div", linkageName: "?div@@YA?AU_lldiv_t@@_J0@Z", scope: !732, file: !732, line: 378, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !788, !788}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !732, line: 291, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lldiv_t", file: !732, line: 287, size: 128, flags: DIFlagTypePassByValue, elements: !785, identifier: ".?AU_lldiv_t@@")
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !784, file: !732, line: 289, baseType: !722, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !784, file: !732, line: 290, baseType: !722, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !790, file: !729, line: 48)
!790 = !DISubprogram(name: "exit", scope: !732, file: !732, line: 56, type: !791, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !5}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !794, file: !729, line: 49)
!794 = !DISubprogram(name: "free", scope: !776, file: !776, line: 89, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !31}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !798, file: !729, line: 50)
!798 = !DISubprogram(name: "labs", scope: !732, file: !732, line: 294, type: !799, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!739, !739}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !802, file: !729, line: 51)
!802 = !DISubprogram(name: "ldiv", scope: !732, file: !732, line: 303, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!735, !739, !739}
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !806, file: !729, line: 52)
!806 = !DISubprogram(name: "malloc", scope: !776, file: !776, line: 101, type: !807, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DISubroutineType(types: !808)
!808 = !{!31, !34}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !810, file: !729, line: 53)
!810 = !DISubprogram(name: "mblen", scope: !732, file: !732, line: 852, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!5, !39, !34}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !814, file: !729, line: 54)
!814 = !DISubprogram(name: "mbstowcs", scope: !732, file: !732, line: 924, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!34, !817, !39, !34}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIBasicType(name: "wchar_t", size: 16, encoding: DW_ATE_unsigned)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !820, file: !729, line: 55)
!820 = !DISubprogram(name: "mbtowc", scope: !732, file: !732, line: 893, type: !821, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubroutineType(types: !822)
!822 = !{!5, !817, !39, !34}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !824, file: !729, line: 56)
!824 = !DISubprogram(name: "qsort", scope: !767, file: !767, line: 60, type: !825, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !31, !34, !34, !770}
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !828, file: !729, line: 57)
!828 = !DISubprogram(name: "rand", scope: !732, file: !732, line: 352, type: !829, flags: DIFlagPrototyped, spFlags: 0)
!829 = !DISubroutineType(types: !830)
!830 = !{!5}
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !832, file: !729, line: 58)
!832 = !DISubprogram(name: "realloc", scope: !776, file: !776, line: 126, type: !833, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{!31, !31, !34}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !836, file: !729, line: 59)
!836 = !DISubprogram(name: "srand", scope: !732, file: !732, line: 350, type: !837, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !839}
!839 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !841, file: !729, line: 60)
!841 = !DISubprogram(name: "strtod", scope: !732, file: !732, line: 502, type: !842, flags: DIFlagPrototyped, spFlags: 0)
!842 = !DISubroutineType(types: !843)
!843 = !{!727, !39, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !846, file: !729, line: 61)
!846 = !DISubprogram(name: "strtol", scope: !732, file: !732, line: 528, type: !847, flags: DIFlagPrototyped, spFlags: 0)
!847 = !DISubroutineType(types: !848)
!848 = !{!739, !39, !844, !5}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !850, file: !729, line: 62)
!850 = !DISubprogram(name: "strtoul", scope: !732, file: !732, line: 558, type: !851, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !39, !844, !5}
!853 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !855, file: !729, line: 63)
!855 = !DISubprogram(name: "wcstombs", scope: !732, file: !732, line: 1012, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{!34, !32, !858, !34}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !861, file: !729, line: 64)
!861 = !DISubprogram(name: "wctomb", scope: !732, file: !732, line: 963, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DISubroutineType(types: !863)
!863 = !{!5, !32, !818}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !783, file: !729, line: 66)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !866, file: !729, line: 69)
!866 = !DISubprogram(name: "getenv", scope: !732, file: !732, line: 1184, type: !867, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DISubroutineType(types: !868)
!868 = !{!32, !39}
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !870, file: !729, line: 70)
!870 = !DISubprogram(name: "system", scope: !732, file: !732, line: 1211, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !872, file: !729, line: 73)
!872 = !DISubprogram(name: "atoll", scope: !732, file: !732, line: 453, type: !873, flags: DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{!722, !39}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !876, file: !729, line: 74)
!876 = !DISubprogram(name: "llabs", scope: !732, file: !732, line: 295, type: !877, flags: DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{!722, !722}
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !880, file: !729, line: 75)
!880 = !DISubprogram(name: "lldiv", scope: !732, file: !732, line: 304, type: !881, flags: DIFlagPrototyped, spFlags: 0)
!881 = !DISubroutineType(types: !882)
!882 = !{!783, !722, !722}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !884, file: !729, line: 76)
!884 = !DISubprogram(name: "strtof", scope: !732, file: !732, line: 489, type: !885, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DISubroutineType(types: !886)
!886 = !{!887, !39, !844}
!887 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !889, file: !729, line: 77)
!889 = !DISubprogram(name: "strtold", scope: !732, file: !732, line: 515, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DISubroutineType(types: !891)
!891 = !{!747, !39, !844}
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !893, file: !729, line: 78)
!893 = !DISubprogram(name: "strtoll", scope: !732, file: !732, line: 543, type: !894, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DISubroutineType(types: !895)
!895 = !{!722, !39, !844, !5}
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !897, file: !729, line: 79)
!897 = !DISubprogram(name: "strtoull", scope: !732, file: !732, line: 573, type: !898, flags: DIFlagPrototyped, spFlags: 0)
!898 = !DISubroutineType(types: !899)
!899 = !{!30, !39, !844, !5}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !901, file: !729, line: 81)
!901 = !DISubprogram(name: "_Exit", scope: !732, file: !732, line: 58, type: !791, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !903, file: !729, line: 82)
!903 = !DISubprogram(name: "at_quick_exit", scope: !732, file: !732, line: 148, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !905, file: !729, line: 83)
!905 = !DISubprogram(name: "quick_exit", scope: !732, file: !732, line: 59, type: !791, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !324, file: !908, line: 2315)
!907 = !DINamespace(name: "tr1", scope: !14)
!908 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\type_traits", directory: "C:\\")
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !304, file: !908, line: 2357)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !911, file: !913, line: 37)
!911 = !DISubprogram(name: "terminate", scope: !912, file: !912, line: 33, type: !173, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!912 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_terminate.h", directory: "C:\\")
!913 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\exception", directory: "C:\\")
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !915, file: !913, line: 40)
!915 = !DISubprogram(name: "set_terminate", scope: !912, file: !912, line: 37, type: !916, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DISubroutineType(types: !917)
!917 = !{!918, !918}
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "terminate_handler", file: !912, line: 22, baseType: !752)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !918, file: !913, line: 41)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !921, file: !913, line: 49)
!921 = !DISubprogram(name: "unexpected", scope: !922, file: !922, line: 35, type: !173, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!922 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\eh.h", directory: "C:\\")
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !924, file: !913, line: 52)
!924 = !DISubprogram(name: "set_unexpected", scope: !922, file: !922, line: 39, type: !925, flags: DIFlagPrototyped, spFlags: 0)
!925 = !DISubroutineType(types: !926)
!926 = !{!927, !927}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "unexpected_handler", file: !922, line: 23, baseType: !752)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !927, file: !913, line: 53)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !34, file: !930, line: 25)
!930 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\cstring", directory: "C:\\")
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !932, file: !930, line: 26)
!932 = !DISubprogram(name: "memchr", linkageName: "?memchr@@YAPEAXPEAXH_K@Z", scope: !933, file: !933, line: 104, type: !934, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_memory.h", directory: "C:\\")
!934 = !DISubroutineType(types: !935)
!935 = !{!31, !31, !5, !34}
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !937, file: !930, line: 27)
!937 = !DISubprogram(name: "memcmp", scope: !938, file: !938, line: 29, type: !939, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\vcruntime_string.h", directory: "C:\\")
!939 = !DISubroutineType(types: !940)
!940 = !{!5, !88, !88, !34}
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !942, file: !930, line: 28)
!942 = !DISubprogram(name: "memcpy", scope: !938, file: !938, line: 43, type: !943, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DISubroutineType(types: !944)
!944 = !{!31, !31, !88, !34}
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !946, file: !930, line: 29)
!946 = !DISubprogram(name: "memmove", scope: !938, file: !938, line: 50, type: !943, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !948, file: !930, line: 30)
!948 = !DISubprogram(name: "memset", scope: !938, file: !938, line: 63, type: !934, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !950, file: !930, line: 31)
!950 = !DISubprogram(name: "strcat", scope: !951, file: !951, line: 91, type: !952, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\string.h", directory: "C:\\")
!952 = !DISubroutineType(types: !953)
!953 = !{!32, !32, !39}
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !955, file: !930, line: 32)
!955 = !DISubprogram(name: "strchr", linkageName: "?strchr@@YAPEADQEADH@Z", scope: !951, file: !951, line: 500, type: !956, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DISubroutineType(types: !957)
!957 = !{!32, !81, !958}
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !960, file: !930, line: 33)
!960 = !DISubprogram(name: "strcmp", scope: !951, file: !951, line: 100, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DISubroutineType(types: !962)
!962 = !{!5, !39, !39}
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !964, file: !930, line: 34)
!964 = !DISubprogram(name: "strcoll", scope: !951, file: !951, line: 112, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !966, file: !930, line: 35)
!966 = !DISubprogram(name: "strcpy", scope: !951, file: !951, line: 130, type: !952, flags: DIFlagPrototyped, spFlags: 0)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !968, file: !930, line: 36)
!968 = !DISubprogram(name: "strcspn", scope: !951, file: !951, line: 137, type: !969, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DISubroutineType(types: !970)
!970 = !{!34, !39, !39}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !972, file: !930, line: 37)
!972 = !DISubprogram(name: "strerror", scope: !951, file: !951, line: 178, type: !973, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DISubroutineType(types: !974)
!974 = !{!32, !5}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !976, file: !930, line: 38)
!976 = !DISubprogram(name: "strlen", scope: !951, file: !951, line: 215, type: !977, flags: DIFlagPrototyped, spFlags: 0)
!977 = !DISubroutineType(types: !978)
!978 = !{!34, !39}
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !980, file: !930, line: 39)
!980 = !DISubprogram(name: "strncat", scope: !951, file: !951, line: 262, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DISubroutineType(types: !982)
!982 = !{!32, !32, !39, !34}
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !984, file: !930, line: 40)
!984 = !DISubprogram(name: "strncmp", scope: !951, file: !951, line: 271, type: !985, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DISubroutineType(types: !986)
!986 = !{!5, !39, !39, !34}
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !988, file: !930, line: 41)
!988 = !DISubprogram(name: "strncpy", scope: !951, file: !951, line: 334, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !990, file: !930, line: 42)
!990 = !DISubprogram(name: "strpbrk", linkageName: "?strpbrk@@YAPEADQEADQEBD@Z", scope: !951, file: !951, line: 506, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!32, !81, !248}
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !994, file: !930, line: 43)
!994 = !DISubprogram(name: "strrchr", linkageName: "?strrchr@@YAPEADQEADH@Z", scope: !951, file: !951, line: 512, type: !956, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !996, file: !930, line: 44)
!996 = !DISubprogram(name: "strspn", scope: !951, file: !951, line: 430, type: !969, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !998, file: !930, line: 45)
!998 = !DISubprogram(name: "strstr", linkageName: "?strstr@@YAPEADQEADQEBD@Z", scope: !951, file: !951, line: 518, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1000, file: !930, line: 46)
!1000 = !DISubprogram(name: "strtok", scope: !951, file: !951, line: 436, type: !952, flags: DIFlagPrototyped, spFlags: 0)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1002, file: !930, line: 47)
!1002 = !DISubprogram(name: "strxfrm", scope: !951, file: !951, line: 479, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!34, !32, !39, !34}
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1006, file: !1007, line: 990)
!1006 = !DIGlobalVariable(name: "ignore", linkageName: "?ignore@std@@3U_Ignore@1@B", scope: !14, file: !1007, line: 155, type: !1008, isLocal: true, isDefinition: false)
!1007 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\tuple", directory: "C:\\")
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ignore", scope: !14, file: !1007, line: 147, size: 8, flags: DIFlagTypePassByValue, elements: !116, identifier: ".?AU_Ignore@std@@")
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1011, file: !1012, line: 119)
!1011 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", file: !1012, line: 69, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AVtype_info@@")
!1012 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\vcruntime_typeinfo.h", directory: "C:\\")
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1014, file: !1017, line: 22)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1015, line: 18, baseType: !1016)
!1015 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\stdint.h", directory: "C:\\")
!1016 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1017 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\cstdint", directory: "C:\\")
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1019, file: !1017, line: 23)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1015, line: 19, baseType: !1020)
!1020 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1022, file: !1017, line: 24)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1015, line: 20, baseType: !5)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1024, file: !1017, line: 25)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1015, line: 21, baseType: !722)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1026, file: !1017, line: 26)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1015, line: 22, baseType: !1027)
!1027 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1029, file: !1017, line: 27)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1015, line: 23, baseType: !1030)
!1030 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1032, file: !1017, line: 28)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1015, line: 24, baseType: !839)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1034, file: !1017, line: 29)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1015, line: 25, baseType: !30)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1036, file: !1017, line: 31)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1015, line: 27, baseType: !1016)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1038, file: !1017, line: 32)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1015, line: 28, baseType: !1020)
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1040, file: !1017, line: 33)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1015, line: 29, baseType: !5)
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1042, file: !1017, line: 34)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1015, line: 30, baseType: !722)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1044, file: !1017, line: 35)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1015, line: 31, baseType: !1027)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1046, file: !1017, line: 36)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1015, line: 32, baseType: !1030)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1048, file: !1017, line: 37)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1015, line: 33, baseType: !839)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1050, file: !1017, line: 38)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1015, line: 34, baseType: !30)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1052, file: !1017, line: 40)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1015, line: 36, baseType: !1016)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1054, file: !1017, line: 41)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1015, line: 37, baseType: !5)
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1056, file: !1017, line: 42)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1015, line: 38, baseType: !5)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1058, file: !1017, line: 43)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1015, line: 39, baseType: !722)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1060, file: !1017, line: 44)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1015, line: 40, baseType: !1027)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1062, file: !1017, line: 45)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1015, line: 41, baseType: !839)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1064, file: !1017, line: 46)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1015, line: 42, baseType: !839)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1066, file: !1017, line: 47)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1015, line: 43, baseType: !30)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1068, file: !1017, line: 49)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1015, line: 45, baseType: !722)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1070, file: !1017, line: 50)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1071, line: 195, baseType: !722)
!1071 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\vcruntime.h", directory: "C:\\")
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1073, file: !1017, line: 51)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1015, line: 46, baseType: !30)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !28, file: !1017, line: 52)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1014, file: !1017, line: 56)
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1019, file: !1017, line: 57)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1022, file: !1017, line: 58)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1024, file: !1017, line: 59)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1026, file: !1017, line: 60)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1029, file: !1017, line: 61)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1032, file: !1017, line: 62)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1034, file: !1017, line: 63)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1036, file: !1017, line: 65)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1038, file: !1017, line: 66)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1040, file: !1017, line: 67)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1042, file: !1017, line: 68)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1044, file: !1017, line: 69)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1046, file: !1017, line: 70)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1048, file: !1017, line: 71)
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1050, file: !1017, line: 72)
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1052, file: !1017, line: 74)
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1054, file: !1017, line: 75)
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1056, file: !1017, line: 76)
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1058, file: !1017, line: 77)
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1060, file: !1017, line: 78)
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1062, file: !1017, line: 79)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1064, file: !1017, line: 80)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1066, file: !1017, line: 81)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1068, file: !1017, line: 83)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1070, file: !1017, line: 84)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1073, file: !1017, line: 85)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !28, file: !1017, line: 86)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1104, file: !1107, line: 37)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 31, baseType: !1106)
!1105 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wstdio.h", directory: "C:\\")
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_iobuf", file: !1105, line: 28, flags: DIFlagFwdDecl, identifier: ".?AU_iobuf@@")
!1107 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\cstdio", directory: "C:\\")
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1109, file: !1107, line: 38)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Mbstatet", file: !1110, line: 615, baseType: !1111)
!1110 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt.h", directory: "C:\\")
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Mbstatet", file: !1110, line: 611, size: 64, flags: DIFlagTypePassByValue, elements: !1112, identifier: ".?AU_Mbstatet@@")
!1112 = !{!1113, !1114, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_Wchar", scope: !1111, file: !1110, line: 613, baseType: !853, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_Byte", scope: !1111, file: !1110, line: 614, baseType: !1030, size: 16, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_State", scope: !1111, file: !1110, line: 614, baseType: !1030, size: 16, offset: 48)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !34, file: !1107, line: 40)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1118, file: !1107, line: 41)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1119, line: 73, baseType: !722)
!1119 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\stdio.h", directory: "C:\\")
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1104, file: !1107, line: 42)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1122, file: !1107, line: 43)
!1122 = !DISubprogram(name: "clearerr", scope: !1119, file: !1119, line: 146, type: !1123, flags: DIFlagPrototyped, spFlags: 0)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1127, file: !1107, line: 44)
!1127 = !DISubprogram(name: "fclose", scope: !1119, file: !1119, line: 152, type: !1128, flags: DIFlagPrototyped, spFlags: 0)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!5, !1125}
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1131, file: !1107, line: 45)
!1131 = !DISubprogram(name: "feof", scope: !1119, file: !1119, line: 166, type: !1128, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1133, file: !1107, line: 46)
!1133 = !DISubprogram(name: "ferror", scope: !1119, file: !1119, line: 171, type: !1128, flags: DIFlagPrototyped, spFlags: 0)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1135, file: !1107, line: 47)
!1135 = !DISubprogram(name: "fflush", scope: !1119, file: !1119, line: 176, type: !1128, flags: DIFlagPrototyped, spFlags: 0)
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1137, file: !1107, line: 48)
!1137 = !DISubprogram(name: "fgetc", scope: !1119, file: !1119, line: 182, type: !1128, flags: DIFlagPrototyped, spFlags: 0)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1139, file: !1107, line: 49)
!1139 = !DISubprogram(name: "fgetpos", scope: !1119, file: !1119, line: 191, type: !1140, flags: DIFlagPrototyped, spFlags: 0)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!5, !1125, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1144, file: !1107, line: 50)
!1144 = !DISubprogram(name: "fgets", scope: !1119, file: !1119, line: 198, type: !1145, flags: DIFlagPrototyped, spFlags: 0)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!32, !32, !5, !1125}
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1148, file: !1107, line: 51)
!1148 = !DISubprogram(name: "fopen", scope: !1119, file: !1119, line: 213, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1125, !39, !39}
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1152, file: !1107, line: 52)
!1152 = !DISubprogram(name: "fprintf", scope: !1119, file: !1119, line: 830, type: !1153, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!5, !1155, !248, null}
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1157, file: !1107, line: 53)
!1157 = !DISubprogram(name: "fputc", scope: !1119, file: !1119, line: 221, type: !1158, flags: DIFlagPrototyped, spFlags: 0)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!5, !5, !1125}
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1161, file: !1107, line: 54)
!1161 = !DISubprogram(name: "fputs", scope: !1119, file: !1119, line: 233, type: !1162, flags: DIFlagPrototyped, spFlags: 0)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!5, !39, !1125}
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1165, file: !1107, line: 55)
!1165 = !DISubprogram(name: "fread", scope: !1119, file: !1119, line: 239, type: !1166, flags: DIFlagPrototyped, spFlags: 0)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!34, !31, !34, !34, !1125}
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1169, file: !1107, line: 56)
!1169 = !DISubprogram(name: "freopen", scope: !1119, file: !1119, line: 248, type: !1170, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1125, !39, !39, !1125}
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1173, file: !1107, line: 57)
!1173 = !DISubprogram(name: "fscanf", scope: !1119, file: !1119, line: 1199, type: !1153, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1175, file: !1107, line: 58)
!1175 = !DISubprogram(name: "fseek", scope: !1119, file: !1119, line: 270, type: !1176, flags: DIFlagPrototyped, spFlags: 0)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!5, !1125, !739, !5}
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1179, file: !1107, line: 59)
!1179 = !DISubprogram(name: "fsetpos", scope: !1119, file: !1119, line: 263, type: !1180, flags: DIFlagPrototyped, spFlags: 0)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!5, !1125, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1185, file: !1107, line: 60)
!1185 = !DISubprogram(name: "ftell", scope: !1119, file: !1119, line: 286, type: !1186, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!739, !1125}
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1189, file: !1107, line: 61)
!1189 = !DISubprogram(name: "fwrite", scope: !1119, file: !1119, line: 297, type: !1190, flags: DIFlagPrototyped, spFlags: 0)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!34, !88, !34, !34, !1125}
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1193, file: !1107, line: 62)
!1193 = !DISubprogram(name: "getc", scope: !1119, file: !1119, line: 306, type: !1128, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1195, file: !1107, line: 63)
!1195 = !DISubprogram(name: "getchar", scope: !1119, file: !1119, line: 311, type: !829, flags: DIFlagPrototyped, spFlags: 0)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1197, file: !1107, line: 64)
!1197 = !DISubprogram(name: "perror", scope: !1119, file: !1119, line: 325, type: !1198, flags: DIFlagPrototyped, spFlags: 0)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !39}
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1201, file: !1107, line: 65)
!1201 = !DISubprogram(name: "putc", scope: !1119, file: !1119, line: 347, type: !1158, flags: DIFlagPrototyped, spFlags: 0)
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1203, file: !1107, line: 66)
!1203 = !DISubprogram(name: "putchar", scope: !1119, file: !1119, line: 353, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!5, !5}
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1207, file: !1107, line: 67)
!1207 = !DISubprogram(name: "printf", scope: !1119, file: !1119, line: 950, type: !1208, flags: DIFlagPrototyped, spFlags: 0)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!5, !248, null}
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1211, file: !1107, line: 68)
!1211 = !DISubprogram(name: "puts", scope: !1119, file: !1119, line: 358, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1213, file: !1107, line: 69)
!1213 = !DISubprogram(name: "remove", scope: !1119, file: !1119, line: 369, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1215, file: !1107, line: 70)
!1215 = !DISubprogram(name: "rename", scope: !1119, file: !1119, line: 374, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1217, file: !1107, line: 71)
!1217 = !DISubprogram(name: "rewind", scope: !1119, file: !1119, line: 392, type: !1123, flags: DIFlagPrototyped, spFlags: 0)
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1219, file: !1107, line: 72)
!1219 = !DISubprogram(name: "scanf", scope: !1119, file: !1119, line: 1276, type: !1208, flags: DIFlagPrototyped, spFlags: 0)
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1221, file: !1107, line: 73)
!1221 = !DISubprogram(name: "setbuf", scope: !1119, file: !1119, line: 400, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !1125, !32}
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1225, file: !1107, line: 74)
!1225 = !DISubprogram(name: "setvbuf", scope: !1119, file: !1119, line: 412, type: !1226, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!5, !1125, !32, !5, !34}
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1229, file: !1107, line: 75)
!1229 = !DISubprogram(name: "sprintf", scope: !1119, file: !1119, line: 1783, type: !1230, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!5, !32, !39, null}
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1233, file: !1107, line: 76)
!1233 = !DISubprogram(name: "sscanf", scope: !1119, file: !1119, line: 2240, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!5, !248, !248, null}
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1237, file: !1107, line: 77)
!1237 = !DISubprogram(name: "tmpfile", scope: !1119, file: !1119, line: 435, type: !1238, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1125}
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1241, file: !1107, line: 78)
!1241 = !DISubprogram(name: "tmpnam", scope: !1119, file: !1119, line: 443, type: !1242, flags: DIFlagPrototyped, spFlags: 0)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!32, !32}
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1245, file: !1107, line: 79)
!1245 = !DISubprogram(name: "ungetc", scope: !1119, file: !1119, line: 451, type: !1158, flags: DIFlagPrototyped, spFlags: 0)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1247, file: !1107, line: 80)
!1247 = !DISubprogram(name: "vfprintf", scope: !1119, file: !1119, line: 650, type: !1248, flags: DIFlagPrototyped, spFlags: 0)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!5, !1155, !248, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !29, line: 72, baseType: !32)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1252, file: !1107, line: 81)
!1252 = !DISubprogram(name: "vprintf", scope: !1119, file: !1119, line: 740, type: !1253, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!5, !248, !1250}
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1256, file: !1107, line: 82)
!1256 = !DISubprogram(name: "vsprintf", scope: !1119, file: !1119, line: 1783, type: !1257, flags: DIFlagPrototyped, spFlags: 0)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!5, !32, !39, !1250}
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1260, file: !1107, line: 84)
!1260 = !DISubprogram(name: "snprintf", scope: !1119, file: !1119, line: 1919, type: !1261, flags: DIFlagPrototyped, spFlags: 0)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!5, !81, !50, !248, null}
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1264, file: !1107, line: 85)
!1264 = !DISubprogram(name: "vsnprintf", scope: !1119, file: !1119, line: 1429, type: !1265, flags: DIFlagPrototyped, spFlags: 0)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!5, !81, !50, !248, !1250}
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1268, file: !1107, line: 86)
!1268 = !DISubprogram(name: "vfscanf", scope: !1119, file: !1119, line: 1072, type: !1248, flags: DIFlagPrototyped, spFlags: 0)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1270, file: !1107, line: 87)
!1270 = !DISubprogram(name: "vscanf", scope: !1119, file: !1119, line: 1136, type: !1253, flags: DIFlagPrototyped, spFlags: 0)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1272, file: !1107, line: 88)
!1272 = !DISubprogram(name: "vsscanf", scope: !1119, file: !1119, line: 2160, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!5, !248, !248, !1250}
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1109, file: !1276, line: 28)
!1276 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\cwchar", directory: "C:\\")
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1278, file: !1276, line: 30)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1110, line: 617, baseType: !1109)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !34, file: !1276, line: 31)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1281, file: !1276, line: 32)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1282, line: 26, flags: DIFlagFwdDecl, identifier: ".?AUtm@@")
!1282 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wtime.h", directory: "C:\\")
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1284, file: !1276, line: 33)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1110, line: 591, baseType: !1030)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1286, file: !1276, line: 35)
!1286 = !DISubprogram(name: "btowc", scope: !1287, file: !1287, line: 62, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\wchar.h", directory: "C:\\")
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1284, !5}
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1291, file: !1276, line: 36)
!1291 = !DISubprogram(name: "fgetwc", scope: !1105, file: !1105, line: 51, type: !1292, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1284, !1125}
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1295, file: !1276, line: 37)
!1295 = !DISubprogram(name: "fgetws", scope: !1105, file: !1105, line: 79, type: !1296, flags: DIFlagPrototyped, spFlags: 0)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!817, !817, !5, !1125}
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1299, file: !1276, line: 38)
!1299 = !DISubprogram(name: "fputwc", scope: !1105, file: !1105, line: 59, type: !1300, flags: DIFlagPrototyped, spFlags: 0)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!1284, !818, !1125}
!1302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1303, file: !1276, line: 39)
!1303 = !DISubprogram(name: "fputws", scope: !1105, file: !1105, line: 86, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!5, !858, !1125}
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1307, file: !1276, line: 40)
!1307 = !DISubprogram(name: "fwide", scope: !1287, file: !1287, line: 184, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!5, !1125, !5}
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1311, file: !1276, line: 41)
!1311 = !DISubprogram(name: "fwprintf", scope: !1105, file: !1105, line: 494, type: !1312, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!5, !1155, !1314, null}
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1316, file: !1276, line: 42)
!1316 = !DISubprogram(name: "fwscanf", scope: !1105, file: !1105, line: 856, type: !1312, flags: DIFlagPrototyped, spFlags: 0)
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1318, file: !1276, line: 43)
!1318 = !DISubprogram(name: "getwc", scope: !1105, file: !1105, line: 69, type: !1292, flags: DIFlagPrototyped, spFlags: 0)
!1319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1320, file: !1276, line: 44)
!1320 = !DISubprogram(name: "getwchar", scope: !1105, file: !1105, line: 74, type: !1321, flags: DIFlagPrototyped, spFlags: 0)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!1284}
!1323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1324, file: !1276, line: 45)
!1324 = !DISubprogram(name: "mbrlen", scope: !1287, file: !1287, line: 66, type: !1325, flags: DIFlagPrototyped, spFlags: 0)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!34, !39, !34, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1329, file: !1276, line: 46)
!1329 = !DISubprogram(name: "mbrtowc", scope: !1287, file: !1287, line: 72, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!34, !817, !39, !34, !1327}
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1333, file: !1276, line: 47)
!1333 = !DISubprogram(name: "mbsrtowcs", scope: !1287, file: !1287, line: 99, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!34, !817, !1336, !34, !1327}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1338, file: !1276, line: 48)
!1338 = !DISubprogram(name: "mbsinit", scope: !1287, file: !1287, line: 193, type: !1339, flags: DIFlagPrototyped, spFlags: 0)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!5, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1344, file: !1276, line: 49)
!1344 = !DISubprogram(name: "putwc", scope: !1105, file: !1105, line: 105, type: !1300, flags: DIFlagPrototyped, spFlags: 0)
!1345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1346, file: !1276, line: 50)
!1346 = !DISubprogram(name: "putwchar", scope: !1105, file: !1105, line: 111, type: !1347, flags: DIFlagPrototyped, spFlags: 0)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1284, !818}
!1349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1350, file: !1276, line: 51)
!1350 = !DISubprogram(name: "swprintf", linkageName: "?swprintf@@YAHQEA_WQEB_WZZ", scope: !1105, file: !1105, line: 1803, type: !1351, flags: DIFlagPrototyped, spFlags: 0)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!5, !1353, !1314, null}
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1355, file: !1276, line: 52)
!1355 = !DISubprogram(name: "swscanf", scope: !1105, file: !1105, line: 2018, type: !1356, flags: DIFlagPrototyped, spFlags: 0)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!5, !1314, !1314, null}
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1359, file: !1276, line: 53)
!1359 = !DISubprogram(name: "ungetwc", scope: !1105, file: !1105, line: 121, type: !1360, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1284, !1284, !1125}
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1363, file: !1276, line: 54)
!1363 = !DISubprogram(name: "vfwprintf", scope: !1105, file: !1105, line: 314, type: !1364, flags: DIFlagPrototyped, spFlags: 0)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!5, !1155, !1314, !1250}
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1367, file: !1276, line: 55)
!1367 = !DISubprogram(name: "vswprintf", linkageName: "?vswprintf@@YAHQEA_WQEB_WPEAD@Z", scope: !1105, file: !1105, line: 1817, type: !1368, flags: DIFlagPrototyped, spFlags: 0)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!5, !1353, !1314, !1250}
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1371, file: !1276, line: 56)
!1371 = !DISubprogram(name: "vwprintf", scope: !1105, file: !1105, line: 404, type: !1372, flags: DIFlagPrototyped, spFlags: 0)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!5, !1314, !1250}
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1375, file: !1276, line: 57)
!1375 = !DISubprogram(name: "wcrtomb", scope: !1287, file: !1287, line: 125, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!34, !32, !818, !1327}
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1379, file: !1276, line: 58)
!1379 = !DISubprogram(name: "wprintf", scope: !1105, file: !1105, line: 608, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!5, !1314, null}
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1383, file: !1276, line: 59)
!1383 = !DISubprogram(name: "wscanf", scope: !1105, file: !1105, line: 933, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1385, file: !1276, line: 60)
!1385 = !DISubprogram(name: "wcsrtombs", scope: !1287, file: !1287, line: 152, type: !1386, flags: DIFlagPrototyped, spFlags: 0)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!34, !32, !1388, !34, !1327}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!1389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1390, file: !1276, line: 61)
!1390 = !DISubprogram(name: "wcstol", scope: !1391, file: !1391, line: 134, type: !1392, flags: DIFlagPrototyped, spFlags: 0)
!1391 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wstdlib.h", directory: "C:\\")
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!739, !858, !1394, !5}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1396, file: !1276, line: 62)
!1396 = !DISubprogram(name: "wcscat", scope: !1397, file: !1397, line: 100, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1397 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wstring.h", directory: "C:\\")
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!817, !817, !858}
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1401, file: !1276, line: 63)
!1401 = !DISubprogram(name: "wcschr", linkageName: "?wcschr@@YAPEA_WPEA_W_W@Z", scope: !1397, file: !1397, line: 529, type: !1402, flags: DIFlagPrototyped, spFlags: 0)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!817, !817, !818}
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1405, file: !1276, line: 64)
!1405 = !DISubprogram(name: "wcscmp", scope: !1397, file: !1397, line: 108, type: !1406, flags: DIFlagPrototyped, spFlags: 0)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!5, !858, !858}
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1409, file: !1276, line: 65)
!1409 = !DISubprogram(name: "wcscoll", scope: !1397, file: !1397, line: 462, type: !1406, flags: DIFlagPrototyped, spFlags: 0)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1411, file: !1276, line: 66)
!1411 = !DISubprogram(name: "wcscpy", scope: !1397, file: !1397, line: 119, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1413, file: !1276, line: 67)
!1413 = !DISubprogram(name: "wcscspn", scope: !1397, file: !1397, line: 126, type: !1414, flags: DIFlagPrototyped, spFlags: 0)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!34, !858, !858}
!1416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1417, file: !1276, line: 68)
!1417 = !DISubprogram(name: "wcslen", scope: !1397, file: !1397, line: 132, type: !1418, flags: DIFlagPrototyped, spFlags: 0)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!34, !858}
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1421, file: !1276, line: 69)
!1421 = !DISubprogram(name: "wcsncat", scope: !1397, file: !1397, line: 178, type: !1422, flags: DIFlagPrototyped, spFlags: 0)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!817, !817, !858, !34}
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1425, file: !1276, line: 70)
!1425 = !DISubprogram(name: "wcsncmp", scope: !1397, file: !1397, line: 187, type: !1426, flags: DIFlagPrototyped, spFlags: 0)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!5, !858, !858, !34}
!1428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1429, file: !1276, line: 71)
!1429 = !DISubprogram(name: "wcsncpy", scope: !1397, file: !1397, line: 200, type: !1422, flags: DIFlagPrototyped, spFlags: 0)
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1431, file: !1276, line: 72)
!1431 = !DISubprogram(name: "wcspbrk", linkageName: "?wcspbrk@@YAPEA_WPEA_WPEB_W@Z", scope: !1397, file: !1397, line: 535, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1433, file: !1276, line: 73)
!1433 = !DISubprogram(name: "wcsrchr", linkageName: "?wcsrchr@@YAPEA_WPEA_W_W@Z", scope: !1397, file: !1397, line: 541, type: !1402, flags: DIFlagPrototyped, spFlags: 0)
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1435, file: !1276, line: 74)
!1435 = !DISubprogram(name: "wcsspn", scope: !1397, file: !1397, line: 215, type: !1414, flags: DIFlagPrototyped, spFlags: 0)
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1437, file: !1276, line: 75)
!1437 = !DISubprogram(name: "wcstod", scope: !1391, file: !1391, line: 121, type: !1438, flags: DIFlagPrototyped, spFlags: 0)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!727, !858, !1394}
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1441, file: !1276, line: 76)
!1441 = !DISubprogram(name: "wcstoul", scope: !1391, file: !1391, line: 164, type: !1442, flags: DIFlagPrototyped, spFlags: 0)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!853, !858, !1394, !5}
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1445, file: !1276, line: 77)
!1445 = !DISubprogram(name: "wcsstr", linkageName: "?wcsstr@@YAPEA_WPEA_WPEB_W@Z", scope: !1397, file: !1397, line: 548, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1447, file: !1276, line: 78)
!1447 = !DISubprogram(name: "wcstok", linkageName: "?wcstok@@YAPEA_WPEA_WPEB_W@Z", scope: !1397, file: !1397, line: 253, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1449, file: !1276, line: 79)
!1449 = !DISubprogram(name: "wcsxfrm", scope: !1397, file: !1397, line: 446, type: !1450, flags: DIFlagPrototyped, spFlags: 0)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!34, !817, !858, !34}
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1453, file: !1276, line: 80)
!1453 = !DISubprogram(name: "wctob", scope: !1287, file: !1287, line: 160, type: !1454, flags: DIFlagPrototyped, spFlags: 0)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!5, !1284}
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1457, file: !1276, line: 81)
!1457 = !DISubprogram(name: "wmemchr", linkageName: "?wmemchr@@YAPEA_WPEA_W_W_K@Z", scope: !1287, file: !1287, line: 268, type: !1458, flags: DIFlagPrototyped, spFlags: 0)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!817, !817, !818, !34}
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1461, file: !1276, line: 82)
!1461 = !DISubprogram(name: "wmemcmp", scope: !1287, file: !1287, line: 213, type: !1426, flags: DIFlagPrototyped, spFlags: 0)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1463, file: !1276, line: 83)
!1463 = !DISubprogram(name: "wmemcpy", scope: !1287, file: !1287, line: 229, type: !1422, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1465, file: !1276, line: 84)
!1465 = !DISubprogram(name: "wmemmove", scope: !1287, file: !1287, line: 240, type: !1422, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1467, file: !1276, line: 85)
!1467 = !DISubprogram(name: "wmemset", scope: !1287, file: !1287, line: 252, type: !1458, flags: DIFlagPrototyped, spFlags: 0)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1469, file: !1276, line: 86)
!1469 = !DISubprogram(name: "wcsftime", scope: !1282, file: !1282, line: 69, type: !1470, flags: DIFlagPrototyped, spFlags: 0)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!34, !817, !34, !858, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1281)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1475, file: !1276, line: 88)
!1475 = !DISubprogram(name: "vfwscanf", scope: !1105, file: !1105, line: 731, type: !1364, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1477, file: !1276, line: 89)
!1477 = !DISubprogram(name: "vswscanf", scope: !1105, file: !1105, line: 1900, type: !1478, flags: DIFlagPrototyped, spFlags: 0)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!5, !858, !858, !1250}
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1481, file: !1276, line: 90)
!1481 = !DISubprogram(name: "vwscanf", scope: !1105, file: !1105, line: 793, type: !1372, flags: DIFlagPrototyped, spFlags: 0)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1483, file: !1276, line: 91)
!1483 = !DISubprogram(name: "wcstof", scope: !1391, file: !1391, line: 207, type: !1484, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!887, !858, !1394}
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1487, file: !1276, line: 92)
!1487 = !DISubprogram(name: "wcstold", scope: !1391, file: !1391, line: 194, type: !1488, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!747, !858, !1394}
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1491, file: !1276, line: 93)
!1491 = !DISubprogram(name: "wcstoll", scope: !1391, file: !1391, line: 149, type: !1492, flags: DIFlagPrototyped, spFlags: 0)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!722, !858, !1394, !5}
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1495, file: !1276, line: 94)
!1495 = !DISubprogram(name: "wcstoull", scope: !1391, file: !1391, line: 179, type: !1496, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!30, !858, !1394, !5}
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !907, entity: !1499, file: !1500, line: 2241)
!1499 = !DICompositeType(tag: DW_TAG_class_type, name: "bad_function_call", scope: !14, file: !1500, line: 720, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AVbad_function_call@std@@")
!1500 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\functional", directory: "C:\\")
!1501 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1502, entity: !1503, file: !1500, line: 2249)
!1502 = !DINamespace(name: "placeholders", scope: !907)
!1503 = !DINamespace(name: "placeholders", scope: !14)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1505, file: !1507, line: 38)
!1505 = !DISubprogram(name: "isalnum", scope: !1506, file: !1506, line: 53, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1506 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\ctype.h", directory: "C:\\")
!1507 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\cctype", directory: "C:\\")
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1509, file: !1507, line: 39)
!1509 = !DISubprogram(name: "isalpha", scope: !1506, file: !1506, line: 31, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1511, file: !1507, line: 40)
!1511 = !DISubprogram(name: "iscntrl", scope: !1506, file: !1506, line: 59, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1513, file: !1507, line: 41)
!1513 = !DISubprogram(name: "isdigit", scope: !1506, file: !1506, line: 39, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1515, file: !1507, line: 42)
!1515 = !DISubprogram(name: "isgraph", scope: !1506, file: !1506, line: 57, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1517, file: !1507, line: 43)
!1517 = !DISubprogram(name: "islower", scope: !1506, file: !1506, line: 35, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1519, file: !1507, line: 44)
!1519 = !DISubprogram(name: "isprint", scope: !1506, file: !1506, line: 55, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1521, file: !1507, line: 45)
!1521 = !DISubprogram(name: "ispunct", scope: !1506, file: !1506, line: 49, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1523, file: !1507, line: 46)
!1523 = !DISubprogram(name: "isspace", scope: !1506, file: !1506, line: 46, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1525, file: !1507, line: 47)
!1525 = !DISubprogram(name: "isupper", scope: !1506, file: !1506, line: 33, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1527, file: !1507, line: 48)
!1527 = !DISubprogram(name: "isxdigit", scope: !1506, file: !1506, line: 42, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1529, file: !1507, line: 49)
!1529 = !DISubprogram(name: "tolower", scope: !1506, file: !1506, line: 66, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1531, file: !1507, line: 50)
!1531 = !DISubprogram(name: "toupper", scope: !1506, file: !1506, line: 63, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !1533, file: !1507, line: 52)
!1533 = !DISubprogram(name: "isblank", scope: !1506, file: !1506, line: 51, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!1535 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!1536 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!1537 = !{!"/DEFAULTLIB:libcpmt.lib"}
!1538 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!1539 = !{i32 2, !"Debug Info Version", i32 3}
!1540 = !{i32 1, !"wchar_size", i32 2}
!1541 = !{i32 7, !"PIC Level", i32 2}
!1542 = !{!"clang version 11.0.0 (https://github.com/ykfre/llvm-project.git 0785b9e4c1ca1c5deecfe71d37d3398ee84015c2)"}
!1543 = distinct !DISubprogram(name: "sanity", linkageName: "?sanity@returnFromFrame@tests@@YAX_N@Z", scope: !2, file: !4, line: 20, type: !1544, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !8}
!1546 = !DILocalVariable(name: "shouldCallDestructor", arg: 1, scope: !1543, file: !4, line: 20, type: !8)
!1547 = !DILocation(line: 20, column: 22, scope: !1543)
!1548 = !DILocalVariable(name: "a", scope: !1543, file: !4, line: 21, type: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !1543, file: !4, line: 21, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !116)
!1550 = !DILocation(line: 21, column: 8, scope: !1543)
!1551 = !DILocation(line: 32, column: 3, scope: !1543)
!1552 = !DILocation(line: 33, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1543, file: !4, line: 33, column: 7)
!1554 = !DILocation(line: 33, column: 7, scope: !1543)
!1555 = !DILocation(line: 34, column: 21, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !4, line: 33, column: 29)
!1557 = !DILocation(line: 34, column: 31, scope: !1556)
!1558 = !DILocation(line: 34, column: 5, scope: !1556)
!1559 = !DILocation(line: 35, column: 3, scope: !1556)
!1560 = !DILocation(line: 36, column: 21, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !4, line: 35, column: 10)
!1562 = !DILocation(line: 36, column: 31, scope: !1561)
!1563 = !DILocation(line: 36, column: 5, scope: !1561)
!1564 = !DILocation(line: 38, column: 1, scope: !1543)
!1565 = distinct !DISubprogram(name: "operator()", linkageName: "??R<lambda_0>@?0??sanity@returnFromFrame@tests@@YAX_N@Z@QEBA?A?<auto>@@XZ", scope: !1549, file: !4, line: 21, type: !1566, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, declaration: !1570, retainedNodes: !116)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1570 = !DISubprogram(name: "operator()", scope: !1549, file: !4, line: 21, type: !1571, scopeLine: 21, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1573, !1568}
!1573 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "auto")
!1574 = !DILocalVariable(name: "this", arg: 1, scope: !1565, type: !1575, flags: DIFlagArtificial | DIFlagObjectPointer)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1576 = !DILocation(line: 0, scope: !1565)
!1577 = !DILocalVariable(name: "m", scope: !1565, file: !4, line: 22, type: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "M", scope: !2, file: !4, line: 11, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1579, identifier: ".?AVM@returnFromFrame@tests@@")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1578, file: !4, line: 14, baseType: !5, size: 32, flags: DIFlagPublic)
!1581 = !DISubprogram(name: "~M", scope: !1578, file: !4, line: 13, type: !1582, scopeLine: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1585 = !DILocation(line: 22, column: 7, scope: !1565)
!1586 = !DILocation(line: 22, column: 5, scope: !1565)
!1587 = !DILocation(line: 23, column: 7, scope: !1565)
!1588 = !DILocation(line: 23, column: 9, scope: !1565)
!1589 = !DILocalVariable(name: "s", scope: !1590, file: !4, line: 25, type: !1578)
!1590 = distinct !DILexicalBlock(scope: !1565, file: !4, line: 24, column: 5)
!1591 = !DILocation(line: 25, column: 9, scope: !1590)
!1592 = !DILocation(line: 25, column: 7, scope: !1590)
!1593 = !DILocation(line: 26, column: 9, scope: !1590)
!1594 = !DILocation(line: 26, column: 11, scope: !1590)
!1595 = !DILocation(line: 27, column: 5, scope: !1565)
!1596 = !DILocation(line: 28, column: 5, scope: !1565)
!1597 = distinct !{!1597, !1596, !1596}
!1598 = !DILocalVariable(name: "r", scope: !1565, file: !4, line: 29, type: !1578)
!1599 = !DILocation(line: 29, column: 7, scope: !1565)
!1600 = !DILocation(line: 29, column: 5, scope: !1565)
!1601 = !DILocation(line: 30, column: 5, scope: !1565)
!1602 = !DILocation(line: 31, column: 3, scope: !1565)
!1603 = distinct !DISubprogram(name: "noOperationAfterConstructor", linkageName: "?noOperationAfterConstructor@returnFromFrame@tests@@YAXXZ", scope: !2, file: !4, line: 40, type: !173, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!1604 = !DILocalVariable(name: "a", scope: !1603, file: !4, line: 41, type: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !1603, file: !4, line: 41, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !116)
!1606 = !DILocation(line: 41, column: 8, scope: !1603)
!1607 = !DILocation(line: 46, column: 3, scope: !1603)
!1608 = !DILocation(line: 47, column: 19, scope: !1603)
!1609 = !DILocation(line: 47, column: 29, scope: !1603)
!1610 = !DILocation(line: 47, column: 3, scope: !1603)
!1611 = !DILocation(line: 48, column: 1, scope: !1603)
!1612 = distinct !DISubprogram(name: "operator()", linkageName: "??R<lambda_1>@?0??noOperationAfterConstructor@returnFromFrame@tests@@YAXXZ@QEBA?A?<auto>@@XZ", scope: !1605, file: !4, line: 41, type: !1613, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, declaration: !1617, retainedNodes: !116)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1617 = !DISubprogram(name: "operator()", scope: !1605, file: !4, line: 41, type: !1618, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1573, !1615}
!1620 = !DILocalVariable(name: "this", arg: 1, scope: !1612, type: !1621, flags: DIFlagArtificial | DIFlagObjectPointer)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1622 = !DILocation(line: 0, scope: !1612)
!1623 = !DILocalVariable(name: "m", scope: !1612, file: !4, line: 42, type: !1578)
!1624 = !DILocation(line: 42, column: 7, scope: !1612)
!1625 = !DILocation(line: 42, column: 5, scope: !1612)
!1626 = !DILocation(line: 43, column: 7, scope: !1612)
!1627 = !DILocation(line: 43, column: 9, scope: !1612)
!1628 = !DILocation(line: 44, column: 5, scope: !1612)
!1629 = distinct !{!1629, !1628, !1628}
!1630 = !DILocation(line: 45, column: 3, scope: !1612)
!1631 = distinct !DISubprogram(name: "func1", linkageName: "?func1@returnFromFrame@tests@@YAXXZ", scope: !2, file: !4, line: 49, type: !173, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!1632 = !DILocation(line: 49, column: 16, scope: !1631)
!1633 = distinct !{!1633, !1632, !1632}
!1634 = !DILocation(line: 49, column: 22, scope: !1631)
!1635 = distinct !DISubprogram(name: "func2", linkageName: "?func2@returnFromFrame@tests@@YAX_N@Z", scope: !2, file: !4, line: 51, type: !1544, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!1636 = !DILocalVariable(name: "shouldCallDestructor", arg: 1, scope: !1635, file: !4, line: 51, type: !8)
!1637 = !DILocation(line: 51, column: 17, scope: !1635)
!1638 = !DILocalVariable(name: "m", scope: !1635, file: !4, line: 52, type: !1578)
!1639 = !DILocation(line: 52, column: 5, scope: !1635)
!1640 = !DILocation(line: 52, column: 3, scope: !1635)
!1641 = !DILocation(line: 53, column: 5, scope: !1635)
!1642 = !DILocation(line: 53, column: 7, scope: !1635)
!1643 = !DILocation(line: 54, column: 3, scope: !1635)
!1644 = !DILocation(line: 55, column: 3, scope: !1635)
!1645 = !DILocation(line: 56, column: 1, scope: !1635)
!1646 = distinct !DISubprogram(name: "~M", linkageName: "??1M@returnFromFrame@tests@@QEAA@XZ", scope: !1578, file: !4, line: 13, type: !1582, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1581, retainedNodes: !116)
!1647 = !DILocalVariable(name: "this", arg: 1, scope: !1646, type: !1648, flags: DIFlagArtificial | DIFlagObjectPointer)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1649 = !DILocation(line: 0, scope: !1646)
!1650 = !DILocation(line: 13, column: 23, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !4, line: 13, column: 8)
!1652 = !DILocation(line: 13, column: 20, scope: !1651)
!1653 = !DILocation(line: 13, column: 26, scope: !1646)
!1654 = distinct !DISubprogram(name: "untilTwoFrames", linkageName: "?untilTwoFrames@returnFromFrame@tests@@YAX_N@Z", scope: !2, file: !4, line: 58, type: !1544, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!1655 = !DILocalVariable(name: "shouldCallDestructor", arg: 1, scope: !1654, file: !4, line: 58, type: !8)
!1656 = !DILocation(line: 58, column: 30, scope: !1654)
!1657 = !DILocalVariable(name: "a", scope: !1654, file: !4, line: 59, type: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !14, file: !42, line: 4564, baseType: !41)
!1659 = !DILocation(line: 59, column: 15, scope: !1654)
!1660 = !DILocation(line: 59, column: 19, scope: !1654)
!1661 = !DILocation(line: 59, column: 3, scope: !1654)
!1662 = !DILocation(line: 60, column: 9, scope: !1654)
!1663 = !DILocation(line: 60, column: 3, scope: !1654)
!1664 = !DILocation(line: 61, column: 21, scope: !1654)
!1665 = !DILocation(line: 61, column: 3, scope: !1654)
!1666 = !DILocation(line: 62, column: 19, scope: !1654)
!1667 = !DILocation(line: 62, column: 29, scope: !1654)
!1668 = !DILocation(line: 62, column: 3, scope: !1654)
!1669 = !DILocation(line: 63, column: 17, scope: !1654)
!1670 = !DILocation(line: 64, column: 1, scope: !1654)
!1671 = distinct !DISubprogram(name: "basic_string", linkageName: "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z", scope: !41, file: !42, line: 2335, type: !253, scopeLine: 2335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !252, retainedNodes: !116)
!1672 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !1671, file: !42, line: 2335, type: !248)
!1673 = !DILocation(line: 2335, column: 44, scope: !1671)
!1674 = !DILocalVariable(name: "this", arg: 1, scope: !1671, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1676 = !DILocation(line: 0, scope: !1671)
!1677 = !DILocation(line: 2335, column: 52, scope: !1671)
!1678 = !DILocalVariable(name: "_Alproxy", scope: !1679, file: !42, line: 2336, type: !1680)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !42, line: 2335, column: 90)
!1680 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !115, size: 64)
!1681 = !DILocation(line: 2336, column: 16, scope: !1679)
!1682 = !DILocalVariable(name: "_Proxy", scope: !1679, file: !42, line: 2337, type: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Container_proxy_ptr<std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alty>", scope: !14, file: !55, line: 1310, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Fake_proxy_ptr_impl", scope: !14, file: !55, line: 1252, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1685, identifier: ".?AU_Fake_proxy_ptr_impl@std@@")
!1685 = !{!1686, !1692, !1696, !1705, !1710, !1714}
!1686 = !DISubprogram(name: "_Fake_proxy_ptr_impl", scope: !1684, file: !55, line: 1253, type: !1687, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1690 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!1692 = !DISubprogram(name: "operator=", linkageName: "??4_Fake_proxy_ptr_impl@std@@QEAAAEAU01@AEBU01@@Z", scope: !1684, file: !55, line: 1254, type: !1693, scopeLine: 1254, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1695, !1689, !1690}
!1695 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1684, size: 64)
!1696 = !DISubprogram(name: "_Fake_proxy_ptr_impl", scope: !1684, file: !55, line: 1255, type: !1697, scopeLine: 1255, flags: DIFlagPrototyped, spFlags: 0)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1689, !113, !1699}
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Leave_proxy_unbound", scope: !14, file: !55, line: 1248, size: 8, flags: DIFlagTypePassByValue, elements: !1700, identifier: ".?AU_Leave_proxy_unbound@std@@")
!1700 = !{!1701}
!1701 = !DISubprogram(name: "_Leave_proxy_unbound", scope: !1699, file: !55, line: 1249, type: !1702, scopeLine: 1249, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1705 = !DISubprogram(name: "_Fake_proxy_ptr_impl", scope: !1684, file: !55, line: 1256, type: !1706, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1689, !113, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1710 = !DISubprogram(name: "_Bind", linkageName: "?_Bind@_Fake_proxy_ptr_impl@std@@QEAAXAEBU_Fake_allocator@2@PEAU_Container_base0@2@@Z", scope: !1684, file: !55, line: 1258, type: !1711, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: 0)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1689, !113, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1714 = !DISubprogram(name: "_Release", linkageName: "?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ", scope: !1684, file: !55, line: 1259, type: !1715, scopeLine: 1259, flags: DIFlagPrototyped, spFlags: 0)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1689}
!1717 = !DILocation(line: 2337, column: 37, scope: !1679)
!1718 = !DILocation(line: 2337, column: 54, scope: !1679)
!1719 = !DILocation(line: 2337, column: 62, scope: !1679)
!1720 = !DILocation(line: 2337, column: 44, scope: !1679)
!1721 = !DILocation(line: 2338, column: 9, scope: !1679)
!1722 = !DILocation(line: 2339, column: 16, scope: !1679)
!1723 = !DILocation(line: 2339, column: 9, scope: !1679)
!1724 = !DILocation(line: 2340, column: 16, scope: !1679)
!1725 = !DILocation(line: 2341, column: 5, scope: !1671)
!1726 = !DILocation(line: 2341, column: 5, scope: !1679)
!1727 = distinct !DISubprogram(name: "operator!=<char, std::char_traits<char>, std::allocator<char> >", linkageName: "??$?9DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z", scope: !14, file: !42, line: 4496, type: !1728, scopeLine: 4496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !654, retainedNodes: !116)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!8, !198, !248}
!1730 = !DILocalVariable(name: "_Right", arg: 2, scope: !1727, file: !42, line: 4496, type: !248)
!1731 = !DILocation(line: 4496, column: 105, scope: !1727)
!1732 = !DILocalVariable(name: "_Left", arg: 1, scope: !1727, file: !42, line: 4496, type: !198)
!1733 = !DILocation(line: 4496, column: 72, scope: !1727)
!1734 = !DILocation(line: 4497, column: 23, scope: !1727)
!1735 = !DILocation(line: 4497, column: 14, scope: !1727)
!1736 = !DILocation(line: 4497, column: 20, scope: !1727)
!1737 = !DILocation(line: 4497, column: 12, scope: !1727)
!1738 = !DILocation(line: 4497, column: 5, scope: !1727)
!1739 = distinct !DISubprogram(name: "~basic_string", linkageName: "??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ", scope: !41, file: !42, line: 2722, type: !204, scopeLine: 2722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !373, retainedNodes: !116)
!1740 = !DILocalVariable(name: "this", arg: 1, scope: !1739, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1741 = !DILocation(line: 0, scope: !1739)
!1742 = !DILocation(line: 2723, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !42, line: 2722, column: 30)
!1744 = !DILocation(line: 2730, column: 5, scope: !1743)
!1745 = !DILocation(line: 2730, column: 5, scope: !1739)
!1746 = distinct !DISubprogram(name: "_Tidy_deallocate", linkageName: "?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !41, file: !42, line: 4299, type: !204, scopeLine: 4299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !639, retainedNodes: !116)
!1747 = !DILocalVariable(name: "this", arg: 1, scope: !1746, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1748 = !DILocation(line: 0, scope: !1746)
!1749 = !DILocation(line: 4300, column: 9, scope: !1746)
!1750 = !DILocation(line: 4300, column: 17, scope: !1746)
!1751 = !DILocation(line: 4300, column: 25, scope: !1746)
!1752 = !DILocation(line: 4301, column: 13, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1746, file: !42, line: 4301, column: 13)
!1754 = !DILocation(line: 4301, column: 21, scope: !1753)
!1755 = !DILocation(line: 4301, column: 29, scope: !1753)
!1756 = !DILocation(line: 4301, column: 13, scope: !1746)
!1757 = !DILocalVariable(name: "_Ptr", scope: !1758, file: !42, line: 4302, type: !1759)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !42, line: 4301, column: 54)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !41, file: !42, line: 2230, baseType: !220)
!1761 = !DILocation(line: 4302, column: 27, scope: !1758)
!1762 = !DILocation(line: 4302, column: 34, scope: !1758)
!1763 = !DILocation(line: 4302, column: 42, scope: !1758)
!1764 = !DILocation(line: 4302, column: 50, scope: !1758)
!1765 = !DILocation(line: 4302, column: 54, scope: !1758)
!1766 = !DILocalVariable(name: "_Al", scope: !1758, file: !42, line: 4303, type: !183)
!1767 = !DILocation(line: 4303, column: 19, scope: !1758)
!1768 = !DILocation(line: 4303, column: 34, scope: !1758)
!1769 = !DILocation(line: 4304, column: 31, scope: !1758)
!1770 = !DILocation(line: 4304, column: 39, scope: !1758)
!1771 = !DILocation(line: 4304, column: 47, scope: !1758)
!1772 = !DILocation(line: 4304, column: 51, scope: !1758)
!1773 = !DILocation(line: 4304, column: 13, scope: !1758)
!1774 = !DILocation(line: 4305, column: 13, scope: !1758)
!1775 = !DILocation(line: 4305, column: 34, scope: !1758)
!1776 = !DILocation(line: 4305, column: 42, scope: !1758)
!1777 = !DILocation(line: 4305, column: 50, scope: !1758)
!1778 = !DILocation(line: 4305, column: 57, scope: !1758)
!1779 = !DILocation(line: 4305, column: 28, scope: !1758)
!1780 = !DILocation(line: 4305, column: 17, scope: !1758)
!1781 = !DILocation(line: 4306, column: 9, scope: !1758)
!1782 = !DILocation(line: 4308, column: 9, scope: !1746)
!1783 = !DILocation(line: 4308, column: 17, scope: !1746)
!1784 = !DILocation(line: 4308, column: 25, scope: !1746)
!1785 = !DILocation(line: 4308, column: 33, scope: !1746)
!1786 = !DILocation(line: 4309, column: 9, scope: !1746)
!1787 = !DILocation(line: 4309, column: 17, scope: !1746)
!1788 = !DILocation(line: 4309, column: 25, scope: !1746)
!1789 = !DILocation(line: 4309, column: 33, scope: !1746)
!1790 = !DILocation(line: 4311, column: 54, scope: !1746)
!1791 = !DILocation(line: 4311, column: 25, scope: !1746)
!1792 = !DILocation(line: 4311, column: 33, scope: !1746)
!1793 = !DILocation(line: 4311, column: 41, scope: !1746)
!1794 = !DILocation(line: 4311, column: 45, scope: !1746)
!1795 = !DILocation(line: 4311, column: 9, scope: !1746)
!1796 = !DILocation(line: 4312, column: 5, scope: !1746)
!1797 = distinct !DISubprogram(name: "~_Compressed_pair", linkageName: "??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ", scope: !54, file: !55, line: 1327, type: !1798, scopeLine: 1327, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1800, retainedNodes: !116)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !184}
!1800 = !DISubprogram(name: "~_Compressed_pair", scope: !54, type: !1798, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1801 = !DILocalVariable(name: "this", arg: 1, scope: !1797, type: !1802, flags: DIFlagArtificial | DIFlagObjectPointer)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1803 = !DILocation(line: 0, scope: !1797)
!1804 = !DILocation(line: 1327, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1797, file: !55, line: 1327, column: 7)
!1806 = !DILocation(line: 1327, column: 7, scope: !1797)
!1807 = distinct !DISubprogram(name: "_Orphan_all", linkageName: "?_Orphan_all@_Container_base0@std@@QEAAXXZ", scope: !100, file: !55, line: 1065, type: !103, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !102, retainedNodes: !116)
!1808 = !DILocalVariable(name: "this", arg: 1, scope: !1807, type: !1713, flags: DIFlagArtificial | DIFlagObjectPointer)
!1809 = !DILocation(line: 0, scope: !1807)
!1810 = !DILocation(line: 1065, column: 34, scope: !1807)
!1811 = distinct !DISubprogram(name: "_Large_string_engaged", linkageName: "?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ", scope: !96, file: !42, line: 2152, type: !166, scopeLine: 2152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !165, retainedNodes: !116)
!1812 = !DILocalVariable(name: "this", arg: 1, scope: !1811, type: !1813, flags: DIFlagArtificial | DIFlagObjectPointer)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1814 = !DILocation(line: 0, scope: !1811)
!1815 = !DILocation(line: 2153, column: 29, scope: !1811)
!1816 = !DILocation(line: 2153, column: 26, scope: !1811)
!1817 = !DILocation(line: 2153, column: 9, scope: !1811)
!1818 = distinct !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ", scope: !41, file: !42, line: 4324, type: !643, scopeLine: 4324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !642, retainedNodes: !116)
!1819 = !DILocalVariable(name: "this", arg: 1, scope: !1818, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1820 = !DILocation(line: 0, scope: !1818)
!1821 = !DILocation(line: 4325, column: 16, scope: !1818)
!1822 = !DILocation(line: 4325, column: 24, scope: !1818)
!1823 = !DILocation(line: 4325, column: 9, scope: !1818)
!1824 = distinct !DISubprogram(name: "_Destroy_in_place<char *>", linkageName: "??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z", scope: !14, file: !55, line: 267, type: !1825, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1828, retainedNodes: !116)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!1828 = !{!1829}
!1829 = !DITemplateTypeParameter(name: "_Ty", type: !32)
!1830 = !DILocalVariable(name: "_Obj", arg: 1, scope: !1824, file: !55, line: 267, type: !1827)
!1831 = !DILocation(line: 267, column: 29, scope: !1824)
!1832 = !DILocation(line: 268, column: 5, scope: !1824)
!1833 = !DILocation(line: 269, column: 1, scope: !1824)
!1834 = distinct !DISubprogram(name: "deallocate", linkageName: "?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z", scope: !58, file: !55, line: 801, type: !79, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !78, retainedNodes: !116)
!1835 = !DILocalVariable(name: "_Count", arg: 3, scope: !1834, file: !55, line: 801, type: !50)
!1836 = !DILocation(line: 801, column: 51, scope: !1834)
!1837 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !1834, file: !55, line: 801, type: !81)
!1838 = !DILocation(line: 801, column: 32, scope: !1834)
!1839 = !DILocalVariable(name: "this", arg: 1, scope: !1834, type: !1840, flags: DIFlagArtificial | DIFlagObjectPointer)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1841 = !DILocation(line: 0, scope: !1834)
!1842 = !DILocation(line: 803, column: 60, scope: !1834)
!1843 = !DILocation(line: 803, column: 58, scope: !1834)
!1844 = !DILocation(line: 803, column: 40, scope: !1834)
!1845 = !DILocation(line: 803, column: 9, scope: !1834)
!1846 = !DILocation(line: 804, column: 5, scope: !1834)
!1847 = distinct !DISubprogram(name: "assign", linkageName: "?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z", scope: !660, file: !42, line: 372, type: !682, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !681, retainedNodes: !116)
!1848 = !DILocalVariable(name: "_Right", arg: 2, scope: !1847, file: !42, line: 372, type: !69)
!1849 = !DILocation(line: 372, column: 64, scope: !1847)
!1850 = !DILocalVariable(name: "_Left", arg: 1, scope: !1847, file: !42, line: 372, type: !65)
!1851 = !DILocation(line: 372, column: 44, scope: !1847)
!1852 = !DILocation(line: 373, column: 17, scope: !1847)
!1853 = !DILocation(line: 373, column: 9, scope: !1847)
!1854 = !DILocation(line: 373, column: 15, scope: !1847)
!1855 = !DILocation(line: 374, column: 5, scope: !1847)
!1856 = distinct !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ", scope: !54, file: !55, line: 1343, type: !181, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !180, retainedNodes: !116)
!1857 = !DILocalVariable(name: "this", arg: 1, scope: !1856, type: !1802, flags: DIFlagArtificial | DIFlagObjectPointer)
!1858 = !DILocation(line: 0, scope: !1856)
!1859 = !DILocation(line: 1344, column: 16, scope: !1856)
!1860 = !DILocation(line: 1344, column: 9, scope: !1856)
!1861 = distinct !DISubprogram(name: "_Deallocate<16, 0>", linkageName: "??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z", scope: !14, file: !55, line: 213, type: !1862, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1864, retainedNodes: !116)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !31, !34}
!1864 = !{!1865, !1866}
!1865 = !DITemplateValueParameter(name: "_Align", type: !30, value: i64 16)
!1866 = !DITemplateValueParameter(type: !5, value: i32 0)
!1867 = !DILocalVariable(name: "_Bytes", arg: 2, scope: !1861, file: !55, line: 213, type: !34)
!1868 = !DILocation(line: 213, column: 37, scope: !1861)
!1869 = !DILocalVariable(name: "_Ptr", arg: 1, scope: !1861, file: !55, line: 213, type: !31)
!1870 = !DILocation(line: 213, column: 24, scope: !1861)
!1871 = !DILocation(line: 216, column: 9, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1861, file: !55, line: 216, column: 9)
!1873 = !DILocation(line: 216, column: 16, scope: !1872)
!1874 = !DILocation(line: 216, column: 9, scope: !1861)
!1875 = !DILocation(line: 217, column: 9, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !55, line: 216, column: 46)
!1877 = !DILocation(line: 218, column: 5, scope: !1876)
!1878 = !DILocation(line: 221, column: 29, scope: !1861)
!1879 = !DILocation(line: 221, column: 23, scope: !1861)
!1880 = !DILocation(line: 221, column: 5, scope: !1861)
!1881 = !DILocation(line: 222, column: 1, scope: !1861)
!1882 = distinct !DISubprogram(name: "_Adjust_manually_vector_aligned", linkageName: "?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z", scope: !14, file: !55, line: 132, type: !1883, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !31, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !34, size: 64)
!1887 = !DILocalVariable(name: "_Bytes", arg: 2, scope: !1882, file: !55, line: 132, type: !1886)
!1888 = !DILocation(line: 132, column: 66, scope: !1882)
!1889 = !DILocalVariable(name: "_Ptr", arg: 1, scope: !1882, file: !55, line: 132, type: !1885)
!1890 = !DILocation(line: 132, column: 52, scope: !1882)
!1891 = !DILocation(line: 134, column: 5, scope: !1882)
!1892 = !DILocation(line: 134, column: 12, scope: !1882)
!1893 = !DILocalVariable(name: "_Ptr_user", scope: !1882, file: !55, line: 136, type: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!1897 = !DILocation(line: 136, column: 28, scope: !1882)
!1898 = !DILocation(line: 136, column: 69, scope: !1882)
!1899 = !DILocation(line: 136, column: 40, scope: !1882)
!1900 = !DILocalVariable(name: "_Ptr_container", scope: !1882, file: !55, line: 137, type: !1896)
!1901 = !DILocation(line: 137, column: 21, scope: !1882)
!1902 = !DILocation(line: 137, column: 40, scope: !1882)
!1903 = !DILocalVariable(name: "_Min_back_shift", scope: !1882, file: !55, line: 148, type: !1896)
!1904 = !DILocation(line: 148, column: 25, scope: !1882)
!1905 = !DILocalVariable(name: "_Back_shift", scope: !1882, file: !55, line: 150, type: !1896)
!1906 = !DILocation(line: 150, column: 21, scope: !1882)
!1907 = !DILocation(line: 150, column: 63, scope: !1882)
!1908 = !DILocation(line: 150, column: 35, scope: !1882)
!1909 = !DILocation(line: 150, column: 71, scope: !1882)
!1910 = !DILocation(line: 150, column: 69, scope: !1882)
!1911 = !DILocation(line: 151, column: 5, scope: !1882)
!1912 = !DILocation(line: 151, column: 5, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !55, line: 151, column: 5)
!1914 = distinct !DILexicalBlock(scope: !1882, file: !55, line: 151, column: 5)
!1915 = !DILocation(line: 151, column: 5, scope: !1914)
!1916 = !DILocation(line: 151, column: 5, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !55, line: 151, column: 5)
!1918 = !DILocation(line: 151, column: 5, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !55, line: 151, column: 5)
!1920 = !DILocation(line: 151, column: 5, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1919, file: !55, line: 151, column: 5)
!1922 = !DILocation(line: 152, column: 36, scope: !1882)
!1923 = !DILocation(line: 152, column: 12, scope: !1882)
!1924 = !DILocation(line: 152, column: 5, scope: !1882)
!1925 = !DILocation(line: 152, column: 10, scope: !1882)
!1926 = !DILocation(line: 153, column: 1, scope: !1882)
!1927 = distinct !DISubprogram(name: "~_String_val", linkageName: "??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !96, file: !42, line: 2114, type: !151, scopeLine: 2114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1928, retainedNodes: !116)
!1928 = !DISubprogram(name: "~_String_val", scope: !96, type: !151, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1929 = !DILocalVariable(name: "this", arg: 1, scope: !1927, type: !1930, flags: DIFlagArtificial | DIFlagObjectPointer)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!1931 = !DILocation(line: 0, scope: !1927)
!1932 = !DILocation(line: 2114, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1927, file: !42, line: 2114, column: 7)
!1934 = !DILocation(line: 2114, column: 7, scope: !1927)
!1935 = distinct !DISubprogram(name: "~_Bxty", linkageName: "??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !129, file: !42, line: 2180, type: !144, scopeLine: 2180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !147, retainedNodes: !116)
!1936 = !DILocalVariable(name: "this", arg: 1, scope: !1935, type: !1937, flags: DIFlagArtificial | DIFlagObjectPointer)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1938 = !DILocation(line: 0, scope: !1935)
!1939 = !DILocation(line: 2180, column: 28, scope: !1935)
!1940 = distinct !DISubprogram(name: "_Compressed_pair<>", linkageName: "??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z", scope: !54, file: !55, line: 1334, type: !1941, scopeLine: 1336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1950, declaration: !1949, retainedNodes: !116)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !184, !1943}
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Zero_then_variadic_args_t", scope: !14, file: !55, line: 1318, size: 8, flags: DIFlagTypePassByValue, elements: !1944, identifier: ".?AU_Zero_then_variadic_args_t@std@@")
!1944 = !{!1945}
!1945 = !DISubprogram(name: "_Zero_then_variadic_args_t", scope: !1943, file: !55, line: 1319, type: !1946, scopeLine: 1319, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1949 = !DISubprogram(name: "_Compressed_pair<>", scope: !54, file: !55, line: 1334, type: !1941, scopeLine: 1334, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1950)
!1950 = !{!1951}
!1951 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Other2", value: !116)
!1952 = !DILocalVariable(arg: 2, scope: !1940, file: !55, line: 1334, type: !1943)
!1953 = !DILocation(line: 1334, column: 67, scope: !1940)
!1954 = !DILocalVariable(name: "this", arg: 1, scope: !1940, type: !1802, flags: DIFlagArtificial | DIFlagObjectPointer)
!1955 = !DILocation(line: 0, scope: !1940)
!1956 = !DILocation(line: 1336, column: 60, scope: !1940)
!1957 = !DILocation(line: 1336, column: 11, scope: !1940)
!1958 = !DILocation(line: 1336, column: 19, scope: !1940)
!1959 = !DILocation(line: 1336, column: 61, scope: !1940)
!1960 = !DILocation(line: 1336, column: 61, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1940, file: !55, line: 1336, column: 60)
!1962 = distinct !DISubprogram(name: "_Fake_proxy_ptr_impl", linkageName: "??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z", scope: !1684, file: !55, line: 1256, type: !1706, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1705, retainedNodes: !116)
!1963 = !DILocalVariable(arg: 3, scope: !1962, file: !55, line: 1256, type: !1708)
!1964 = !DILocation(line: 1256, column: 73, scope: !1962)
!1965 = !DILocalVariable(arg: 2, scope: !1962, file: !55, line: 1256, type: !113)
!1966 = !DILocation(line: 1256, column: 48, scope: !1962)
!1967 = !DILocalVariable(name: "this", arg: 1, scope: !1962, type: !1968, flags: DIFlagArtificial | DIFlagObjectPointer)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1969 = !DILocation(line: 0, scope: !1962)
!1970 = !DILocation(line: 1256, column: 85, scope: !1962)
!1971 = distinct !DISubprogram(name: "_Tidy_init", linkageName: "?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !41, file: !42, line: 4292, type: !204, scopeLine: 4292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !638, retainedNodes: !116)
!1972 = !DILocalVariable(name: "this", arg: 1, scope: !1971, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1973 = !DILocation(line: 0, scope: !1971)
!1974 = !DILocation(line: 4293, column: 9, scope: !1971)
!1975 = !DILocation(line: 4293, column: 17, scope: !1971)
!1976 = !DILocation(line: 4293, column: 25, scope: !1971)
!1977 = !DILocation(line: 4293, column: 33, scope: !1971)
!1978 = !DILocation(line: 4294, column: 9, scope: !1971)
!1979 = !DILocation(line: 4294, column: 17, scope: !1971)
!1980 = !DILocation(line: 4294, column: 25, scope: !1971)
!1981 = !DILocation(line: 4294, column: 33, scope: !1971)
!1982 = !DILocation(line: 4296, column: 54, scope: !1971)
!1983 = !DILocation(line: 4296, column: 25, scope: !1971)
!1984 = !DILocation(line: 4296, column: 33, scope: !1971)
!1985 = !DILocation(line: 4296, column: 41, scope: !1971)
!1986 = !DILocation(line: 4296, column: 45, scope: !1971)
!1987 = !DILocation(line: 4296, column: 9, scope: !1971)
!1988 = !DILocation(line: 4297, column: 5, scope: !1971)
!1989 = distinct !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z", scope: !41, file: !42, line: 2983, type: !385, scopeLine: 2983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !409, retainedNodes: !116)
!1990 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !1989, file: !42, line: 2983, type: !248)
!1991 = !DILocation(line: 2983, column: 52, scope: !1989)
!1992 = !DILocalVariable(name: "this", arg: 1, scope: !1989, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1993 = !DILocation(line: 0, scope: !1989)
!1994 = !DILocation(line: 2984, column: 70, scope: !1989)
!1995 = !DILocation(line: 2984, column: 54, scope: !1989)
!1996 = !DILocation(line: 2984, column: 29, scope: !1989)
!1997 = !DILocation(line: 2984, column: 23, scope: !1989)
!1998 = !DILocation(line: 2984, column: 16, scope: !1989)
!1999 = !DILocation(line: 2984, column: 9, scope: !1989)
!2000 = distinct !DISubprogram(name: "_Release", linkageName: "?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ", scope: !1684, file: !55, line: 1259, type: !1715, scopeLine: 1259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1714, retainedNodes: !116)
!2001 = !DILocalVariable(name: "this", arg: 1, scope: !2000, type: !1968, flags: DIFlagArtificial | DIFlagObjectPointer)
!2002 = !DILocation(line: 0, scope: !2000)
!2003 = !DILocation(line: 1259, column: 31, scope: !2000)
!2004 = distinct !DISubprogram(name: "allocator", linkageName: "??0?$allocator@D@std@@QEAA@XZ", scope: !58, file: !55, line: 795, type: !71, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !70, retainedNodes: !116)
!2005 = !DILocalVariable(name: "this", arg: 1, scope: !2004, type: !1840, flags: DIFlagArtificial | DIFlagObjectPointer)
!2006 = !DILocation(line: 0, scope: !2004)
!2007 = !DILocation(line: 795, column: 37, scope: !2004)
!2008 = distinct !DISubprogram(name: "_String_val", linkageName: "??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !96, file: !42, line: 2124, type: !151, scopeLine: 2124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !150, retainedNodes: !116)
!2009 = !DILocalVariable(name: "this", arg: 1, scope: !2008, type: !1930, flags: DIFlagArtificial | DIFlagObjectPointer)
!2010 = !DILocation(line: 0, scope: !2008)
!2011 = !DILocation(line: 2124, column: 50, scope: !2008)
!2012 = !DILocation(line: 2124, column: 21, scope: !2008)
!2013 = !DILocation(line: 2124, column: 28, scope: !2008)
!2014 = !DILocation(line: 2124, column: 40, scope: !2008)
!2015 = !DILocation(line: 2124, column: 51, scope: !2008)
!2016 = !DILocation(line: 2124, column: 51, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2008, file: !42, line: 2124, column: 50)
!2018 = distinct !DISubprogram(name: "_Bxty", linkageName: "??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !129, file: !42, line: 2178, type: !144, scopeLine: 2178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !143, retainedNodes: !116)
!2019 = !DILocalVariable(name: "this", arg: 1, scope: !2018, type: !1937, flags: DIFlagArtificial | DIFlagObjectPointer)
!2020 = !DILocation(line: 0, scope: !2018)
!2021 = !DILocation(line: 2178, column: 18, scope: !2018)
!2022 = distinct !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z", scope: !41, file: !42, line: 2964, type: !400, scopeLine: 2964, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !408, retainedNodes: !116)
!2023 = !DILocalVariable(name: "_Count", arg: 3, scope: !2022, file: !42, line: 2964, type: !212)
!2024 = !DILocation(line: 2964, column: 105, scope: !2022)
!2025 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !2022, file: !42, line: 2964, type: !248)
!2026 = !DILocation(line: 2964, column: 64, scope: !2022)
!2027 = !DILocalVariable(name: "this", arg: 1, scope: !2022, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!2028 = !DILocation(line: 0, scope: !2022)
!2029 = !DILocation(line: 2966, column: 13, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2022, file: !42, line: 2966, column: 13)
!2031 = !DILocation(line: 2966, column: 23, scope: !2030)
!2032 = !DILocation(line: 2966, column: 31, scope: !2030)
!2033 = !DILocation(line: 2966, column: 39, scope: !2030)
!2034 = !DILocation(line: 2966, column: 20, scope: !2030)
!2035 = !DILocation(line: 2966, column: 13, scope: !2022)
!2036 = !DILocalVariable(name: "_Old_ptr", scope: !2037, file: !42, line: 2967, type: !81)
!2037 = distinct !DILexicalBlock(scope: !2030, file: !42, line: 2966, column: 47)
!2038 = !DILocation(line: 2967, column: 26, scope: !2037)
!2039 = !DILocation(line: 2967, column: 39, scope: !2037)
!2040 = !DILocation(line: 2967, column: 47, scope: !2037)
!2041 = !DILocation(line: 2967, column: 55, scope: !2037)
!2042 = !DILocation(line: 2968, column: 39, scope: !2037)
!2043 = !DILocation(line: 2968, column: 13, scope: !2037)
!2044 = !DILocation(line: 2968, column: 21, scope: !2037)
!2045 = !DILocation(line: 2968, column: 29, scope: !2037)
!2046 = !DILocation(line: 2968, column: 37, scope: !2037)
!2047 = !DILocation(line: 2969, column: 43, scope: !2037)
!2048 = !DILocation(line: 2969, column: 37, scope: !2037)
!2049 = !DILocation(line: 2969, column: 27, scope: !2037)
!2050 = !DILocation(line: 2969, column: 13, scope: !2037)
!2051 = !DILocation(line: 2970, column: 47, scope: !2037)
!2052 = !DILocation(line: 2970, column: 29, scope: !2037)
!2053 = !DILocation(line: 2970, column: 38, scope: !2037)
!2054 = !DILocation(line: 2970, column: 13, scope: !2037)
!2055 = !DILocation(line: 2971, column: 13, scope: !2037)
!2056 = !DILocation(line: 2980, column: 13, scope: !2022)
!2057 = !DILocation(line: 2975, column: 13, scope: !2022)
!2058 = !DILocation(line: 2974, column: 16, scope: !2022)
!2059 = !DILocation(line: 2974, column: 9, scope: !2022)
!2060 = !DILocation(line: 2981, column: 5, scope: !2022)
!2061 = distinct !DISubprogram(name: "_Convert_size<unsigned long long>", linkageName: "??$_Convert_size@_K@std@@YA_K_K@Z", scope: !14, file: !55, line: 990, type: !2062, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2064, retainedNodes: !116)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!34, !50}
!2064 = !{!2065}
!2065 = !DITemplateTypeParameter(name: "_Size_type", type: !30)
!2066 = !DILocalVariable(name: "_Len", arg: 1, scope: !2061, file: !55, line: 990, type: !50)
!2067 = !DILocation(line: 990, column: 64, scope: !2061)
!2068 = !DILocation(line: 992, column: 12, scope: !2061)
!2069 = !DILocation(line: 992, column: 5, scope: !2061)
!2070 = distinct !DISubprogram(name: "length", linkageName: "?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z", scope: !660, file: !42, line: 305, type: !666, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !665, retainedNodes: !116)
!2071 = !DILocalVariable(name: "_First", arg: 1, scope: !2070, file: !42, line: 305, type: !248)
!2072 = !DILocation(line: 305, column: 76, scope: !2070)
!2073 = !DILocation(line: 321, column: 59, scope: !2070)
!2074 = !DILocation(line: 321, column: 16, scope: !2070)
!2075 = !DILocation(line: 321, column: 9, scope: !2070)
!2076 = distinct !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ", scope: !96, file: !42, line: 2134, type: !155, scopeLine: 2134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !154, retainedNodes: !116)
!2077 = !DILocalVariable(name: "this", arg: 1, scope: !2076, type: !1930, flags: DIFlagArtificial | DIFlagObjectPointer)
!2078 = !DILocation(line: 0, scope: !2076)
!2079 = !DILocalVariable(name: "_Result", scope: !2076, file: !42, line: 2135, type: !157)
!2080 = !DILocation(line: 2135, column: 21, scope: !2076)
!2081 = !DILocation(line: 2135, column: 31, scope: !2076)
!2082 = !DILocation(line: 2135, column: 35, scope: !2076)
!2083 = !DILocation(line: 2136, column: 13, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !42, line: 2136, column: 13)
!2085 = !DILocation(line: 2136, column: 13, scope: !2076)
!2086 = !DILocation(line: 2137, column: 32, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !42, line: 2136, column: 38)
!2088 = !DILocation(line: 2137, column: 36, scope: !2087)
!2089 = !DILocation(line: 2137, column: 23, scope: !2087)
!2090 = !DILocation(line: 2137, column: 21, scope: !2087)
!2091 = !DILocation(line: 2138, column: 9, scope: !2087)
!2092 = !DILocation(line: 2140, column: 16, scope: !2076)
!2093 = !DILocation(line: 2140, column: 9, scope: !2076)
!2094 = distinct !DISubprogram(name: "move", linkageName: "?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !660, file: !42, line: 360, type: !669, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !677, retainedNodes: !116)
!2095 = !DILocalVariable(name: "_Count", arg: 3, scope: !2094, file: !42, line: 361, type: !50)
!2096 = !DILocation(line: 361, column: 22, scope: !2094)
!2097 = !DILocalVariable(name: "_First2", arg: 2, scope: !2094, file: !42, line: 360, type: !248)
!2098 = !DILocation(line: 360, column: 109, scope: !2094)
!2099 = !DILocalVariable(name: "_First1", arg: 1, scope: !2094, file: !42, line: 360, type: !81)
!2100 = !DILocation(line: 360, column: 62, scope: !2094)
!2101 = !DILocation(line: 363, column: 50, scope: !2094)
!2102 = !DILocation(line: 363, column: 59, scope: !2094)
!2103 = !DILocation(line: 363, column: 68, scope: !2094)
!2104 = !DILocation(line: 363, column: 36, scope: !2094)
!2105 = !DILocation(line: 363, column: 9, scope: !2094)
!2106 = distinct !DISubprogram(name: "_Reallocate_for<(lambda at C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\xstring:2976:13), const char *>", linkageName: "??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z", scope: !41, file: !42, line: 4218, type: !2107, scopeLine: 4218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2111, declaration: !2110, retainedNodes: !116)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!295, !197, !212, !2109, !39}
!2109 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !2022, file: !42, line: 2976, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !116, identifier: ".?AV<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@")
!2110 = !DISubprogram(name: "_Reallocate_for<(lambda at C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\xstring:2976:13), const char *>", linkageName: "??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z", scope: !41, file: !42, line: 4218, type: !2107, scopeLine: 4218, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2111)
!2111 = !{!2112, !2113}
!2112 = !DITemplateTypeParameter(name: "_Fty", type: !2109)
!2113 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_ArgTys", value: !2114)
!2114 = !{!2115}
!2115 = !DITemplateTypeParameter(type: !39)
!2116 = !DILocalVariable(name: "_Args", arg: 4, scope: !2106, file: !42, line: 4218, type: !39)
!2117 = !DILocation(line: 4218, column: 83, scope: !2106)
!2118 = !DILocalVariable(name: "_Fn", arg: 3, scope: !2106, file: !42, line: 4218, type: !2109)
!2119 = !DILocation(line: 4218, column: 67, scope: !2106)
!2120 = !DILocalVariable(name: "_New_size", arg: 2, scope: !2106, file: !42, line: 4218, type: !212)
!2121 = !DILocation(line: 4218, column: 51, scope: !2106)
!2122 = !DILocalVariable(name: "this", arg: 1, scope: !2106, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!2123 = !DILocation(line: 0, scope: !2106)
!2124 = !DILocation(line: 4221, column: 13, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2106, file: !42, line: 4221, column: 13)
!2126 = !DILocation(line: 4221, column: 25, scope: !2125)
!2127 = !DILocation(line: 4221, column: 23, scope: !2125)
!2128 = !DILocation(line: 4221, column: 13, scope: !2106)
!2129 = !DILocation(line: 4222, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !42, line: 4221, column: 37)
!2131 = !DILocalVariable(name: "_Old_capacity", scope: !2106, file: !42, line: 4225, type: !212)
!2132 = !DILocation(line: 4225, column: 25, scope: !2106)
!2133 = !DILocation(line: 4225, column: 41, scope: !2106)
!2134 = !DILocation(line: 4225, column: 49, scope: !2106)
!2135 = !DILocation(line: 4225, column: 57, scope: !2106)
!2136 = !DILocalVariable(name: "_New_capacity", scope: !2106, file: !42, line: 4226, type: !212)
!2137 = !DILocation(line: 4226, column: 25, scope: !2106)
!2138 = !DILocation(line: 4226, column: 59, scope: !2106)
!2139 = !DILocation(line: 4226, column: 41, scope: !2106)
!2140 = !DILocalVariable(name: "_Al", scope: !2106, file: !42, line: 4227, type: !183)
!2141 = !DILocation(line: 4227, column: 15, scope: !2106)
!2142 = !DILocation(line: 4227, column: 41, scope: !2106)
!2143 = !DILocalVariable(name: "_New_ptr", scope: !2106, file: !42, line: 4228, type: !1759)
!2144 = !DILocation(line: 4228, column: 23, scope: !2106)
!2145 = !DILocation(line: 4228, column: 41, scope: !2106)
!2146 = !DILocation(line: 4228, column: 54, scope: !2106)
!2147 = !DILocation(line: 4228, column: 68, scope: !2106)
!2148 = !DILocation(line: 4228, column: 45, scope: !2106)
!2149 = !DILocation(line: 4229, column: 9, scope: !2106)
!2150 = !DILocation(line: 4229, column: 17, scope: !2106)
!2151 = !DILocation(line: 4229, column: 25, scope: !2106)
!2152 = !DILocation(line: 4230, column: 35, scope: !2106)
!2153 = !DILocation(line: 4230, column: 9, scope: !2106)
!2154 = !DILocation(line: 4230, column: 17, scope: !2106)
!2155 = !DILocation(line: 4230, column: 25, scope: !2106)
!2156 = !DILocation(line: 4230, column: 33, scope: !2106)
!2157 = !DILocation(line: 4231, column: 35, scope: !2106)
!2158 = !DILocation(line: 4231, column: 9, scope: !2106)
!2159 = !DILocation(line: 4231, column: 17, scope: !2106)
!2160 = !DILocation(line: 4231, column: 25, scope: !2106)
!2161 = !DILocation(line: 4231, column: 33, scope: !2106)
!2162 = !DILocation(line: 4232, column: 44, scope: !2106)
!2163 = !DILocation(line: 4232, column: 33, scope: !2106)
!2164 = !DILocation(line: 4232, column: 22, scope: !2106)
!2165 = !DILocation(line: 4232, column: 13, scope: !2106)
!2166 = !DILocation(line: 4232, column: 9, scope: !2106)
!2167 = !DILocation(line: 4233, column: 26, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2106, file: !42, line: 4233, column: 13)
!2169 = !DILocation(line: 4233, column: 23, scope: !2168)
!2170 = !DILocation(line: 4233, column: 13, scope: !2106)
!2171 = !DILocation(line: 4234, column: 13, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !42, line: 4233, column: 41)
!2173 = !DILocation(line: 4234, column: 54, scope: !2172)
!2174 = !DILocation(line: 4234, column: 68, scope: !2172)
!2175 = !DILocation(line: 4234, column: 28, scope: !2172)
!2176 = !DILocation(line: 4234, column: 36, scope: !2172)
!2177 = !DILocation(line: 4234, column: 44, scope: !2172)
!2178 = !DILocation(line: 4234, column: 48, scope: !2172)
!2179 = !DILocation(line: 4234, column: 17, scope: !2172)
!2180 = !DILocation(line: 4235, column: 40, scope: !2172)
!2181 = !DILocation(line: 4235, column: 13, scope: !2172)
!2182 = !DILocation(line: 4235, column: 21, scope: !2172)
!2183 = !DILocation(line: 4235, column: 29, scope: !2172)
!2184 = !DILocation(line: 4235, column: 33, scope: !2172)
!2185 = !DILocation(line: 4235, column: 38, scope: !2172)
!2186 = !DILocation(line: 4236, column: 9, scope: !2172)
!2187 = !DILocation(line: 4237, column: 33, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2168, file: !42, line: 4236, column: 16)
!2189 = !DILocation(line: 4237, column: 41, scope: !2188)
!2190 = !DILocation(line: 4237, column: 49, scope: !2188)
!2191 = !DILocation(line: 4237, column: 53, scope: !2188)
!2192 = !DILocation(line: 4237, column: 13, scope: !2188)
!2193 = !DILocation(line: 4240, column: 9, scope: !2106)
!2194 = distinct !DISubprogram(name: "_Unfancy<char>", linkageName: "??$_Unfancy@D@std@@YAPEADPEAD@Z", scope: !14, file: !2195, line: 288, type: !1242, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !93, retainedNodes: !116)
!2195 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\xstddef", directory: "C:\\")
!2196 = !DILocalVariable(name: "_Ptr", arg: 1, scope: !2194, file: !2195, line: 288, type: !32)
!2197 = !DILocation(line: 288, column: 41, scope: !2194)
!2198 = !DILocation(line: 289, column: 12, scope: !2194)
!2199 = !DILocation(line: 289, column: 5, scope: !2194)
!2200 = distinct !DISubprogram(name: "max_size", linkageName: "?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !41, file: !42, line: 3689, type: !535, scopeLine: 3689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !538, retainedNodes: !116)
!2201 = !DILocalVariable(name: "this", arg: 1, scope: !2200, type: !2202, flags: DIFlagArtificial | DIFlagObjectPointer)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!2203 = !DILocation(line: 0, scope: !2200)
!2204 = !DILocalVariable(name: "_Alloc_max", scope: !2200, file: !42, line: 3690, type: !212)
!2205 = !DILocation(line: 3690, column: 25, scope: !2200)
!2206 = !DILocation(line: 3690, column: 63, scope: !2200)
!2207 = !DILocation(line: 3690, column: 40, scope: !2200)
!2208 = !DILocalVariable(name: "_Storage_max", scope: !2200, file: !42, line: 3691, type: !212)
!2209 = !DILocation(line: 3691, column: 25, scope: !2200)
!2210 = !DILocation(line: 3692, column: 36, scope: !2200)
!2211 = !DILocation(line: 3692, column: 13, scope: !2200)
!2212 = !DILocation(line: 3694, column: 13, scope: !2200)
!2213 = !DILocation(line: 3694, column: 26, scope: !2200)
!2214 = !DILocation(line: 3693, column: 50, scope: !2200)
!2215 = !DILocation(line: 3693, column: 27, scope: !2200)
!2216 = !DILocation(line: 3693, column: 16, scope: !2200)
!2217 = !DILocation(line: 3693, column: 9, scope: !2200)
!2218 = distinct !DISubprogram(name: "_Xlen_string", linkageName: "?_Xlen_string@std@@YAXXZ", scope: !14, file: !42, line: 2200, type: !173, scopeLine: 2200, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!2219 = !DILocation(line: 2201, column: 5, scope: !2218)
!2220 = distinct !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z", scope: !41, file: !42, line: 4213, type: !634, scopeLine: 4213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !633, retainedNodes: !116)
!2221 = !DILocalVariable(name: "_Requested", arg: 2, scope: !2220, file: !42, line: 4213, type: !212)
!2222 = !DILocation(line: 4213, column: 60, scope: !2220)
!2223 = !DILocalVariable(name: "this", arg: 1, scope: !2220, type: !2202, flags: DIFlagArtificial | DIFlagObjectPointer)
!2224 = !DILocation(line: 0, scope: !2220)
!2225 = !DILocation(line: 4214, column: 70, scope: !2220)
!2226 = !DILocation(line: 4214, column: 46, scope: !2220)
!2227 = !DILocation(line: 4214, column: 54, scope: !2220)
!2228 = !DILocation(line: 4214, column: 62, scope: !2220)
!2229 = !DILocation(line: 4214, column: 34, scope: !2220)
!2230 = !DILocation(line: 4214, column: 16, scope: !2220)
!2231 = !DILocation(line: 4214, column: 9, scope: !2220)
!2232 = distinct !DISubprogram(name: "allocate", linkageName: "?allocate@?$allocator@D@std@@QEAAPEAD_K@Z", scope: !58, file: !55, line: 806, type: !83, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !82, retainedNodes: !116)
!2233 = !DILocalVariable(name: "_Count", arg: 2, scope: !2232, file: !55, line: 806, type: !50)
!2234 = !DILocation(line: 806, column: 84, scope: !2232)
!2235 = !DILocalVariable(name: "this", arg: 1, scope: !2232, type: !1840, flags: DIFlagArtificial | DIFlagObjectPointer)
!2236 = !DILocation(line: 0, scope: !2232)
!2237 = !DILocation(line: 807, column: 91, scope: !2232)
!2238 = !DILocation(line: 807, column: 63, scope: !2232)
!2239 = !DILocation(line: 807, column: 34, scope: !2232)
!2240 = !DILocation(line: 807, column: 9, scope: !2232)
!2241 = distinct !DISubprogram(name: "operator()", linkageName: "??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z", scope: !2109, file: !42, line: 2976, type: !2242, scopeLine: 2976, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2246, retainedNodes: !116)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !2244, !81, !212, !248}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2246 = !DISubprogram(name: "operator()", scope: !2109, file: !42, line: 2976, type: !2247, scopeLine: 2976, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!1573, !2244, !81, !212, !248}
!2249 = !DILocalVariable(name: "_Ptr", arg: 4, scope: !2241, file: !42, line: 2976, type: !248)
!2250 = !DILocation(line: 2976, column: 82, scope: !2241)
!2251 = !DILocalVariable(name: "_Count", arg: 3, scope: !2241, file: !42, line: 2976, type: !212)
!2252 = !DILocation(line: 2976, column: 55, scope: !2241)
!2253 = !DILocalVariable(name: "_New_ptr", arg: 2, scope: !2241, file: !42, line: 2976, type: !81)
!2254 = !DILocation(line: 2976, column: 29, scope: !2241)
!2255 = !DILocalVariable(name: "this", arg: 1, scope: !2241, type: !2256, flags: DIFlagArtificial | DIFlagObjectPointer)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2257 = !DILocation(line: 0, scope: !2241)
!2258 = !DILocation(line: 2977, column: 47, scope: !2241)
!2259 = !DILocation(line: 2977, column: 41, scope: !2241)
!2260 = !DILocation(line: 2977, column: 31, scope: !2241)
!2261 = !DILocation(line: 2977, column: 17, scope: !2241)
!2262 = !DILocation(line: 2978, column: 51, scope: !2241)
!2263 = !DILocation(line: 2978, column: 33, scope: !2241)
!2264 = !DILocation(line: 2978, column: 42, scope: !2241)
!2265 = !DILocation(line: 2978, column: 17, scope: !2241)
!2266 = !DILocation(line: 2979, column: 13, scope: !2241)
!2267 = distinct !DISubprogram(name: "_Construct_in_place<char *, char *const &>", linkageName: "??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z", scope: !14, file: !55, line: 228, type: !2268, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2271, retainedNodes: !116)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !1827, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !81, size: 64)
!2271 = !{!1829, !2272}
!2272 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !2273)
!2273 = !{!2274}
!2274 = !DITemplateTypeParameter(type: !2270)
!2275 = !DILocalVariable(name: "_Args", arg: 2, scope: !2267, file: !55, line: 228, type: !2270)
!2276 = !DILocation(line: 228, column: 49, scope: !2267)
!2277 = !DILocalVariable(name: "_Obj", arg: 1, scope: !2267, file: !55, line: 228, type: !1827)
!2278 = !DILocation(line: 228, column: 31, scope: !2267)
!2279 = !DILocation(line: 229, column: 79, scope: !2267)
!2280 = !DILocation(line: 229, column: 64, scope: !2267)
!2281 = !DILocation(line: 229, column: 5, scope: !2267)
!2282 = !DILocation(line: 230, column: 34, scope: !2267)
!2283 = !DILocation(line: 230, column: 13, scope: !2267)
!2284 = !DILocation(line: 231, column: 1, scope: !2267)
!2285 = distinct !DISubprogram(name: "max_size", linkageName: "?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z", scope: !215, file: !55, line: 702, type: !235, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !234, retainedNodes: !116)
!2286 = !DILocalVariable(arg: 1, scope: !2285, file: !55, line: 702, type: !77)
!2287 = !DILocation(line: 702, column: 55, scope: !2285)
!2288 = !DILocation(line: 703, column: 9, scope: !2285)
!2289 = distinct !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ", scope: !41, file: !42, line: 4328, type: !650, scopeLine: 4328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !649, retainedNodes: !116)
!2290 = !DILocalVariable(name: "this", arg: 1, scope: !2289, type: !2202, flags: DIFlagArtificial | DIFlagObjectPointer)
!2291 = !DILocation(line: 0, scope: !2289)
!2292 = !DILocation(line: 4329, column: 16, scope: !2289)
!2293 = !DILocation(line: 4329, column: 24, scope: !2289)
!2294 = !DILocation(line: 4329, column: 9, scope: !2289)
!2295 = distinct !DISubprogram(name: "max<unsigned long long>", linkageName: "??$max@_K@std@@YAAEB_KAEB_K0@Z", scope: !14, file: !2296, line: 41, type: !2297, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2300, retainedNodes: !116)
!2296 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\utility", directory: "C:\\")
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!2299, !2299, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !45, size: 64)
!2300 = !{!2301}
!2301 = !DITemplateTypeParameter(name: "_Ty", type: !30)
!2302 = !DILocalVariable(name: "_Right", arg: 2, scope: !2295, file: !2296, line: 42, type: !2299)
!2303 = !DILocation(line: 42, column: 34, scope: !2295)
!2304 = !DILocalVariable(name: "_Left", arg: 1, scope: !2295, file: !2296, line: 42, type: !2299)
!2305 = !DILocation(line: 42, column: 16, scope: !2295)
!2306 = !DILocation(line: 44, column: 12, scope: !2295)
!2307 = !DILocation(line: 44, column: 20, scope: !2295)
!2308 = !DILocation(line: 44, column: 18, scope: !2295)
!2309 = !DILocation(line: 44, column: 29, scope: !2295)
!2310 = !DILocation(line: 44, column: 38, scope: !2295)
!2311 = !DILocation(line: 44, column: 5, scope: !2295)
!2312 = distinct !DISubprogram(name: "min<unsigned long long>", linkageName: "??$min@_K@std@@YAAEB_KAEB_K0@Z", scope: !14, file: !2296, line: 66, type: !2297, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2300, retainedNodes: !116)
!2313 = !DILocalVariable(name: "_Right", arg: 2, scope: !2312, file: !2296, line: 67, type: !2299)
!2314 = !DILocation(line: 67, column: 34, scope: !2312)
!2315 = !DILocalVariable(name: "_Left", arg: 1, scope: !2312, file: !2296, line: 67, type: !2299)
!2316 = !DILocation(line: 67, column: 16, scope: !2312)
!2317 = !DILocation(line: 69, column: 12, scope: !2312)
!2318 = !DILocation(line: 69, column: 21, scope: !2312)
!2319 = !DILocation(line: 69, column: 19, scope: !2312)
!2320 = !DILocation(line: 69, column: 29, scope: !2312)
!2321 = !DILocation(line: 69, column: 38, scope: !2312)
!2322 = !DILocation(line: 69, column: 5, scope: !2312)
!2323 = distinct !DISubprogram(name: "max", linkageName: "?max@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 645, type: !2366, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2368, retainedNodes: !116)
!2324 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "numeric_limits<long long>", scope: !14, file: !13, line: 639, size: 8, flags: DIFlagTypePassByValue, elements: !2325, templateParams: !2376, identifier: ".?AV?$numeric_limits@_J@std@@")
!2325 = !{!2326, !2362, !2363, !2364, !2365, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2326 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2324, baseType: !2327, flags: DIFlagPublic, extraData: i32 0)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Num_int_base", scope: !14, file: !13, line: 118, size: 8, flags: DIFlagTypePassByValue, elements: !2328, identifier: ".?AU_Num_int_base@std@@")
!2328 = !{!2329, !2357, !2358, !2359, !2360, !2361}
!2329 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2327, baseType: !2330, extraData: i32 0)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Num_base", scope: !14, file: !13, line: 41, size: 8, flags: DIFlagTypePassByValue, elements: !2331, identifier: ".?AU_Num_base@std@@")
!2331 = !{!2332, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !2330, file: !13, line: 42, baseType: !2333, flags: DIFlagStaticMember, extraData: i32 0)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm_loss", scope: !2330, file: !13, line: 43, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "has_infinity", scope: !2330, file: !13, line: 44, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "has_quiet_NaN", scope: !2330, file: !13, line: 45, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "has_signaling_NaN", scope: !2330, file: !13, line: 46, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "is_bounded", scope: !2330, file: !13, line: 47, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "is_exact", scope: !2330, file: !13, line: 48, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "is_iec559", scope: !2330, file: !13, line: 49, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "is_integer", scope: !2330, file: !13, line: 50, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "is_modulo", scope: !2330, file: !13, line: 51, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2330, file: !13, line: 52, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "is_specialized", scope: !2330, file: !13, line: 53, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "tinyness_before", scope: !2330, file: !13, line: 54, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !2330, file: !13, line: 55, baseType: !48, flags: DIFlagStaticMember, extraData: i1 false)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "round_style", scope: !2330, file: !13, line: 56, baseType: !2348, flags: DIFlagStaticMember, extraData: i32 0)
!2348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !2330, file: !13, line: 57, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "digits10", scope: !2330, file: !13, line: 58, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "max_digits10", scope: !2330, file: !13, line: 59, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent", scope: !2330, file: !13, line: 60, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent10", scope: !2330, file: !13, line: 61, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent", scope: !2330, file: !13, line: 62, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent10", scope: !2330, file: !13, line: 63, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !2330, file: !13, line: 64, baseType: !958, flags: DIFlagStaticMember, extraData: i32 0)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "is_bounded", scope: !2327, file: !13, line: 119, baseType: !48, flags: DIFlagStaticMember, extraData: i1 true)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "is_exact", scope: !2327, file: !13, line: 120, baseType: !48, flags: DIFlagStaticMember, extraData: i1 true)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "is_integer", scope: !2327, file: !13, line: 121, baseType: !48, flags: DIFlagStaticMember, extraData: i1 true)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "is_specialized", scope: !2327, file: !13, line: 122, baseType: !48, flags: DIFlagStaticMember, extraData: i1 true)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !2327, file: !13, line: 123, baseType: !958, flags: DIFlagStaticMember, extraData: i32 2)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2324, file: !13, line: 677, baseType: !48, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 true)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !2324, file: !13, line: 678, baseType: !958, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "digits10", scope: !2324, file: !13, line: 679, baseType: !958, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 18)
!2365 = !DISubprogram(name: "min", linkageName: "?min@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 641, type: !2366, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!722}
!2368 = !DISubprogram(name: "max", linkageName: "?max@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 645, type: !2366, scopeLine: 645, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2369 = !DISubprogram(name: "lowest", linkageName: "?lowest@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 649, type: !2366, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2370 = !DISubprogram(name: "epsilon", linkageName: "?epsilon@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 653, type: !2366, scopeLine: 653, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2371 = !DISubprogram(name: "round_error", linkageName: "?round_error@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 657, type: !2366, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2372 = !DISubprogram(name: "denorm_min", linkageName: "?denorm_min@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 661, type: !2366, scopeLine: 661, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2373 = !DISubprogram(name: "infinity", linkageName: "?infinity@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 665, type: !2366, scopeLine: 665, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2374 = !DISubprogram(name: "quiet_NaN", linkageName: "?quiet_NaN@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 669, type: !2366, scopeLine: 669, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2375 = !DISubprogram(name: "signaling_NaN", linkageName: "?signaling_NaN@?$numeric_limits@_J@std@@SA_JXZ", scope: !2324, file: !13, line: 673, type: !2366, scopeLine: 673, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2376 = !{!2377}
!2377 = !DITemplateTypeParameter(name: "_Ty", type: !722)
!2378 = !DILocation(line: 646, column: 9, scope: !2323)
!2379 = distinct !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ", scope: !54, file: !55, line: 1347, type: !186, scopeLine: 1347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !185, retainedNodes: !116)
!2380 = !DILocalVariable(name: "this", arg: 1, scope: !2379, type: !2381, flags: DIFlagArtificial | DIFlagObjectPointer)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2382 = !DILocation(line: 0, scope: !2379)
!2383 = !DILocation(line: 1348, column: 16, scope: !2379)
!2384 = !DILocation(line: 1348, column: 9, scope: !2379)
!2385 = distinct !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z", scope: !41, file: !42, line: 4199, type: !631, scopeLine: 4200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !630, retainedNodes: !116)
!2386 = !DILocalVariable(name: "_Max", arg: 3, scope: !2385, file: !42, line: 4200, type: !212)
!2387 = !DILocation(line: 4200, column: 75, scope: !2385)
!2388 = !DILocalVariable(name: "_Old", arg: 2, scope: !2385, file: !42, line: 4200, type: !212)
!2389 = !DILocation(line: 4200, column: 53, scope: !2385)
!2390 = !DILocalVariable(name: "_Requested", arg: 1, scope: !2385, file: !42, line: 4200, type: !212)
!2391 = !DILocation(line: 4200, column: 25, scope: !2385)
!2392 = !DILocalVariable(name: "_Masked", scope: !2385, file: !42, line: 4201, type: !212)
!2393 = !DILocation(line: 4201, column: 25, scope: !2385)
!2394 = !DILocation(line: 4201, column: 35, scope: !2385)
!2395 = !DILocation(line: 4201, column: 46, scope: !2385)
!2396 = !DILocation(line: 4202, column: 13, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2385, file: !42, line: 4202, column: 13)
!2398 = !DILocation(line: 4202, column: 23, scope: !2397)
!2399 = !DILocation(line: 4202, column: 21, scope: !2397)
!2400 = !DILocation(line: 4202, column: 13, scope: !2385)
!2401 = !DILocation(line: 4203, column: 20, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !42, line: 4202, column: 29)
!2403 = !DILocation(line: 4203, column: 13, scope: !2402)
!2404 = !DILocation(line: 4206, column: 13, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2385, file: !42, line: 4206, column: 13)
!2406 = !DILocation(line: 4206, column: 20, scope: !2405)
!2407 = !DILocation(line: 4206, column: 27, scope: !2405)
!2408 = !DILocation(line: 4206, column: 32, scope: !2405)
!2409 = !DILocation(line: 4206, column: 25, scope: !2405)
!2410 = !DILocation(line: 4206, column: 18, scope: !2405)
!2411 = !DILocation(line: 4206, column: 13, scope: !2385)
!2412 = !DILocation(line: 4207, column: 20, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2405, file: !42, line: 4206, column: 37)
!2414 = !DILocation(line: 4207, column: 13, scope: !2413)
!2415 = !DILocation(line: 4210, column: 36, scope: !2385)
!2416 = !DILocation(line: 4210, column: 43, scope: !2385)
!2417 = !DILocation(line: 4210, column: 48, scope: !2385)
!2418 = !DILocation(line: 4210, column: 41, scope: !2385)
!2419 = !DILocation(line: 4210, column: 16, scope: !2385)
!2420 = !DILocation(line: 4210, column: 9, scope: !2385)
!2421 = !DILocation(line: 4211, column: 5, scope: !2385)
!2422 = distinct !DISubprogram(name: "_Allocate<16, std::_Default_allocate_traits, 0>", linkageName: "??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z", scope: !14, file: !55, line: 197, type: !2423, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2425, retainedNodes: !116)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!31, !50}
!2425 = !{!1865, !2426, !1866}
!2426 = !DITemplateTypeParameter(name: "_Traits", type: !2427, defaulted: true)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Default_allocate_traits", scope: !14, file: !55, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !2428, identifier: ".?AU_Default_allocate_traits@std@@")
!2428 = !{!2429}
!2429 = !DISubprogram(name: "_Allocate", linkageName: "?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z", scope: !2427, file: !55, line: 76, type: !2423, scopeLine: 76, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2430 = !DILocalVariable(name: "_Bytes", arg: 1, scope: !2422, file: !55, line: 197, type: !50)
!2431 = !DILocation(line: 197, column: 52, scope: !2422)
!2432 = !DILocation(line: 200, column: 9, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2422, file: !55, line: 200, column: 9)
!2434 = !DILocation(line: 200, column: 16, scope: !2433)
!2435 = !DILocation(line: 200, column: 9, scope: !2422)
!2436 = !DILocation(line: 201, column: 59, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !55, line: 200, column: 46)
!2438 = !DILocation(line: 201, column: 16, scope: !2437)
!2439 = !DILocation(line: 201, column: 9, scope: !2437)
!2440 = !DILocation(line: 205, column: 9, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2422, file: !55, line: 205, column: 9)
!2442 = !DILocation(line: 205, column: 16, scope: !2441)
!2443 = !DILocation(line: 205, column: 9, scope: !2422)
!2444 = !DILocation(line: 206, column: 35, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !55, line: 205, column: 22)
!2446 = !DILocation(line: 206, column: 16, scope: !2445)
!2447 = !DILocation(line: 206, column: 9, scope: !2445)
!2448 = !DILocation(line: 209, column: 5, scope: !2422)
!2449 = !DILocation(line: 210, column: 1, scope: !2422)
!2450 = distinct !DISubprogram(name: "_Get_size_of_n<1>", linkageName: "??$_Get_size_of_n@$00@std@@YA_K_K@Z", scope: !14, file: !55, line: 55, type: !2062, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2451, retainedNodes: !116)
!2451 = !{!2452}
!2452 = !DITemplateValueParameter(name: "_Ty_size", type: !30, value: i64 1)
!2453 = !DILocalVariable(name: "_Count", arg: 1, scope: !2450, file: !55, line: 55, type: !50)
!2454 = !DILocation(line: 55, column: 57, scope: !2450)
!2455 = !DILocalVariable(name: "_Overflow_is_possible", scope: !2450, file: !55, line: 56, type: !48)
!2456 = !DILocation(line: 56, column: 20, scope: !2450)
!2457 = !DILocation(line: 65, column: 12, scope: !2450)
!2458 = !DILocation(line: 65, column: 19, scope: !2450)
!2459 = !DILocation(line: 65, column: 5, scope: !2450)
!2460 = distinct !DISubprogram(name: "_Allocate_manually_vector_aligned<std::_Default_allocate_traits>", linkageName: "??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z", scope: !14, file: !55, line: 113, type: !2423, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2461, retainedNodes: !116)
!2461 = !{!2462}
!2462 = !DITemplateTypeParameter(name: "_Traits", type: !2427)
!2463 = !DILocalVariable(name: "_Bytes", arg: 1, scope: !2460, file: !55, line: 113, type: !50)
!2464 = !DILocation(line: 113, column: 76, scope: !2460)
!2465 = !DILocalVariable(name: "_Block_size", scope: !2460, file: !55, line: 115, type: !50)
!2466 = !DILocation(line: 115, column: 18, scope: !2460)
!2467 = !DILocation(line: 115, column: 49, scope: !2460)
!2468 = !DILocation(line: 115, column: 47, scope: !2460)
!2469 = !DILocation(line: 116, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2460, file: !55, line: 116, column: 9)
!2471 = !DILocation(line: 116, column: 24, scope: !2470)
!2472 = !DILocation(line: 116, column: 21, scope: !2470)
!2473 = !DILocation(line: 116, column: 9, scope: !2460)
!2474 = !DILocation(line: 117, column: 9, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !55, line: 116, column: 32)
!2476 = !DILocalVariable(name: "_Ptr_container", scope: !2460, file: !55, line: 120, type: !1896)
!2477 = !DILocation(line: 120, column: 21, scope: !2460)
!2478 = !DILocation(line: 120, column: 85, scope: !2460)
!2479 = !DILocation(line: 120, column: 66, scope: !2460)
!2480 = !DILocation(line: 120, column: 38, scope: !2460)
!2481 = !DILocation(line: 121, column: 5, scope: !2460)
!2482 = !DILocation(line: 121, column: 5, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !55, line: 121, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2460, file: !55, line: 121, column: 5)
!2485 = !DILocation(line: 121, column: 5, scope: !2484)
!2486 = !DILocation(line: 121, column: 5, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !55, line: 121, column: 5)
!2488 = !DILocation(line: 121, column: 5, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !55, line: 121, column: 5)
!2490 = !DILocation(line: 121, column: 5, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2489, file: !55, line: 121, column: 5)
!2492 = !DILocalVariable(name: "_Ptr", scope: !2460, file: !55, line: 122, type: !2493)
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2494 = !DILocation(line: 122, column: 17, scope: !2460)
!2495 = !DILocation(line: 122, column: 49, scope: !2460)
!2496 = !DILocation(line: 122, column: 64, scope: !2460)
!2497 = !DILocation(line: 122, column: 82, scope: !2460)
!2498 = !DILocation(line: 122, column: 24, scope: !2460)
!2499 = !DILocation(line: 123, column: 41, scope: !2460)
!2500 = !DILocation(line: 123, column: 29, scope: !2460)
!2501 = !DILocation(line: 123, column: 5, scope: !2460)
!2502 = !DILocation(line: 123, column: 39, scope: !2460)
!2503 = !DILocation(line: 128, column: 12, scope: !2460)
!2504 = !DILocation(line: 128, column: 5, scope: !2460)
!2505 = distinct !DISubprogram(name: "_Allocate", linkageName: "?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z", scope: !2427, file: !55, line: 76, type: !2423, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2429, retainedNodes: !116)
!2506 = !DILocalVariable(name: "_Bytes", arg: 1, scope: !2505, file: !55, line: 76, type: !50)
!2507 = !DILocation(line: 76, column: 63, scope: !2505)
!2508 = !DILocation(line: 77, column: 31, scope: !2505)
!2509 = !DILocation(line: 77, column: 16, scope: !2505)
!2510 = !DILocation(line: 77, column: 9, scope: !2505)
!2511 = distinct !DISubprogram(name: "_Throw_bad_array_new_length", linkageName: "?_Throw_bad_array_new_length@std@@YAXXZ", scope: !14, file: !913, line: 320, type: !173, scopeLine: 320, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !116)
!2512 = !DILocation(line: 321, column: 5, scope: !2511)
!2513 = distinct !DISubprogram(name: "bad_array_new_length", linkageName: "??0bad_array_new_length@std@@QEAA@XZ", scope: !2515, file: !2514, line: 139, type: !2563, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2562, retainedNodes: !116)
!2514 = !DIFile(filename: "Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Tools\\MSVC\\14.27.29110\\include\\vcruntime_exception.h", directory: "C:\\")
!2515 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "bad_array_new_length", scope: !14, file: !2514, line: 134, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2516, vtableHolder: !2521, identifier: ".?AVbad_array_new_length@std@@")
!2516 = !{!2517, !2562}
!2517 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2515, baseType: !2518, flags: DIFlagPublic, extraData: i32 0)
!2518 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "bad_alloc", scope: !14, file: !2514, line: 114, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2519, vtableHolder: !2521, identifier: ".?AVbad_alloc@std@@")
!2519 = !{!2520, !2555, !2559}
!2520 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2518, baseType: !2521, flags: DIFlagPublic, extraData: i32 0)
!2521 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !14, file: !2514, line: 48, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2522, vtableHolder: !2521, identifier: ".?AVexception@std@@")
!2522 = !{!2523, !2526, !2531, !2535, !2538, !2541, !2546, !2550, !2551}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$exception", scope: !2514, file: !2514, baseType: !2524, size: 64, flags: DIFlagArtificial)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !829, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_Data", scope: !2521, file: !2514, line: 100, baseType: !2527, size: 128, offset: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__std_exception_data", file: !2514, line: 25, size: 128, flags: DIFlagTypePassByValue, elements: !2528, identifier: ".?AU__std_exception_data@@")
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_What", scope: !2527, file: !2514, line: 27, baseType: !39, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_DoFree", scope: !2527, file: !2514, line: 28, baseType: !8, size: 8, offset: 64)
!2531 = !DISubprogram(name: "exception", scope: !2521, file: !2514, line: 52, type: !2532, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2535 = !DISubprogram(name: "exception", scope: !2521, file: !2514, line: 57, type: !2536, scopeLine: 57, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2534, !248}
!2538 = !DISubprogram(name: "exception", scope: !2521, file: !2514, line: 64, type: !2539, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !2534, !248, !5}
!2541 = !DISubprogram(name: "exception", scope: !2521, file: !2514, line: 70, type: !2542, scopeLine: 70, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !2534, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2521)
!2546 = !DISubprogram(name: "operator=", linkageName: "??4exception@std@@QEAAAEAV01@AEBV01@@Z", scope: !2521, file: !2514, line: 76, type: !2547, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!2549, !2534, !2544}
!2549 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2521, size: 64)
!2550 = !DISubprogram(name: "~exception", scope: !2521, file: !2514, line: 88, type: !2532, scopeLine: 88, containingType: !2521, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagVirtual)
!2551 = !DISubprogram(name: "what", linkageName: "?what@exception@std@@UEBAPEBDXZ", scope: !2521, file: !2514, line: 93, type: !2552, scopeLine: 93, containingType: !2521, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagVirtual)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!39, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2555 = !DISubprogram(name: "bad_alloc", scope: !2518, file: !2514, line: 119, type: !2556, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2559 = !DISubprogram(name: "bad_alloc", scope: !2518, file: !2514, line: 128, type: !2560, scopeLine: 128, flags: DIFlagPrototyped, spFlags: 0)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !2558, !248}
!2562 = !DISubprogram(name: "bad_array_new_length", scope: !2515, file: !2514, line: 139, type: !2563, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2566 = !DILocalVariable(name: "this", arg: 1, scope: !2513, type: !2567, flags: DIFlagArtificial | DIFlagObjectPointer)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2568 = !DILocation(line: 0, scope: !2513)
!2569 = !DILocation(line: 141, column: 5, scope: !2513)
!2570 = !DILocation(line: 140, column: 11, scope: !2513)
!2571 = !DILocation(line: 142, column: 5, scope: !2513)
!2572 = distinct !DISubprogram(name: "bad_array_new_length", linkageName: "??0bad_array_new_length@std@@QEAA@AEBV01@@Z", scope: !2515, file: !2514, line: 134, type: !2573, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2577, retainedNodes: !116)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2565, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2577 = !DISubprogram(name: "bad_array_new_length", scope: !2515, type: !2573, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2578 = !DILocalVariable(arg: 2, scope: !2572, type: !2575)
!2579 = !DILocation(line: 0, scope: !2572)
!2580 = !DILocalVariable(name: "this", arg: 1, scope: !2572, type: !2567, flags: DIFlagArtificial | DIFlagObjectPointer)
!2581 = !DILocation(line: 134, column: 7, scope: !2572)
!2582 = distinct !DISubprogram(name: "bad_alloc", linkageName: "??0bad_alloc@std@@QEAA@AEBV01@@Z", scope: !2518, file: !2514, line: 114, type: !2583, scopeLine: 114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2587, retainedNodes: !116)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !2558, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2587 = !DISubprogram(name: "bad_alloc", scope: !2518, type: !2583, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2588 = !DILocalVariable(arg: 2, scope: !2582, type: !2585)
!2589 = !DILocation(line: 0, scope: !2582)
!2590 = !DILocalVariable(name: "this", arg: 1, scope: !2582, type: !2591, flags: DIFlagArtificial | DIFlagObjectPointer)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2592 = !DILocation(line: 114, column: 7, scope: !2582)
!2593 = distinct !DISubprogram(name: "exception", linkageName: "??0exception@std@@QEAA@AEBV01@@Z", scope: !2521, file: !2514, line: 70, type: !2542, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2541, retainedNodes: !116)
!2594 = !DILocalVariable(name: "_Other", arg: 2, scope: !2593, file: !2514, line: 70, type: !2544)
!2595 = !DILocation(line: 70, column: 32, scope: !2593)
!2596 = !DILocalVariable(name: "this", arg: 1, scope: !2593, type: !2597, flags: DIFlagArtificial | DIFlagObjectPointer)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2598 = !DILocation(line: 0, scope: !2593)
!2599 = !DILocation(line: 72, column: 5, scope: !2593)
!2600 = !DILocation(line: 71, column: 11, scope: !2593)
!2601 = !DILocation(line: 73, column: 46, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2593, file: !2514, line: 72, column: 5)
!2603 = !DILocation(line: 73, column: 31, scope: !2602)
!2604 = !DILocation(line: 73, column: 38, scope: !2602)
!2605 = !DILocation(line: 73, column: 9, scope: !2602)
!2606 = !DILocation(line: 74, column: 5, scope: !2593)
!2607 = distinct !DISubprogram(name: "~bad_array_new_length", linkageName: "??1bad_array_new_length@std@@UEAA@XZ", scope: !2515, file: !2514, line: 134, type: !2563, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2608, retainedNodes: !116)
!2608 = !DISubprogram(name: "~bad_array_new_length", scope: !2515, type: !2563, containingType: !2515, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2609 = !DILocalVariable(name: "this", arg: 1, scope: !2607, type: !2567, flags: DIFlagArtificial | DIFlagObjectPointer)
!2610 = !DILocation(line: 0, scope: !2607)
!2611 = !DILocation(line: 134, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !2514, line: 134, column: 7)
!2613 = !DILocation(line: 134, column: 7, scope: !2607)
!2614 = distinct !DISubprogram(name: "bad_alloc", linkageName: "??0bad_alloc@std@@AEAA@QEBD@Z", scope: !2518, file: !2514, line: 128, type: !2560, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2559, retainedNodes: !116)
!2615 = !DILocalVariable(name: "_Message", arg: 2, scope: !2614, file: !2514, line: 128, type: !248)
!2616 = !DILocation(line: 128, column: 33, scope: !2614)
!2617 = !DILocalVariable(name: "this", arg: 1, scope: !2614, type: !2591, flags: DIFlagArtificial | DIFlagObjectPointer)
!2618 = !DILocation(line: 0, scope: !2614)
!2619 = !DILocation(line: 130, column: 5, scope: !2614)
!2620 = !DILocation(line: 129, column: 21, scope: !2614)
!2621 = !DILocation(line: 129, column: 11, scope: !2614)
!2622 = !DILocation(line: 131, column: 5, scope: !2614)
!2623 = distinct !DISubprogram(name: "~bad_array_new_length", linkageName: "??_Gbad_array_new_length@std@@UEAAPEAXI@Z", scope: !2515, file: !2514, line: 134, type: !2563, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2608, retainedNodes: !116)
!2624 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !2623, type: !5, flags: DIFlagArtificial)
!2625 = !DILocation(line: 0, scope: !2623)
!2626 = !DILocalVariable(name: "this", arg: 1, scope: !2623, type: !2567, flags: DIFlagArtificial | DIFlagObjectPointer)
!2627 = !DILocation(line: 134, column: 7, scope: !2623)
!2628 = distinct !DISubprogram(name: "what", linkageName: "?what@exception@std@@UEBAPEBDXZ", scope: !2521, file: !2514, line: 93, type: !2552, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2551, retainedNodes: !116)
!2629 = !DILocalVariable(name: "this", arg: 1, scope: !2628, type: !2630, flags: DIFlagArtificial | DIFlagObjectPointer)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2631 = !DILocation(line: 0, scope: !2628)
!2632 = !DILocation(line: 95, column: 16, scope: !2628)
!2633 = !DILocation(line: 95, column: 22, scope: !2628)
!2634 = !DILocation(line: 95, column: 30, scope: !2628)
!2635 = !DILocation(line: 95, column: 36, scope: !2628)
!2636 = !DILocation(line: 95, column: 9, scope: !2628)
!2637 = distinct !DISubprogram(name: "exception", linkageName: "??0exception@std@@QEAA@QEBDH@Z", scope: !2521, file: !2514, line: 64, type: !2539, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2538, retainedNodes: !116)
!2638 = !DILocalVariable(arg: 3, scope: !2637, file: !2514, line: 64, type: !5)
!2639 = !DILocation(line: 64, column: 46, scope: !2637)
!2640 = !DILocalVariable(name: "_Message", arg: 2, scope: !2637, file: !2514, line: 64, type: !248)
!2641 = !DILocation(line: 64, column: 33, scope: !2637)
!2642 = !DILocalVariable(name: "this", arg: 1, scope: !2637, type: !2597, flags: DIFlagArtificial | DIFlagObjectPointer)
!2643 = !DILocation(line: 0, scope: !2637)
!2644 = !DILocation(line: 66, column: 5, scope: !2637)
!2645 = !DILocation(line: 65, column: 11, scope: !2637)
!2646 = !DILocation(line: 67, column: 23, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2637, file: !2514, line: 66, column: 5)
!2648 = !DILocation(line: 67, column: 9, scope: !2647)
!2649 = !DILocation(line: 67, column: 15, scope: !2647)
!2650 = !DILocation(line: 67, column: 21, scope: !2647)
!2651 = !DILocation(line: 68, column: 5, scope: !2637)
!2652 = distinct !DISubprogram(name: "~bad_alloc", linkageName: "??_Gbad_alloc@std@@UEAAPEAXI@Z", scope: !2518, file: !2514, line: 114, type: !2556, scopeLine: 114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2653, retainedNodes: !116)
!2653 = !DISubprogram(name: "~bad_alloc", scope: !2518, type: !2556, containingType: !2518, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2654 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !2652, type: !5, flags: DIFlagArtificial)
!2655 = !DILocation(line: 0, scope: !2652)
!2656 = !DILocalVariable(name: "this", arg: 1, scope: !2652, type: !2591, flags: DIFlagArtificial | DIFlagObjectPointer)
!2657 = !DILocation(line: 114, column: 7, scope: !2652)
!2658 = distinct !DISubprogram(name: "~exception", linkageName: "??_Gexception@std@@UEAAPEAXI@Z", scope: !2521, file: !2514, line: 88, type: !2532, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2550, retainedNodes: !116)
!2659 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !2658, type: !5, flags: DIFlagArtificial)
!2660 = !DILocation(line: 0, scope: !2658)
!2661 = !DILocalVariable(name: "this", arg: 1, scope: !2658, type: !2597, flags: DIFlagArtificial | DIFlagObjectPointer)
!2662 = !DILocation(line: 89, column: 5, scope: !2658)
!2663 = !DILocation(line: 91, column: 5, scope: !2658)
!2664 = distinct !DISubprogram(name: "~exception", linkageName: "??1exception@std@@UEAA@XZ", scope: !2521, file: !2514, line: 88, type: !2532, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2550, retainedNodes: !116)
!2665 = !DILocalVariable(name: "this", arg: 1, scope: !2664, type: !2597, flags: DIFlagArtificial | DIFlagObjectPointer)
!2666 = !DILocation(line: 0, scope: !2664)
!2667 = !DILocation(line: 89, column: 5, scope: !2664)
!2668 = !DILocation(line: 90, column: 34, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !2514, line: 89, column: 5)
!2670 = !DILocation(line: 90, column: 9, scope: !2669)
!2671 = !DILocation(line: 91, column: 5, scope: !2664)
!2672 = distinct !DISubprogram(name: "~bad_alloc", linkageName: "??1bad_alloc@std@@UEAA@XZ", scope: !2518, file: !2514, line: 114, type: !2556, scopeLine: 114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2653, retainedNodes: !116)
!2673 = !DILocalVariable(name: "this", arg: 1, scope: !2672, type: !2591, flags: DIFlagArtificial | DIFlagObjectPointer)
!2674 = !DILocation(line: 0, scope: !2672)
!2675 = !DILocation(line: 114, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !2514, line: 114, column: 7)
!2677 = !DILocation(line: 114, column: 7, scope: !2672)
!2678 = distinct !DISubprogram(name: "copy", linkageName: "?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !660, file: !42, line: 325, type: !669, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !668, retainedNodes: !116)
!2679 = !DILocalVariable(name: "_Count", arg: 3, scope: !2678, file: !42, line: 326, type: !50)
!2680 = !DILocation(line: 326, column: 22, scope: !2678)
!2681 = !DILocalVariable(name: "_First2", arg: 2, scope: !2678, file: !42, line: 325, type: !248)
!2682 = !DILocation(line: 325, column: 105, scope: !2678)
!2683 = !DILocalVariable(name: "_First1", arg: 1, scope: !2678, file: !42, line: 325, type: !81)
!2684 = !DILocation(line: 325, column: 58, scope: !2678)
!2685 = !DILocation(line: 328, column: 49, scope: !2678)
!2686 = !DILocation(line: 328, column: 58, scope: !2678)
!2687 = !DILocation(line: 328, column: 67, scope: !2678)
!2688 = !DILocation(line: 328, column: 36, scope: !2678)
!2689 = !DILocation(line: 328, column: 9, scope: !2678)
!2690 = distinct !DISubprogram(name: "addressof<char *>", linkageName: "??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z", scope: !14, file: !2195, line: 274, type: !2691, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1828, retainedNodes: !116)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!844, !1827}
!2693 = !DILocalVariable(name: "_Val", arg: 1, scope: !2690, file: !2195, line: 274, type: !1827)
!2694 = !DILocation(line: 274, column: 42, scope: !2690)
!2695 = !DILocation(line: 275, column: 32, scope: !2690)
!2696 = !DILocation(line: 275, column: 5, scope: !2690)
!2697 = distinct !DISubprogram(name: "forward<char *const &>", linkageName: "??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z", scope: !14, file: !908, line: 1453, type: !2698, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2704, retainedNodes: !116)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!2270, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_reference_t<char *const &>", scope: !14, file: !305, line: 225, baseType: !2702)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2703, file: !305, line: 214, baseType: !81)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<char *const &>", scope: !14, file: !305, line: 213, size: 8, flags: DIFlagTypePassByValue, elements: !116, templateParams: !2704, identifier: ".?AU?$remove_reference@AEBQEAD@std@@")
!2704 = !{!2705}
!2705 = !DITemplateTypeParameter(name: "_Ty", type: !2270)
!2706 = !DILocalVariable(name: "_Arg", arg: 1, scope: !2697, file: !908, line: 1454, type: !2700)
!2707 = !DILocation(line: 1454, column: 30, scope: !2697)
!2708 = !DILocation(line: 1455, column: 31, scope: !2697)
!2709 = !DILocation(line: 1455, column: 5, scope: !2697)
!2710 = distinct !DISubprogram(name: "operator==<char, std::char_traits<char>, std::allocator<char> >", linkageName: "??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z", scope: !14, file: !42, line: 4480, type: !1728, scopeLine: 4480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !654, retainedNodes: !116)
!2711 = !DILocalVariable(name: "_Right", arg: 2, scope: !2710, file: !42, line: 4480, type: !248)
!2712 = !DILocation(line: 4480, column: 105, scope: !2710)
!2713 = !DILocalVariable(name: "_Left", arg: 1, scope: !2710, file: !42, line: 4480, type: !198)
!2714 = !DILocation(line: 4480, column: 72, scope: !2710)
!2715 = !DILocation(line: 4481, column: 12, scope: !2710)
!2716 = !DILocation(line: 4481, column: 25, scope: !2710)
!2717 = !DILocation(line: 4481, column: 18, scope: !2710)
!2718 = !DILocation(line: 4481, column: 5, scope: !2710)
!2719 = distinct !DISubprogram(name: "_Equal", linkageName: "?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z", scope: !41, file: !42, line: 4095, type: !606, scopeLine: 4095, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !605, retainedNodes: !116)
!2720 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !2719, file: !42, line: 4095, type: !248)
!2721 = !DILocation(line: 4095, column: 43, scope: !2719)
!2722 = !DILocalVariable(name: "this", arg: 1, scope: !2719, type: !2202, flags: DIFlagArtificial | DIFlagObjectPointer)
!2723 = !DILocation(line: 0, scope: !2719)
!2724 = !DILocation(line: 4096, column: 112, scope: !2719)
!2725 = !DILocation(line: 4096, column: 96, scope: !2719)
!2726 = !DILocation(line: 4096, column: 90, scope: !2719)
!2727 = !DILocation(line: 4096, column: 65, scope: !2719)
!2728 = !DILocation(line: 4096, column: 73, scope: !2719)
!2729 = !DILocation(line: 4096, column: 81, scope: !2719)
!2730 = !DILocation(line: 4096, column: 39, scope: !2719)
!2731 = !DILocation(line: 4096, column: 47, scope: !2719)
!2732 = !DILocation(line: 4096, column: 55, scope: !2719)
!2733 = !DILocation(line: 4096, column: 16, scope: !2719)
!2734 = !DILocation(line: 4096, column: 9, scope: !2719)
!2735 = distinct !DISubprogram(name: "_Traits_equal<std::char_traits<char> >", linkageName: "??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z", scope: !14, file: !42, line: 501, type: !2736, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2743, retainedNodes: !116)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!8, !2738, !50, !2738, !50}
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Traits_ptr_t<std::char_traits<char> >", scope: !14, file: !42, line: 498, baseType: !2740)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !660, file: !42, line: 282, baseType: !33)
!2743 = !{!656}
!2744 = !DILocalVariable(name: "_Right_size", arg: 4, scope: !2735, file: !42, line: 502, type: !50)
!2745 = !DILocation(line: 502, column: 79, scope: !2735)
!2746 = !DILocalVariable(name: "_Right", arg: 3, scope: !2735, file: !42, line: 502, type: !2738)
!2747 = !DILocation(line: 502, column: 58, scope: !2735)
!2748 = !DILocalVariable(name: "_Left_size", arg: 2, scope: !2735, file: !42, line: 501, type: !50)
!2749 = !DILocation(line: 501, column: 102, scope: !2735)
!2750 = !DILocalVariable(name: "_Left", arg: 1, scope: !2735, file: !42, line: 501, type: !2738)
!2751 = !DILocation(line: 501, column: 82, scope: !2735)
!2752 = !DILocation(line: 504, column: 12, scope: !2735)
!2753 = !DILocation(line: 504, column: 26, scope: !2735)
!2754 = !DILocation(line: 504, column: 23, scope: !2735)
!2755 = !DILocation(line: 504, column: 38, scope: !2735)
!2756 = !DILocation(line: 504, column: 73, scope: !2735)
!2757 = !DILocation(line: 504, column: 65, scope: !2735)
!2758 = !DILocation(line: 504, column: 58, scope: !2735)
!2759 = !DILocation(line: 504, column: 41, scope: !2735)
!2760 = !DILocation(line: 504, column: 85, scope: !2735)
!2761 = !DILocation(line: 0, scope: !2735)
!2762 = !DILocation(line: 504, column: 5, scope: !2735)
!2763 = distinct !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ", scope: !96, file: !42, line: 2143, type: !159, scopeLine: 2143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !158, retainedNodes: !116)
!2764 = !DILocalVariable(name: "this", arg: 1, scope: !2763, type: !1813, flags: DIFlagArtificial | DIFlagObjectPointer)
!2765 = !DILocation(line: 0, scope: !2763)
!2766 = !DILocalVariable(name: "_Result", scope: !2763, file: !42, line: 2144, type: !161)
!2767 = !DILocation(line: 2144, column: 27, scope: !2763)
!2768 = !DILocation(line: 2144, column: 37, scope: !2763)
!2769 = !DILocation(line: 2144, column: 41, scope: !2763)
!2770 = !DILocation(line: 2145, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2763, file: !42, line: 2145, column: 13)
!2772 = !DILocation(line: 2145, column: 13, scope: !2763)
!2773 = !DILocation(line: 2146, column: 32, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !42, line: 2145, column: 38)
!2775 = !DILocation(line: 2146, column: 36, scope: !2774)
!2776 = !DILocation(line: 2146, column: 23, scope: !2774)
!2777 = !DILocation(line: 2146, column: 21, scope: !2774)
!2778 = !DILocation(line: 2147, column: 9, scope: !2774)
!2779 = !DILocation(line: 2149, column: 16, scope: !2763)
!2780 = !DILocation(line: 2149, column: 9, scope: !2763)
!2781 = distinct !DISubprogram(name: "compare", linkageName: "?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z", scope: !660, file: !42, line: 288, type: !663, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !662, retainedNodes: !116)
!2782 = !DILocalVariable(name: "_Count", arg: 3, scope: !2781, file: !42, line: 289, type: !50)
!2783 = !DILocation(line: 289, column: 69, scope: !2781)
!2784 = !DILocalVariable(name: "_First2", arg: 2, scope: !2781, file: !42, line: 289, type: !248)
!2785 = !DILocation(line: 289, column: 47, scope: !2781)
!2786 = !DILocalVariable(name: "_First1", arg: 1, scope: !2781, file: !42, line: 288, type: !248)
!2787 = !DILocation(line: 288, column: 86, scope: !2781)
!2788 = !DILocation(line: 301, column: 47, scope: !2781)
!2789 = !DILocation(line: 301, column: 38, scope: !2781)
!2790 = !DILocation(line: 301, column: 29, scope: !2781)
!2791 = !DILocation(line: 301, column: 16, scope: !2781)
!2792 = !DILocation(line: 301, column: 9, scope: !2781)
