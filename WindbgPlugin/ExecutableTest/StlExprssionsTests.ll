; ModuleID = 'C:\temp2\llvm-project\WindbgPlugin\ExecutableTest\StlExprssionsTests.cpp'
source_filename = "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\StlExprssionsTests.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.27.29112"

%"class.std::basic_string" = type { %"class.std::_Compressed_pair.0" }
%"class.std::_Compressed_pair.0" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { i8*, [8 x i8] }
%"struct.std::in_place_t" = type { i8 }
%rtti.TypeDescriptor29 = type { i8**, i8*, [30 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor19 = type { i8**, i8*, [20 x i8] }
%eh.CatchableTypeArray.2 = type { i32, [2 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.CompleteObjectLocator = type { i32, i32, i32, i32, i32, i32 }
%rtti.ClassHierarchyDescriptor = type { i32, i32, i32, i32 }
%rtti.BaseClassDescriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor30 = type { i8**, i8*, [31 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%rtti.TypeDescriptor25 = type { i8**, i8*, [26 x i8] }
%"class.std::unique_ptr" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %class.ClassWithDestructor* }
%class.ClassWithDestructor = type { i32 }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"class.std::optional" = type { %"struct.std::_Optional_construct_base" }
%"struct.std::_Optional_construct_base" = type { %"struct.std::_Optional_destruct_base" }
%"struct.std::_Optional_destruct_base" = type { %union.anon, i8 }
%union.anon = type { i32 }
%"struct.std::_Fake_allocator" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }
%"struct.std::_Container_base0" = type { i8 }
%"struct.std::_String_constructor_concat_tag" = type { i8 }
%"class.std::allocator" = type { i8 }
%"struct.std::_One_then_variadic_args_t" = type { i8 }
%"struct.std::_Equal_allocators" = type { i8 }
%"class.tl::expected" = type { %"struct.tl::detail::expected_move_assign_base", [4 x i8] }
%"struct.tl::detail::expected_move_assign_base" = type { %"struct.tl::detail::expected_copy_assign_base" }
%"struct.tl::detail::expected_copy_assign_base" = type { %"struct.tl::detail::expected_move_base" }
%"struct.tl::detail::expected_move_base" = type { %"struct.tl::detail::expected_copy_base" }
%"struct.tl::detail::expected_copy_base" = type { %"struct.tl::detail::expected_operations_base" }
%"struct.tl::detail::expected_operations_base" = type { %"struct.tl::detail::expected_storage_base" }
%"struct.tl::detail::expected_storage_base" = type { %union.anon.1, i8 }
%union.anon.1 = type { i32 }
%"struct.tl::detail::expected_delete_ctor_base" = type { i8 }
%"struct.tl::detail::expected_delete_assign_base" = type { i8 }
%"struct.tl::detail::expected_default_ctor_base" = type { i8 }
%"class.tl::unexpected" = type { i32 }
%"class.std::shared_ptr" = type { %"class.std::_Ptr_base" }
%"class.std::_Ptr_base" = type { i32*, %"class.std::_Ref_count_base"* }
%"class.std::_Ref_count_base" = type { i32 (...)**, i32, i32 }
%"class.std::_Ref_count_obj2" = type { %"class.std::_Ref_count_base", %union.anon.9 }
%union.anon.9 = type { %"struct.std::_Wrap" }
%"struct.std::_Wrap" = type { i32 }
%struct.__vcrt_assert_va_start_is_not_reference = type { i8 }
%struct._iobuf = type { i8* }
%struct.__crt_locale_pointers = type { %struct.__crt_locale_data*, %struct.__crt_multibyte_data* }
%struct.__crt_locale_data = type opaque
%struct.__crt_multibyte_data = type opaque
%"class.std::unique_ptr.2" = type { %"class.std::_Compressed_pair.3" }
%"class.std::_Compressed_pair.3" = type { i32* }
%"struct.std::default_delete" = type { i8 }
%"struct.std::default_delete.4" = type { i8 }
%struct._STARTUPINFOW = type { i32, i16*, i16*, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8*, i8*, i8*, i8* }
%struct._CONTEXT = type { i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i16, i16, i16, i16, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.6, [26 x %struct._M128A], i64, i64, i64, i64, i64, i64 }
%union.anon.6 = type { %struct._XSAVE_FORMAT }
%struct._XSAVE_FORMAT = type { i16, i16, i8, i8, i16, i32, i16, i16, i32, i16, i16, i32, i32, [8 x %struct._M128A], [16 x %struct._M128A], [96 x i8] }
%struct._M128A = type { i64, i64 }
%struct._PROCESS_INFORMATION = type { i8*, i8*, i32, i32 }
%"struct.test::expression::MyStruct" = type { i32 }
%"class.std::bad_optional_access" = type { %"class.std::exception" }
%"class.std::exception" = type { i32 (...)**, %struct.__std_exception_data }
%struct.__std_exception_data = type { i8*, i8 }
%class.anon = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"struct.std::integral_constant" = type { i8 }
%class.anon.7 = type { i8 }
%class.type_info = type { i32 (...)**, %struct.__std_type_info_data }
%struct.__std_type_info_data = type { i8*, [1 x i8] }

$"??$?0U?$default_delete@VClassWithDestructor@@@std@@$0A@@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ" = comdat any

$"??$?0H$0A@@?$optional@H@std@@QEAA@$$QEAH@Z" = comdat any

$"?value@?$optional@H@std@@QEGAAAEAHXZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z" = comdat any

$"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z" = comdat any

$"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z" = comdat any

$"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"??$?8HH@std@@YA_NAEBV?$optional@H@0@0@Z" = comdat any

$"??0?$expected@HH@tl@@QEAA@XZ" = comdat any

$"?error@?$expected@HH@tl@@QEGAAAEAHXZ" = comdat any

$"??$make_shared@HH@std@@YA?AV?$shared_ptr@H@0@$$QEAH@Z" = comdat any

$"??1?$shared_ptr@H@std@@QEAA@XZ" = comdat any

$printf = comdat any

$"??0?$shared_ptr@H@std@@QEAA@XZ" = comdat any

$"??0?$shared_ptr@H@std@@QEAA@AEBV01@@Z" = comdat any

$"??$?8HH@std@@YA_NAEBV?$shared_ptr@H@0@0@Z" = comdat any

$"?use_count@?$_Ptr_base@H@std@@QEBAJXZ" = comdat any

$"??$?DH$0A@@?$shared_ptr@H@std@@QEBAAEAHXZ" = comdat any

$"??$?0U?$default_delete@H@std@@$0A@@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ" = comdat any

$"??D?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAAEAHXZ" = comdat any

$"??1?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ" = comdat any

$"??1?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ" = comdat any

$"??$?0$$V@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"??$forward@H@std@@YA$$QEAHAEAH@Z" = comdat any

$"??0?$_Optional_construct_base@H@std@@QEAA@Uin_place_t@1@$$QEAH@Z" = comdat any

$"??$?0H@?$_Optional_destruct_base@H$00@std@@QEAA@Uin_place_t@1@$$QEAH@Z" = comdat any

$"??0?$expected_move_assign_base@HH$00@detail@tl@@QEAA@XZ" = comdat any

$"??0?$expected_copy_assign_base@HH$00@detail@tl@@QEAA@XZ" = comdat any

$"??0?$expected_move_base@HH$00@detail@tl@@QEAA@XZ" = comdat any

$"??0?$expected_copy_base@HH$00@detail@tl@@QEAA@XZ" = comdat any

$"??0?$expected_operations_base@HH@detail@tl@@QEAA@XZ" = comdat any

$"??0?$expected_storage_base@HH$00$00@detail@tl@@QEAA@XZ" = comdat any

$"?err@?$expected@HH@tl@@AEAAAEAV?$unexpected@H@2@XZ" = comdat any

$"?value@?$unexpected@H@tl@@QEGAAAEAHXZ" = comdat any

$_vfprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$"??0?$_Ptr_base@H@std@@IEAA@XZ" = comdat any

$"??$?0$$V@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

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

$"?_Get_first@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAAAEAU?$default_delete@VClassWithDestructor@@@2@XZ" = comdat any

$"??R?$default_delete@VClassWithDestructor@@@std@@QEBAXPEAVClassWithDestructor@@@Z" = comdat any

$"?_Throw_bad_optional_access@std@@YAXXZ" = comdat any

$"??0bad_optional_access@std@@QEAA@XZ" = comdat any

$"??0bad_optional_access@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_optional_access@std@@UEAA@XZ" = comdat any

$"??0exception@std@@QEAA@XZ" = comdat any

$"??_Gbad_optional_access@std@@UEAAPEAXI@Z" = comdat any

$"?what@bad_optional_access@std@@UEBAPEBDXZ" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

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

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z" = comdat any

$"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z" = comdat any

$"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z" = comdat any

$"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z" = comdat any

$"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@U_String_constructor_concat_tag@1@AEAV01@1@Z" = comdat any

$"??$?0AEAV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEAV?$allocator@D@1@@Z" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z" = comdat any

$"??$_Allocators_equal@V?$allocator@D@std@@@std@@YA_NAEBV?$allocator@D@0@0@Z" = comdat any

$"??$forward@AEAV?$allocator@D@std@@@std@@YAAEAV?$allocator@D@0@AEAV10@@Z" = comdat any

$"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z" = comdat any

$"??$addressof@$$CBV?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEBV?$_String_val@U?$_Simple_types@D@std@@@0@AEBV10@@Z" = comdat any

$"??$move@AEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YA$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z" = comdat any

$"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z" = comdat any

$"??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z" = comdat any

$"??$addressof@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YAPEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z" = comdat any

$"?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z" = comdat any

$"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z" = comdat any

$"?has_value@?$optional@H@std@@QEBA_NXZ" = comdat any

$"??D?$optional@H@std@@QEGBAAEBHXZ" = comdat any

$"??$?0H@?$_Ref_count_obj2@H@std@@QEAA@$$QEAH@Z" = comdat any

$"??$_Set_ptr_rep_and_enable_shared@H@?$shared_ptr@H@std@@AEAAXQEAHQEAV_Ref_count_base@1@@Z" = comdat any

$"??$addressof@H@std@@YAPEAHAEAH@Z" = comdat any

$"??0_Ref_count_base@std@@IEAA@XZ" = comdat any

$"??$_Construct_in_place@HH@std@@YAXAEAH$$QEAH@Z" = comdat any

$"?_Destroy@?$_Ref_count_obj2@H@std@@EEAAXXZ" = comdat any

$"?_Delete_this@?$_Ref_count_obj2@H@std@@EEAAXXZ" = comdat any

$"??_G?$_Ref_count_obj2@H@std@@UEAAPEAXI@Z" = comdat any

$"?_Get_deleter@_Ref_count_base@std@@UEBAPEAXAEBVtype_info@@@Z" = comdat any

$"??_G_Ref_count_base@std@@UEAAPEAXI@Z" = comdat any

$"??$_Destroy_in_place@H@std@@YAXAEAH@Z" = comdat any

$"??1?$_Ref_count_obj2@H@std@@UEAA@XZ" = comdat any

$"??1_Ref_count_base@std@@UEAA@XZ" = comdat any

$"?_Decref@?$_Ptr_base@H@std@@IEAAXXZ" = comdat any

$"?_Decref@_Ref_count_base@std@@QEAAXXZ" = comdat any

$"?_Decwref@_Ref_count_base@std@@QEAAXXZ" = comdat any

$"??$_Copy_construct_from@H@?$_Ptr_base@H@std@@IEAAXAEBV?$shared_ptr@H@1@@Z" = comdat any

$"?_Incref@?$_Ptr_base@H@std@@IEBAXXZ" = comdat any

$"?_Incref@_Ref_count_base@std@@QEAAXXZ" = comdat any

$"?get@?$_Ptr_base@H@std@@IEBAPEAHXZ" = comdat any

$"?_Use_count@_Ref_count_base@std@@QEBAJXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAAAEAU?$default_delete@H@2@XZ" = comdat any

$"??R?$default_delete@H@std@@QEBAXPEAH@Z" = comdat any

$"??_C@_0MO@PNCLFKFH@a?$DN5?$DLstd?3?3optional?$DMint?$DO?5m?5?$DN?5a?$DLFAI@" = comdat any

$"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@" = comdat any

$"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@" = comdat any

$"??_C@_0EF@GDILOBLA@std?3?3optional?$DMClassWithDestructo@" = comdat any

$"??_C@_0BHI@LCBKPAJ@a?$DN5?$DLFAIL_TEST_IF_FALSE?$CIa?4value?$CI?$CJ@" = comdat any

$"??_C@_0GI@LCFJNAAH@std?3?3expected?$DMClassWithDestructo@" = comdat any

$"??_C@_0JB@GCMHBBE@std?3?3shared_ptr?$DMClassWithDestruc@" = comdat any

$"??_C@_0EC@GOJAACBF@ms?4reset?$CI?$CJ?$DLFAIL_TEST_IF_FALSE?$CInu@" = comdat any

$"??_C@_02DPKJAMEF@?$CFd?$AA@" = comdat any

$"??_C@_0BCH@HHLLNHGI@a?4reset?$CI?$CJ?$DLauto?5f?5?$DN?5a?$DLFAIL_TEST_I@" = comdat any

$"??_C@_0BF@ONGAOCMO@a?4reset?$CInew?5int?$CI5?$CJ?$CJ?$DL?$AA@" = comdat any

$"??_C@_0LD@NMMKOFBP@a?4reset?$CI?$CJ?$DLstd?3?3unique_ptr?$DMint?$DO?5f@" = comdat any

$"??_C@_0PH@HEHHHG@auto?5aa?5?$DN?5ClassWithDestructor?$CI2?$CJ@" = comdat any

$"??_C@_0KI@EBHLGOBM@PROCESS_INFORMATION?5w?5?$DN?5?$HL?$HN?$DL?6s?4cb@" = comdat any

$"??_C@_0FM@BHMHCBJK@test?3?3expression?3?3MyStruct?5s?$DLaut@" = comdat any

$"??_C@_0FN@ECLNLPJK@std?3?3shared_ptr?$DMint?$DO?5f?$DLstd?3?3opti@" = comdat any

$"?in_place@std@@3Uin_place_t@1@B" = comdat any

$"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

$"??_R0?AVbad_optional_access@std@@@8" = comdat any

$"_CT??_R0?AVbad_optional_access@std@@@8??0bad_optional_access@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA2?AVbad_optional_access@std@@" = comdat any

$"_TI2?AVbad_optional_access@std@@" = comdat any

$"??_7bad_optional_access@std@@6B@" = comdat largest

$"??_R4bad_optional_access@std@@6B@" = comdat any

$"??_R3bad_optional_access@std@@8" = comdat any

$"??_R2bad_optional_access@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_optional_access@std@@8" = comdat any

$"??_R1A@?0A@EA@exception@std@@8" = comdat any

$"??_R3exception@std@@8" = comdat any

$"??_R2exception@std@@8" = comdat any

$"??_7exception@std@@6B@" = comdat largest

$"??_R4exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

$"??_C@_0BE@LMOOKEAD@Bad?5optional?5access?$AA@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

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

$"??_7bad_alloc@std@@6B@" = comdat largest

$"??_R4bad_alloc@std@@6B@" = comdat any

$"??_7?$_Ref_count_obj2@H@std@@6B@" = comdat largest

$"??_R4?$_Ref_count_obj2@H@std@@6B@" = comdat any

$"??_R0?AV?$_Ref_count_obj2@H@std@@@8" = comdat any

$"??_R3?$_Ref_count_obj2@H@std@@8" = comdat any

$"??_R2?$_Ref_count_obj2@H@std@@8" = comdat any

$"??_R1A@?0A@EA@?$_Ref_count_obj2@H@std@@8" = comdat any

$"??_R1A@?0A@EA@_Ref_count_base@std@@8" = comdat any

$"??_R0?AV_Ref_count_base@std@@@8" = comdat any

$"??_R3_Ref_count_base@std@@8" = comdat any

$"??_R2_Ref_count_base@std@@8" = comdat any

$"??_7_Ref_count_base@std@@6B@" = comdat largest

$"??_R4_Ref_count_base@std@@6B@" = comdat any

@"?g_counter@expression@test@@3HA" = dso_local dllexport global i32 0, align 4, !dbg !0
@"??_C@_0MO@PNCLFKFH@a?$DN5?$DLstd?3?3optional?$DMint?$DO?5m?5?$DN?5a?$DLFAI@" = linkonce_odr dso_local unnamed_addr constant [206 x i8] c"a=5;std::optional<int> m = a;FAIL_TEST_IF_FALSE(m.value()==5); a=a.value()+1;if(!a){FAIL_TEST_IF_FALSE(false);}FAIL_TEST_IF_FALSE(!std::optional<int>());FAIL_TEST_IF_FALSE(a==a);a = 5;a = returnOptional();\00", comdat, align 1
@"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c";g_shouldPauseExecute = false;\00", comdat, align 1
@"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@" = linkonce_odr dso_local unnamed_addr constant [94 x i8] c"\09#define FAIL_TEST_IF_FALSE(condition) if (!(condition)) {print(#condition);__debugbreak();}\0A\00", comdat, align 1
@"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A" = external dso_local global %"class.std::basic_string", align 8
@"?g_shouldPauseExecute@@3_NA" = external dso_local global i8, align 1
@"?g_notifyBp@@3_NA" = external dso_local global i8, align 1
@"??_C@_0EF@GDILOBLA@std?3?3optional?$DMClassWithDestructo@" = linkonce_odr dso_local unnamed_addr constant [69 x i8] c"std::optional<ClassWithDestructor> m;m=ClassWithDestructor(1); m =m;\00", comdat, align 1
@"??_C@_0BHI@LCBKPAJ@a?$DN5?$DLFAIL_TEST_IF_FALSE?$CIa?4value?$CI?$CJ@" = linkonce_odr dso_local unnamed_addr constant [376 x i8] c"a=5;FAIL_TEST_IF_FALSE(a.value()==5);FAIL_TEST_IF_FALSE(a.has_value());FAIL_TEST_IF_FALSE(a==a);FAIL_TEST_IF_FALSE(a);FAIL_TEST_IF_FALSE(!!a);fs.value() = 6;FAIL_TEST_IF_FALSE(6 == fs.value_or(3));a = fs;FAIL_TEST_IF_FALSE(a.value() == 6);a = tl::make_unexpected(2);FAIL_TEST_IF_FALSE(!a.has_value());FAIL_TEST_IF_FALSE(2 == a.error());FAIL_TEST_IF_FALSE(3 == a.value_or(3));\00", comdat, align 1
@"??_C@_0GI@LCFJNAAH@std?3?3expected?$DMClassWithDestructo@" = linkonce_odr dso_local unnamed_addr constant [104 x i8] c"std::expected<ClassWithDestructor, int> m(1);m=ClassWithDestructor(1); m =m;FAIL_TEST_IF_FALSE(m == m);\00", comdat, align 1
@"??_C@_0JB@GCMHBBE@std?3?3shared_ptr?$DMClassWithDestruc@" = linkonce_odr dso_local unnamed_addr constant [145 x i8] c"std::shared_ptr<ClassWithDestructor>ms(new ClassWithDestructor(2));FAIL_TEST_IF_FALSE(2==ms->m_r);ms =ms;ms.get()->m_r = ms.get()->m_r;*ms = *ms\00", comdat, align 1
@"??_C@_0EC@GOJAACBF@ms?4reset?$CI?$CJ?$DLFAIL_TEST_IF_FALSE?$CInu@" = linkonce_odr dso_local unnamed_addr constant [66 x i8] c"ms.reset();FAIL_TEST_IF_FALSE(nullptr == ms);ms = returnShared();\00", comdat, align 1
@"??_C@_02DPKJAMEF@?$CFd?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"%d\00", comdat, align 1
@"??_C@_0BCH@HHLLNHGI@a?4reset?$CI?$CJ?$DLauto?5f?5?$DN?5a?$DLFAIL_TEST_I@" = linkonce_odr dso_local unnamed_addr constant [295 x i8] c"a.reset();auto f = a;FAIL_TEST_IF_FALSE(a==f);FAIL_TEST_IF_FALSE(nullptr == a);FAIL_TEST_IF_FALSE(nullptr == a.get());a.reset(new int(5));FAIL_TEST_IF_FALSE((bool)a);FAIL_TEST_IF_FALSE(*a == 5);;printf(\22value is %d\\n\22, a.use_count());printf(\22value is %d\\n\22, *a);printf(\22value is %p\\n\22, a.get())\00", comdat, align 1
@"??_C@_0BF@ONGAOCMO@a?4reset?$CInew?5int?$CI5?$CJ?$CJ?$DL?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"a.reset(new int(5));\00", comdat, align 1
@"??_C@_0LD@NMMKOFBP@a?4reset?$CI?$CJ?$DLstd?3?3unique_ptr?$DMint?$DO?5f@" = linkonce_odr dso_local unnamed_addr constant [179 x i8] c"a.reset();std::unique_ptr<int> f;f.reset(new int(5));a.reset(new int(5))FAIL_TEST_IF_FALSE(*f == 5);FAIL_TEST_IF_FALSE(f.get() != nullptr);FAIL_TEST_IF_FALSE(a.get() != nullptr);\00", comdat, align 1
@"??_C@_0PH@HEHHHG@auto?5aa?5?$DN?5ClassWithDestructor?$CI2?$CJ@" = linkonce_odr dso_local unnamed_addr constant [247 x i8] c"auto aa = ClassWithDestructor(2);std::unique_ptr<ClassWithDestructor> ms(new ClassWithDestructor(2));FAIL_TEST_IF_FALSE(2==ms->m_r);*ms = *ms;ms.get()->m_r = ms.get()->m_r; ms = std::make_unique<ClassWithDestructor>(2); ms = retFunc();ms.reset();\00", comdat, align 1
@"??_C@_0KI@EBHLGOBM@PROCESS_INFORMATION?5w?5?$DN?5?$HL?$HN?$DL?6s?4cb@" = linkonce_odr dso_local unnamed_addr constant [168 x i8] c"PROCESS_INFORMATION w = {};\0As.cb = sizeof(s);\0Ap.hThread = GetCurrentThread();RtlCaptureContext(&context);context.R10 = 8;FAIL_TEST_IF_FALSE(GetModuleHandle(nullptr)); \00", comdat, align 1
@"??_C@_0FM@BHMHCBJK@test?3?3expression?3?3MyStruct?5s?$DLaut@" = linkonce_odr dso_local unnamed_addr constant [92 x i8] c"test::expression::MyStruct s;auto f = std::make_shared<test::expression::MyStruct>();f = f;\00", comdat, align 1
@"??_C@_0FN@ECLNLPJK@std?3?3shared_ptr?$DMint?$DO?5f?$DLstd?3?3opti@" = linkonce_odr dso_local unnamed_addr constant [93 x i8] c"std::shared_ptr<int> f;std::optional<int> m;tl::make_unexpected(2);;std::unique_ptr<int> sk;\00", comdat, align 1
@"?in_place@std@@3Uin_place_t@1@B" = linkonce_odr dso_local constant %"struct.std::in_place_t" zeroinitializer, comdat, align 1, !dbg !6
@"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr dso_local global i64 0, comdat, align 8, !dbg !17
@"??_7type_info@@6B@" = external constant i8*
@"??_R0?AVbad_optional_access@std@@@8" = linkonce_odr global %rtti.TypeDescriptor29 { i8** @"??_7type_info@@6B@", i8* null, [30 x i8] c".?AVbad_optional_access@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVbad_optional_access@std@@@8??0bad_optional_access@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor29* @"??_R0?AVbad_optional_access@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_optional_access"* (%"class.std::bad_optional_access"*, %"class.std::bad_optional_access"*)* @"??0bad_optional_access@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { i8** @"??_7type_info@@6B@", i8* null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::exception"* (%"class.std::exception"*, %"class.std::exception"*)* @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA2?AVbad_optional_access@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.2 { i32 2, [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_optional_access@std@@@8??0bad_optional_access@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI2?AVbad_optional_access@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (void (%"class.std::bad_optional_access"*)* @"??1bad_optional_access@std@@UEAA@XZ" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableTypeArray.2* @"_CTA2?AVbad_optional_access@std@@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@0 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_optional_access@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_optional_access"*, i32)* @"??_Gbad_optional_access@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::bad_optional_access"*)* @"?what@bad_optional_access@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_optional_access@std@@6B@")
@"??_R4bad_optional_access@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor29* @"??_R0?AVbad_optional_access@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_optional_access@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_optional_access@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_optional_access@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2bad_optional_access@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_optional_access@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_optional_access@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_optional_access@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor29* @"??_R0?AVbad_optional_access@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_optional_access@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@exception@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3exception@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([2 x i32]* @"??_R2exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2exception@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@1 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4exception@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::exception"*, i32)* @"??_Gexception@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7exception@std@@6B@")
@"??_R4exception@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4exception@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 1
@"??_C@_0BE@LMOOKEAD@Bad?5optional?5access?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"Bad optional access\00", comdat, align 1
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { i8** @"??_7type_info@@6B@", i8* null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_array_new_length"* (%"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"*)* @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { i8** @"??_7type_info@@6B@", i8* null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_alloc"* (%"class.std::bad_alloc"*, %"class.std::bad_alloc"*)* @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (void (%"class.std::bad_array_new_length"*)* @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableTypeArray.3* @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 1
@2 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_array_new_length@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_array_new_length"*, i32)* @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_array_new_length@std@@6B@")
@"??_R4bad_array_new_length@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_array_new_length@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_array_new_length@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([4 x i32]* @"??_R2bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_array_new_length@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_array_new_length@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@bad_alloc@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_alloc@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_alloc@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@3 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_alloc@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_alloc"*, i32)* @"??_Gbad_alloc@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_alloc@std@@6B@")
@"??_R4bad_alloc@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_alloc@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@4 = private unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4?$_Ref_count_obj2@H@std@@6B@" to i8*), i8* bitcast (void (%"class.std::_Ref_count_obj2"*)* @"?_Destroy@?$_Ref_count_obj2@H@std@@EEAAXXZ" to i8*), i8* bitcast (void (%"class.std::_Ref_count_obj2"*)* @"?_Delete_this@?$_Ref_count_obj2@H@std@@EEAAXXZ" to i8*), i8* bitcast (i8* (%"class.std::_Ref_count_obj2"*, i32)* @"??_G?$_Ref_count_obj2@H@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::_Ref_count_base"*, %class.type_info*)* @"?_Get_deleter@_Ref_count_base@std@@UEBAPEAXAEBVtype_info@@@Z" to i8*)] }, comdat($"??_7?$_Ref_count_obj2@H@std@@6B@")
@"??_R4?$_Ref_count_obj2@H@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor29* @"??_R0?AV?$_Ref_count_obj2@H@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3?$_Ref_count_obj2@H@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4?$_Ref_count_obj2@H@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV?$_Ref_count_obj2@H@std@@@8" = linkonce_odr global %rtti.TypeDescriptor29 { i8** @"??_7type_info@@6B@", i8* null, [30 x i8] c".?AV?$_Ref_count_obj2@H@std@@\00" }, comdat
@"??_R3?$_Ref_count_obj2@H@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2?$_Ref_count_obj2@H@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2?$_Ref_count_obj2@H@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@?$_Ref_count_obj2@H@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Ref_count_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@?$_Ref_count_obj2@H@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor29* @"??_R0?AV?$_Ref_count_obj2@H@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3?$_Ref_count_obj2@H@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@_Ref_count_base@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor25* @"??_R0?AV_Ref_count_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Ref_count_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV_Ref_count_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor25 { i8** @"??_7type_info@@6B@", i8* null, [26 x i8] c".?AV_Ref_count_base@std@@\00" }, comdat
@"??_R3_Ref_count_base@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([2 x i32]* @"??_R2_Ref_count_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Ref_count_base@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Ref_count_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@5 = private unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4_Ref_count_base@std@@6B@" to i8*), i8* bitcast (void ()* @_purecall to i8*), i8* bitcast (void ()* @_purecall to i8*), i8* bitcast (i8* (%"class.std::_Ref_count_base"*, i32)* @"??_G_Ref_count_base@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::_Ref_count_base"*, %class.type_info*)* @"?_Get_deleter@_Ref_count_base@std@@UEBAPEAXAEBVtype_info@@@Z" to i8*)] }, comdat($"??_7_Ref_count_base@std@@6B@")
@"??_R4_Ref_count_base@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor25* @"??_R0?AV_Ref_count_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Ref_count_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4_Ref_count_base@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat

@"??_7bad_optional_access@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @0, i32 0, i32 0, i32 1)
@"??_7exception@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @1, i32 0, i32 0, i32 1)
@"??_7bad_array_new_length@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @2, i32 0, i32 0, i32 1)
@"??_7bad_alloc@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @3, i32 0, i32 0, i32 1)
@"??_7?$_Ref_count_obj2@H@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @4, i32 0, i32 0, i32 1)
@"??_7_Ref_count_base@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @5, i32 0, i32 0, i32 1)

; Function Attrs: noinline optnone uwtable
define dso_local void @"?retFunc@@YA?AV?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@XZ"(%"class.std::unique_ptr"* noalias sret align 8 %0) #0 !dbg !2069 {
  %2 = alloca i8*, align 8
  %3 = bitcast %"class.std::unique_ptr"* %0 to i8*
  store i8* %3, i8** %2, align 8
  %4 = call %"class.std::unique_ptr"* @"??$?0U?$default_delete@VClassWithDestructor@@@std@@$0A@@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr"* %0) #5, !dbg !2188
  ret void, !dbg !2189
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::unique_ptr"* @"??$?0U?$default_delete@VClassWithDestructor@@@std@@$0A@@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr"* returned %0) unnamed_addr #1 comdat align 2 !dbg !2190 {
  %2 = alloca %"class.std::unique_ptr"*, align 8
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %2, metadata !2195, metadata !DIExpression()), !dbg !2197
  %4 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %2, align 8
  %5 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %4, i32 0, i32 0, !dbg !2198
  %6 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %3, i32 0, i32 0, !dbg !2198
  %7 = load i8, i8* %6, align 1, !dbg !2198
  %8 = call %"class.std::_Compressed_pair"* @"??$?0$$V@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair"* %5, i8 %7) #5, !dbg !2198
  ret %"class.std::unique_ptr"* %4, !dbg !2199
}

; Function Attrs: noinline optnone uwtable
define dso_local void @"?returnOptional@expression@test@@YA?AV?$optional@H@std@@XZ"(%"class.std::optional"* noalias sret align 4 %0) #0 !dbg !2200 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast %"class.std::optional"* %0 to i8*
  store i8* %4, i8** %2, align 8
  store i32 6, i32* %3, align 4, !dbg !2203
  %5 = call %"class.std::optional"* @"??$?0H$0A@@?$optional@H@std@@QEAA@$$QEAH@Z"(%"class.std::optional"* %0, i32* nonnull align 4 dereferenceable(4) %3), !dbg !2204
  ret void, !dbg !2205
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::optional"* @"??$?0H$0A@@?$optional@H@std@@QEAA@$$QEAH@Z"(%"class.std::optional"* returned %0, i32* nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 !dbg !2206 {
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::optional"*, align 8
  %5 = alloca %"struct.std::in_place_t", align 1
  store i32* %1, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !2212, metadata !DIExpression()), !dbg !2213
  store %"class.std::optional"* %0, %"class.std::optional"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::optional"** %4, metadata !2214, metadata !DIExpression()), !dbg !2216
  %6 = load %"class.std::optional"*, %"class.std::optional"** %4, align 8
  %7 = bitcast %"class.std::optional"* %6 to %"struct.std::_Optional_construct_base"*, !dbg !2217
  %8 = load i32*, i32** %3, align 8, !dbg !2218
  %9 = call nonnull align 4 dereferenceable(4) i32* @"??$forward@H@std@@YA$$QEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %8) #5, !dbg !2219
  %10 = getelementptr inbounds %"struct.std::in_place_t", %"struct.std::in_place_t"* %5, i32 0, i32 0, !dbg !2220
  %11 = load i8, i8* %10, align 1, !dbg !2220
  %12 = call %"struct.std::_Optional_construct_base"* @"??0?$_Optional_construct_base@H@std@@QEAA@Uin_place_t@1@$$QEAH@Z"(%"struct.std::_Optional_construct_base"* %7, i8 %11, i32* nonnull align 4 dereferenceable(4) %9), !dbg !2220
  ret %"class.std::optional"* %6, !dbg !2221
}

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?optionalObjectTest@expression@test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2222 {
  %1 = alloca %"class.std::optional", align 4
  %2 = alloca %"class.std::optional", align 4
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::optional", align 4
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string", align 8
  %14 = alloca %"class.std::basic_string", align 8
  call void @llvm.dbg.declare(metadata %"class.std::optional"* %1, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @"?returnOptional@expression@test@@YA?AV?$optional@H@std@@XZ"(%"class.std::optional"* sret align 4 %1), !dbg !2225
  store i32 5, i32* %3, align 4, !dbg !2226
  %15 = call %"class.std::optional"* @"??$?0H$0A@@?$optional@H@std@@QEAA@$$QEAH@Z"(%"class.std::optional"* %2, i32* nonnull align 4 dereferenceable(4) %3), !dbg !2226
  %16 = bitcast %"class.std::optional"* %1 to i8*, !dbg !2227
  %17 = bitcast %"class.std::optional"* %2 to i8*, !dbg !2227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false), !dbg !2227
  %18 = call nonnull align 4 dereferenceable(4) i32* @"?value@?$optional@H@std@@QEGAAAEAHXZ"(%"class.std::optional"* %1), !dbg !2228
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %4, metadata !2229, metadata !DIExpression()), !dbg !2230
  %19 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %4, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @"??_C@_0MO@PNCLFKFH@a?$DN5?$DLstd?3?3optional?$DMint?$DO?5m?5?$DN?5a?$DLFAI@", i64 0, i64 0)), !dbg !2231
  invoke void @llvm.eha.scope.begin()
          to label %20 unwind label %94, !dbg !2232

20:                                               ; preds = %0
  %21 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %7, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %22 unwind label %94, !dbg !2233

22:                                               ; preds = %20
  invoke void @llvm.eha.scope.begin()
          to label %23 unwind label %46, !dbg !2233

23:                                               ; preds = %22
  %24 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %8, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %25 unwind label %46, !dbg !2233

25:                                               ; preds = %23
  invoke void @llvm.eha.scope.begin()
          to label %26 unwind label %44, !dbg !2233

26:                                               ; preds = %25
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %7)
          to label %27 unwind label %44, !dbg !2233

27:                                               ; preds = %26
  invoke void @llvm.eha.scope.begin()
          to label %28 unwind label %42, !dbg !2233

28:                                               ; preds = %27
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %5, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %29 unwind label %42, !dbg !2233

29:                                               ; preds = %28
  invoke void @llvm.eha.scope.begin()
          to label %30 unwind label %40, !dbg !2233

30:                                               ; preds = %29
  %31 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %5) #5, !dbg !2233
  invoke void @llvm.eha.scope.end()
          to label %32 unwind label %40, !dbg !2233

32:                                               ; preds = %30
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5, !dbg !2233
  invoke void @llvm.eha.scope.end()
          to label %33 unwind label %42, !dbg !2233

33:                                               ; preds = %32
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5, !dbg !2233
  invoke void @llvm.eha.scope.end()
          to label %34 unwind label %44, !dbg !2233

34:                                               ; preds = %33
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %8) #5, !dbg !2233
  invoke void @llvm.eha.scope.end()
          to label %35 unwind label %46, !dbg !2233

35:                                               ; preds = %34
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5, !dbg !2233
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2233
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !2233
  br label %36, !dbg !2233

36:                                               ; preds = %39, %35
  %37 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2233
  %38 = trunc i8 %37 to i1, !dbg !2233
  br i1 %38, label %39, label %48, !dbg !2233

39:                                               ; preds = %36
  br label %36, !dbg !2233, !llvm.loop !2234

40:                                               ; preds = %30, %29
  %41 = cleanuppad within none [], !dbg !2233
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5 [ "funclet"(token %41) ], !dbg !2233
  cleanupret from %41 unwind label %42, !dbg !2233

42:                                               ; preds = %32, %40, %28, %27
  %43 = cleanuppad within none [], !dbg !2233
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5 [ "funclet"(token %43) ], !dbg !2233
  cleanupret from %43 unwind label %44, !dbg !2233

44:                                               ; preds = %33, %42, %26, %25
  %45 = cleanuppad within none [], !dbg !2233
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %8) #5 [ "funclet"(token %45) ], !dbg !2233
  cleanupret from %45 unwind label %46, !dbg !2233

46:                                               ; preds = %34, %44, %23, %22
  %47 = cleanuppad within none [], !dbg !2233
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5 [ "funclet"(token %47) ], !dbg !2233
  cleanupret from %47 unwind label %94, !dbg !2233

48:                                               ; preds = %36
  invoke void @"?returnOptional@expression@test@@YA?AV?$optional@H@std@@XZ"(%"class.std::optional"* sret align 4 %9)
          to label %49 unwind label %94, !dbg !2235

49:                                               ; preds = %48
  %50 = invoke zeroext i1 @"??$?8HH@std@@YA_NAEBV?$optional@H@0@0@Z"(%"class.std::optional"* nonnull align 4 dereferenceable(8) %1, %"class.std::optional"* nonnull align 4 dereferenceable(8) %9)
          to label %51 unwind label %94, !dbg !2235

51:                                               ; preds = %49
  %52 = xor i1 %50, true, !dbg !2235
  br i1 %52, label %53, label %54, !dbg !2237

53:                                               ; preds = %51
  call void @llvm.debugtrap(), !dbg !2238
  br label %54, !dbg !2238

54:                                               ; preds = %53, %51
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %10, metadata !2240, metadata !DIExpression()), !dbg !2241
  %55 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %10, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @"??_C@_0EF@GDILOBLA@std?3?3optional?$DMClassWithDestructo@", i64 0, i64 0))
          to label %56 unwind label %94, !dbg !2242

56:                                               ; preds = %54
  invoke void @llvm.eha.scope.begin()
          to label %57 unwind label %92, !dbg !2243

57:                                               ; preds = %56
  %58 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %13, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %10)
          to label %59 unwind label %92, !dbg !2244

59:                                               ; preds = %57
  invoke void @llvm.eha.scope.begin()
          to label %60 unwind label %83, !dbg !2244

60:                                               ; preds = %59
  %61 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %14, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %62 unwind label %83, !dbg !2244

62:                                               ; preds = %60
  invoke void @llvm.eha.scope.begin()
          to label %63 unwind label %81, !dbg !2244

63:                                               ; preds = %62
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %12, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %14, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %13)
          to label %64 unwind label %81, !dbg !2244

64:                                               ; preds = %63
  invoke void @llvm.eha.scope.begin()
          to label %65 unwind label %79, !dbg !2244

65:                                               ; preds = %64
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %11, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %66 unwind label %79, !dbg !2244

66:                                               ; preds = %65
  invoke void @llvm.eha.scope.begin()
          to label %67 unwind label %77, !dbg !2244

67:                                               ; preds = %66
  %68 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %11) #5, !dbg !2244
  invoke void @llvm.eha.scope.end()
          to label %69 unwind label %77, !dbg !2244

69:                                               ; preds = %67
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5, !dbg !2244
  invoke void @llvm.eha.scope.end()
          to label %70 unwind label %79, !dbg !2244

70:                                               ; preds = %69
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5, !dbg !2244
  invoke void @llvm.eha.scope.end()
          to label %71 unwind label %81, !dbg !2244

71:                                               ; preds = %70
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %14) #5, !dbg !2244
  invoke void @llvm.eha.scope.end()
          to label %72 unwind label %83, !dbg !2244

72:                                               ; preds = %71
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5, !dbg !2244
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2244
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !2244
  br label %73, !dbg !2244

73:                                               ; preds = %76, %72
  %74 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2244
  %75 = trunc i8 %74 to i1, !dbg !2244
  br i1 %75, label %76, label %85, !dbg !2244

76:                                               ; preds = %73
  br label %73, !dbg !2244, !llvm.loop !2245

77:                                               ; preds = %67, %66
  %78 = cleanuppad within none [], !dbg !2244
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5 [ "funclet"(token %78) ], !dbg !2244
  cleanupret from %78 unwind label %79, !dbg !2244

79:                                               ; preds = %69, %77, %65, %64
  %80 = cleanuppad within none [], !dbg !2244
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5 [ "funclet"(token %80) ], !dbg !2244
  cleanupret from %80 unwind label %81, !dbg !2244

81:                                               ; preds = %70, %79, %63, %62
  %82 = cleanuppad within none [], !dbg !2244
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %14) #5 [ "funclet"(token %82) ], !dbg !2244
  cleanupret from %82 unwind label %83, !dbg !2244

83:                                               ; preds = %71, %81, %60, %59
  %84 = cleanuppad within none [], !dbg !2244
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5 [ "funclet"(token %84) ], !dbg !2244
  cleanupret from %84 unwind label %92, !dbg !2244

85:                                               ; preds = %73
  %86 = load i32, i32* @"?g_counter@expression@test@@3HA", align 4, !dbg !2246
  %87 = icmp ne i32 %86, 0, !dbg !2246
  br i1 %87, label %89, label %88, !dbg !2248

88:                                               ; preds = %85
  call void @llvm.debugtrap(), !dbg !2249
  br label %89, !dbg !2249

89:                                               ; preds = %88, %85
  invoke void @llvm.eha.scope.end()
          to label %90 unwind label %92, !dbg !2251

90:                                               ; preds = %89
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5, !dbg !2251
  invoke void @llvm.eha.scope.end()
          to label %91 unwind label %94, !dbg !2251

91:                                               ; preds = %90
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5, !dbg !2251
  ret void, !dbg !2251

92:                                               ; preds = %89, %83, %57, %56
  %93 = cleanuppad within none [], !dbg !2251
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5 [ "funclet"(token %93) ], !dbg !2251
  cleanupret from %93 unwind label %94, !dbg !2251

94:                                               ; preds = %90, %92, %54, %49, %48, %46, %20, %0
  %95 = cleanuppad within none [], !dbg !2251
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5 [ "funclet"(token %95) ], !dbg !2251
  cleanupret from %95 unwind to caller, !dbg !2251
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @"?value@?$optional@H@std@@QEGAAAEAHXZ"(%"class.std::optional"* %0) #0 comdat align 2 !dbg !2252 {
  %2 = alloca %"class.std::optional"*, align 8
  store %"class.std::optional"* %0, %"class.std::optional"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::optional"** %2, metadata !2253, metadata !DIExpression()), !dbg !2254
  %3 = load %"class.std::optional"*, %"class.std::optional"** %2, align 8
  %4 = bitcast %"class.std::optional"* %3 to %"struct.std::_Optional_destruct_base"*, !dbg !2255
  %5 = getelementptr inbounds %"struct.std::_Optional_destruct_base", %"struct.std::_Optional_destruct_base"* %4, i32 0, i32 1, !dbg !2255
  %6 = load i8, i8* %5, align 4, !dbg !2255
  %7 = trunc i8 %6 to i1, !dbg !2255
  br i1 %7, label %9, label %8, !dbg !2257

8:                                                ; preds = %1
  call void @"?_Throw_bad_optional_access@std@@YAXXZ"() #15, !dbg !2258
  unreachable, !dbg !2258

9:                                                ; preds = %1
  %10 = bitcast %"class.std::optional"* %3 to %"struct.std::_Optional_destruct_base"*, !dbg !2260
  %11 = getelementptr inbounds %"struct.std::_Optional_destruct_base", %"struct.std::_Optional_destruct_base"* %10, i32 0, i32 0, !dbg !2260
  %12 = bitcast %union.anon* %11 to i32*, !dbg !2260
  ret i32* %12, !dbg !2261
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* returned %0, i8* %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2262 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %6 = alloca %"struct.std::_Fake_allocator"*, align 8
  %7 = alloca %"struct.std::_Fake_allocator", align 1
  %8 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2263, metadata !DIExpression()), !dbg !2264
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !2265, metadata !DIExpression()), !dbg !2267
  %9 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %10 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i32 0, i32 0, !dbg !2268
  %11 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %5, i32 0, i32 0, !dbg !2268
  %12 = load i8, i8* %11, align 1, !dbg !2268
  %13 = call %"class.std::_Compressed_pair.0"* @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair.0"* %10, i8 %12), !dbg !2268
  invoke void @llvm.eha.scope.begin()
          to label %14 unwind label %23, !dbg !2268

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_allocator"** %6, metadata !2269, metadata !DIExpression()), !dbg !2272
  store %"struct.std::_Fake_allocator"* %7, %"struct.std::_Fake_allocator"** %6, align 8, !dbg !2272
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"* %8, metadata !2273, metadata !DIExpression()), !dbg !2308
  %15 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i32 0, i32 0, !dbg !2309
  %16 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %15, i32 0, i32 0, !dbg !2310
  %17 = bitcast %"class.std::_String_val"* %16 to %"struct.std::_Container_base0"*, !dbg !2309
  %18 = load %"struct.std::_Fake_allocator"*, %"struct.std::_Fake_allocator"** %6, align 8, !dbg !2311
  %19 = call %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* %8, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %18, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %17) #5, !dbg !2308
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %9) #5, !dbg !2312
  %20 = load i8*, i8** %3, align 8, !dbg !2313
  %21 = invoke nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %9, i8* %20)
          to label %22 unwind label %23, !dbg !2314

22:                                               ; preds = %14
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %8) #5, !dbg !2315
  ret %"class.std::basic_string"* %9, !dbg !2316

23:                                               ; preds = %14, %2
  %24 = cleanuppad within none [], !dbg !2317
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair.0"* %10) #5 [ "funclet"(token %24) ], !dbg !2317
  cleanupret from %24 unwind to caller, !dbg !2317
}

; Function Attrs: nounwind readnone
declare dso_local void @llvm.eha.scope.begin() #4

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* noalias sret align 8 %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1, i8* %2) #0 comdat !dbg !2318 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::basic_string"*, align 8
  %7 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %7, i8** %4, align 8
  store i8* %2, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2321, metadata !DIExpression()), !dbg !2322
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %6, metadata !2323, metadata !DIExpression()), !dbg !2324
  %8 = load %"class.std::basic_string"*, %"class.std::basic_string"** %6, align 8, !dbg !2325
  %9 = load i8*, i8** %5, align 8, !dbg !2326
  %10 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %8, i8* %9), !dbg !2327
  %11 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$move@AEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YA$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %10) #5, !dbg !2328
  %12 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(%"class.std::basic_string"* %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %11) #5, !dbg !2328
  ret void, !dbg !2329
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* noalias sret align 8 %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %2) #0 comdat !dbg !2330 {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::basic_string"*, align 8
  %6 = alloca %"class.std::basic_string"*, align 8
  %7 = alloca %"struct.std::_String_constructor_concat_tag", align 1
  %8 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %8, i8** %4, align 8
  store %"class.std::basic_string"* %2, %"class.std::basic_string"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %5, metadata !2333, metadata !DIExpression()), !dbg !2334
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %6, metadata !2335, metadata !DIExpression()), !dbg !2336
  %9 = load %"class.std::basic_string"*, %"class.std::basic_string"** %6, align 8, !dbg !2337
  %10 = load %"class.std::basic_string"*, %"class.std::basic_string"** %5, align 8, !dbg !2338
  %11 = getelementptr inbounds %"struct.std::_String_constructor_concat_tag", %"struct.std::_String_constructor_concat_tag"* %7, i32 0, i32 0, !dbg !2339
  %12 = load i8, i8* %11, align 1, !dbg !2339
  %13 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@U_String_constructor_concat_tag@1@AEAV01@1@Z"(%"class.std::basic_string"* %0, i8 %12, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %10), !dbg !2339
  ret void, !dbg !2340
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* returned %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2341 {
  %3 = alloca %"class.std::basic_string"*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %7 = alloca %"struct.std::_Fake_allocator"*, align 8
  %8 = alloca %"struct.std::_Fake_allocator", align 1
  %9 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %3, metadata !2342, metadata !DIExpression()), !dbg !2343
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !2344, metadata !DIExpression()), !dbg !2345
  %10 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %11 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i32 0, i32 0, !dbg !2346
  %12 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !2347
  %13 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %12) #5, !dbg !2348
  call void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(%"class.std::allocator"* sret align 1 %5, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %13), !dbg !2349
  %14 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %6, i32 0, i32 0, !dbg !2346
  %15 = load i8, i8* %14, align 1, !dbg !2346
  %16 = call %"class.std::_Compressed_pair.0"* @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair.0"* %11, i8 %15, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5), !dbg !2346
  invoke void @llvm.eha.scope.begin()
          to label %17 unwind label %25, !dbg !2346

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_allocator"** %7, metadata !2350, metadata !DIExpression()), !dbg !2352
  store %"struct.std::_Fake_allocator"* %8, %"struct.std::_Fake_allocator"** %7, align 8, !dbg !2352
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"* %9, metadata !2353, metadata !DIExpression()), !dbg !2354
  %18 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i32 0, i32 0, !dbg !2355
  %19 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %18, i32 0, i32 0, !dbg !2356
  %20 = bitcast %"class.std::_String_val"* %19 to %"struct.std::_Container_base0"*, !dbg !2355
  %21 = load %"struct.std::_Fake_allocator"*, %"struct.std::_Fake_allocator"** %7, align 8, !dbg !2357
  %22 = call %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* %9, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %21, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %20) #5, !dbg !2354
  %23 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !2358
  invoke void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %10, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %23)
          to label %24 unwind label %25, !dbg !2359

24:                                               ; preds = %17
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %9) #5, !dbg !2360
  ret %"class.std::basic_string"* %10, !dbg !2361

25:                                               ; preds = %17, %2
  %26 = cleanuppad within none [], !dbg !2362
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair.0"* %11) #5 [ "funclet"(token %26) ], !dbg !2362
  cleanupret from %26 unwind to caller, !dbg !2362
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 !dbg !2363 {
  %3 = alloca %"class.std::basic_string"*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca %"struct.std::_Equal_allocators", align 1
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %3, metadata !2364, metadata !DIExpression()), !dbg !2365
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !2366, metadata !DIExpression()), !dbg !2367
  %6 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %7 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !2368
  %8 = call %"class.std::basic_string"* @"??$addressof@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YAPEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %7) #5, !dbg !2370
  %9 = icmp ne %"class.std::basic_string"* %6, %8, !dbg !2371
  br i1 %9, label %10, label %14, !dbg !2372

10:                                               ; preds = %2
  %11 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !2373
  %12 = getelementptr inbounds %"struct.std::_Equal_allocators", %"struct.std::_Equal_allocators"* %5, i32 0, i32 0, !dbg !2375
  %13 = load i8, i8* %12, align 1, !dbg !2375
  call void @"?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z"(%"class.std::basic_string"* %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %11, i8 %13) #5, !dbg !2375
  br label %14, !dbg !2376

14:                                               ; preds = %10, %2
  ret %"class.std::basic_string"* %6, !dbg !2377
}

; Function Attrs: nounwind readnone
declare dso_local void @llvm.eha.scope.end() #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %0) unnamed_addr #1 comdat align 2 !dbg !2378 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !2379, metadata !DIExpression()), !dbg !2380
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %3) #5, !dbg !2381
  %4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i32 0, i32 0, !dbg !2383
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair.0"* %4) #5, !dbg !2383
  ret void, !dbg !2384
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??$?8HH@std@@YA_NAEBV?$optional@H@0@0@Z"(%"class.std::optional"* nonnull align 4 dereferenceable(8) %0, %"class.std::optional"* nonnull align 4 dereferenceable(8) %1) #0 comdat !dbg !2385 {
  %3 = alloca %"class.std::optional"*, align 8
  %4 = alloca %"class.std::optional"*, align 8
  %5 = alloca i8, align 1
  store %"class.std::optional"* %1, %"class.std::optional"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::optional"** %3, metadata !2391, metadata !DIExpression()), !dbg !2392
  store %"class.std::optional"* %0, %"class.std::optional"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::optional"** %4, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2395, metadata !DIExpression()), !dbg !2396
  %6 = load %"class.std::optional"*, %"class.std::optional"** %4, align 8, !dbg !2397
  %7 = call zeroext i1 @"?has_value@?$optional@H@std@@QEBA_NXZ"(%"class.std::optional"* %6) #5, !dbg !2398
  %8 = zext i1 %7 to i8, !dbg !2396
  store i8 %8, i8* %5, align 1, !dbg !2396
  %9 = load i8, i8* %5, align 1, !dbg !2399
  %10 = trunc i8 %9 to i1, !dbg !2399
  %11 = zext i1 %10 to i32, !dbg !2399
  %12 = load %"class.std::optional"*, %"class.std::optional"** %3, align 8, !dbg !2400
  %13 = call zeroext i1 @"?has_value@?$optional@H@std@@QEBA_NXZ"(%"class.std::optional"* %12) #5, !dbg !2401
  %14 = zext i1 %13 to i32, !dbg !2400
  %15 = icmp eq i32 %11, %14, !dbg !2402
  br i1 %15, label %16, label %29, !dbg !2403

16:                                               ; preds = %2
  %17 = load i8, i8* %5, align 1, !dbg !2404
  %18 = trunc i8 %17 to i1, !dbg !2404
  br i1 %18, label %19, label %27, !dbg !2405

19:                                               ; preds = %16
  %20 = load %"class.std::optional"*, %"class.std::optional"** %4, align 8, !dbg !2406
  %21 = call nonnull align 4 dereferenceable(4) i32* @"??D?$optional@H@std@@QEGBAAEBHXZ"(%"class.std::optional"* %20), !dbg !2407
  %22 = load i32, i32* %21, align 4, !dbg !2407
  %23 = load %"class.std::optional"*, %"class.std::optional"** %3, align 8, !dbg !2408
  %24 = call nonnull align 4 dereferenceable(4) i32* @"??D?$optional@H@std@@QEGBAAEBHXZ"(%"class.std::optional"* %23), !dbg !2409
  %25 = load i32, i32* %24, align 4, !dbg !2409
  %26 = icmp eq i32 %22, %25, !dbg !2410
  br label %27, !dbg !2405

27:                                               ; preds = %19, %16
  %28 = phi i1 [ true, %16 ], [ %26, %19 ]
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i1 [ false, %2 ], [ %28, %27 ], !dbg !2411
  ret i1 %30, !dbg !2412
}

; Function Attrs: nounwind
declare void @llvm.debugtrap() #5

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?expectedTest@expression@test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2413 {
  %1 = alloca %"class.tl::expected", align 4
  %2 = alloca %"class.tl::expected", align 4
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %class.ClassWithDestructor, align 4
  %9 = alloca %class.ClassWithDestructor, align 4
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string", align 8
  %14 = alloca %"class.std::basic_string", align 8
  call void @llvm.dbg.declare(metadata %"class.tl::expected"* %1, metadata !2414, metadata !DIExpression()), !dbg !2697
  %15 = call %"class.tl::expected"* @"??0?$expected@HH@tl@@QEAA@XZ"(%"class.tl::expected"* %1), !dbg !2697
  call void @llvm.dbg.declare(metadata %"class.tl::expected"* %2, metadata !2698, metadata !DIExpression()), !dbg !2699
  %16 = call %"class.tl::expected"* @"??0?$expected@HH@tl@@QEAA@XZ"(%"class.tl::expected"* %2), !dbg !2699
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %3, metadata !2700, metadata !DIExpression()), !dbg !2701
  %17 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %3, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @"??_C@_0BHI@LCBKPAJ@a?$DN5?$DLFAIL_TEST_IF_FALSE?$CIa?4value?$CI?$CJ@", i64 0, i64 0)), !dbg !2702
  invoke void @llvm.eha.scope.begin()
          to label %18 unwind label %108, !dbg !2703

18:                                               ; preds = %0
  %19 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %20 unwind label %108, !dbg !2704

20:                                               ; preds = %18
  invoke void @llvm.eha.scope.begin()
          to label %21 unwind label %44, !dbg !2704

21:                                               ; preds = %20
  %22 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %7, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %23 unwind label %44, !dbg !2704

23:                                               ; preds = %21
  invoke void @llvm.eha.scope.begin()
          to label %24 unwind label %42, !dbg !2704

24:                                               ; preds = %23
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %5, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %7, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6)
          to label %25 unwind label %42, !dbg !2704

25:                                               ; preds = %24
  invoke void @llvm.eha.scope.begin()
          to label %26 unwind label %40, !dbg !2704

26:                                               ; preds = %25
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %4, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %27 unwind label %40, !dbg !2704

27:                                               ; preds = %26
  invoke void @llvm.eha.scope.begin()
          to label %28 unwind label %38, !dbg !2704

28:                                               ; preds = %27
  %29 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4) #5, !dbg !2704
  invoke void @llvm.eha.scope.end()
          to label %30 unwind label %38, !dbg !2704

30:                                               ; preds = %28
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5, !dbg !2704
  invoke void @llvm.eha.scope.end()
          to label %31 unwind label %40, !dbg !2704

31:                                               ; preds = %30
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5, !dbg !2704
  invoke void @llvm.eha.scope.end()
          to label %32 unwind label %42, !dbg !2704

32:                                               ; preds = %31
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5, !dbg !2704
  invoke void @llvm.eha.scope.end()
          to label %33 unwind label %44, !dbg !2704

33:                                               ; preds = %32
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5, !dbg !2704
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2704
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !2704
  br label %34, !dbg !2704

34:                                               ; preds = %37, %33
  %35 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2704
  %36 = trunc i8 %35 to i1, !dbg !2704
  br i1 %36, label %37, label %46, !dbg !2704

37:                                               ; preds = %34
  br label %34, !dbg !2704, !llvm.loop !2705

38:                                               ; preds = %28, %27
  %39 = cleanuppad within none [], !dbg !2704
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5 [ "funclet"(token %39) ], !dbg !2704
  cleanupret from %39 unwind label %40, !dbg !2704

40:                                               ; preds = %30, %38, %26, %25
  %41 = cleanuppad within none [], !dbg !2704
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5 [ "funclet"(token %41) ], !dbg !2704
  cleanupret from %41 unwind label %42, !dbg !2704

42:                                               ; preds = %31, %40, %24, %23
  %43 = cleanuppad within none [], !dbg !2704
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5 [ "funclet"(token %43) ], !dbg !2704
  cleanupret from %43 unwind label %44, !dbg !2704

44:                                               ; preds = %32, %42, %21, %20
  %45 = cleanuppad within none [], !dbg !2704
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5 [ "funclet"(token %45) ], !dbg !2704
  cleanupret from %45 unwind label %108, !dbg !2704

46:                                               ; preds = %34
  %47 = invoke nonnull align 4 dereferenceable(4) i32* @"?error@?$expected@HH@tl@@QEGAAAEAHXZ"(%"class.tl::expected"* %2)
          to label %48 unwind label %108, !dbg !2706

48:                                               ; preds = %46
  %49 = load i32, i32* %47, align 4, !dbg !2706
  %50 = icmp eq i32 %49, 2, !dbg !2706
  br i1 %50, label %52, label %51, !dbg !2708

51:                                               ; preds = %48
  call void @llvm.debugtrap(), !dbg !2709
  br label %52, !dbg !2709

52:                                               ; preds = %51, %48
  call void @llvm.dbg.declare(metadata %class.ClassWithDestructor* %8, metadata !2711, metadata !DIExpression()), !dbg !2712
  %53 = invoke %class.ClassWithDestructor* @"??0ClassWithDestructor@@QEAA@H@Z"(%class.ClassWithDestructor* %8, i32 1)
          to label %54 unwind label %108, !dbg !2712

54:                                               ; preds = %52
  invoke void @llvm.eha.scope.begin()
          to label %55 unwind label %106, !dbg !2713

55:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata %class.ClassWithDestructor* %9, metadata !2714, metadata !DIExpression()), !dbg !2715
  %56 = invoke %class.ClassWithDestructor* @"??0ClassWithDestructor@@QEAA@AEBV0@@Z"(%class.ClassWithDestructor* %9, %class.ClassWithDestructor* nonnull align 4 dereferenceable(4) %8)
          to label %57 unwind label %106, !dbg !2716

57:                                               ; preds = %55
  invoke void @llvm.eha.scope.begin()
          to label %58 unwind label %104, !dbg !2717

58:                                               ; preds = %57
  %59 = invoke nonnull align 4 dereferenceable(4) %class.ClassWithDestructor* @"??4ClassWithDestructor@@QEAAAEAV0@AEBV0@@Z"(%class.ClassWithDestructor* %8, %class.ClassWithDestructor* nonnull align 4 dereferenceable(4) %8)
          to label %60 unwind label %104, !dbg !2718

60:                                               ; preds = %58
  %61 = invoke zeroext i1 @"??8ClassWithDestructor@@QEBA_NAEBV0@@Z"(%class.ClassWithDestructor* %8, %class.ClassWithDestructor* nonnull align 4 dereferenceable(4) %8)
          to label %62 unwind label %104, !dbg !2719

62:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %10, metadata !2720, metadata !DIExpression()), !dbg !2721
  %63 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %10, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @"??_C@_0GI@LCFJNAAH@std?3?3expected?$DMClassWithDestructo@", i64 0, i64 0))
          to label %64 unwind label %104, !dbg !2722

64:                                               ; preds = %62
  invoke void @llvm.eha.scope.begin()
          to label %65 unwind label %102, !dbg !2723

65:                                               ; preds = %64
  %66 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %13, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %10)
          to label %67 unwind label %102, !dbg !2724

67:                                               ; preds = %65
  invoke void @llvm.eha.scope.begin()
          to label %68 unwind label %91, !dbg !2724

68:                                               ; preds = %67
  %69 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %14, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %70 unwind label %91, !dbg !2724

70:                                               ; preds = %68
  invoke void @llvm.eha.scope.begin()
          to label %71 unwind label %89, !dbg !2724

71:                                               ; preds = %70
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %12, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %14, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %13)
          to label %72 unwind label %89, !dbg !2724

72:                                               ; preds = %71
  invoke void @llvm.eha.scope.begin()
          to label %73 unwind label %87, !dbg !2724

73:                                               ; preds = %72
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %11, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %74 unwind label %87, !dbg !2724

74:                                               ; preds = %73
  invoke void @llvm.eha.scope.begin()
          to label %75 unwind label %85, !dbg !2724

75:                                               ; preds = %74
  %76 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %11) #5, !dbg !2724
  invoke void @llvm.eha.scope.end()
          to label %77 unwind label %85, !dbg !2724

77:                                               ; preds = %75
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5, !dbg !2724
  invoke void @llvm.eha.scope.end()
          to label %78 unwind label %87, !dbg !2724

78:                                               ; preds = %77
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5, !dbg !2724
  invoke void @llvm.eha.scope.end()
          to label %79 unwind label %89, !dbg !2724

79:                                               ; preds = %78
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %14) #5, !dbg !2724
  invoke void @llvm.eha.scope.end()
          to label %80 unwind label %91, !dbg !2724

80:                                               ; preds = %79
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5, !dbg !2724
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2724
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !2724
  br label %81, !dbg !2724

81:                                               ; preds = %84, %80
  %82 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2724
  %83 = trunc i8 %82 to i1, !dbg !2724
  br i1 %83, label %84, label %93, !dbg !2724

84:                                               ; preds = %81
  br label %81, !dbg !2724, !llvm.loop !2725

85:                                               ; preds = %75, %74
  %86 = cleanuppad within none [], !dbg !2724
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5 [ "funclet"(token %86) ], !dbg !2724
  cleanupret from %86 unwind label %87, !dbg !2724

87:                                               ; preds = %77, %85, %73, %72
  %88 = cleanuppad within none [], !dbg !2724
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5 [ "funclet"(token %88) ], !dbg !2724
  cleanupret from %88 unwind label %89, !dbg !2724

89:                                               ; preds = %78, %87, %71, %70
  %90 = cleanuppad within none [], !dbg !2724
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %14) #5 [ "funclet"(token %90) ], !dbg !2724
  cleanupret from %90 unwind label %91, !dbg !2724

91:                                               ; preds = %79, %89, %68, %67
  %92 = cleanuppad within none [], !dbg !2724
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5 [ "funclet"(token %92) ], !dbg !2724
  cleanupret from %92 unwind label %102, !dbg !2724

93:                                               ; preds = %81
  %94 = load i32, i32* @"?g_counter@expression@test@@3HA", align 4, !dbg !2726
  %95 = icmp ne i32 %94, 0, !dbg !2726
  br i1 %95, label %97, label %96, !dbg !2728

96:                                               ; preds = %93
  call void @llvm.debugtrap(), !dbg !2729
  br label %97, !dbg !2729

97:                                               ; preds = %96, %93
  invoke void @llvm.eha.scope.end()
          to label %98 unwind label %102, !dbg !2731

98:                                               ; preds = %97
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5, !dbg !2731
  invoke void @llvm.eha.scope.end()
          to label %99 unwind label %104, !dbg !2731

99:                                               ; preds = %98
  call void @"??1ClassWithDestructor@@QEAA@XZ"(%class.ClassWithDestructor* %9) #5, !dbg !2731
  invoke void @llvm.eha.scope.end()
          to label %100 unwind label %106, !dbg !2731

100:                                              ; preds = %99
  call void @"??1ClassWithDestructor@@QEAA@XZ"(%class.ClassWithDestructor* %8) #5, !dbg !2731
  invoke void @llvm.eha.scope.end()
          to label %101 unwind label %108, !dbg !2731

101:                                              ; preds = %100
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5, !dbg !2731
  ret void, !dbg !2731

102:                                              ; preds = %97, %91, %65, %64
  %103 = cleanuppad within none [], !dbg !2731
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5 [ "funclet"(token %103) ], !dbg !2731
  cleanupret from %103 unwind label %104, !dbg !2731

104:                                              ; preds = %98, %102, %62, %60, %58, %57
  %105 = cleanuppad within none [], !dbg !2731
  call void @"??1ClassWithDestructor@@QEAA@XZ"(%class.ClassWithDestructor* %9) #5 [ "funclet"(token %105) ], !dbg !2731
  cleanupret from %105 unwind label %106, !dbg !2731

106:                                              ; preds = %99, %104, %55, %54
  %107 = cleanuppad within none [], !dbg !2731
  call void @"??1ClassWithDestructor@@QEAA@XZ"(%class.ClassWithDestructor* %8) #5 [ "funclet"(token %107) ], !dbg !2731
  cleanupret from %107 unwind label %108, !dbg !2731

108:                                              ; preds = %100, %106, %52, %46, %44, %18, %0
  %109 = cleanuppad within none [], !dbg !2731
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5 [ "funclet"(token %109) ], !dbg !2731
  cleanupret from %109 unwind to caller, !dbg !2731
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.tl::expected"* @"??0?$expected@HH@tl@@QEAA@XZ"(%"class.tl::expected"* returned %0) unnamed_addr #0 comdat align 2 !dbg !2732 {
  %2 = alloca %"class.tl::expected"*, align 8
  store %"class.tl::expected"* %0, %"class.tl::expected"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.tl::expected"** %2, metadata !2733, metadata !DIExpression()), !dbg !2735
  %3 = load %"class.tl::expected"*, %"class.tl::expected"** %2, align 8
  %4 = bitcast %"class.tl::expected"* %3 to %"struct.tl::detail::expected_move_assign_base"*, !dbg !2736
  %5 = call %"struct.tl::detail::expected_move_assign_base"* @"??0?$expected_move_assign_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_move_assign_base"* %4), !dbg !2737
  %6 = bitcast %"class.tl::expected"* %3 to i8*, !dbg !2736
  %7 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !2736
  %8 = bitcast i8* %7 to %"struct.tl::detail::expected_delete_ctor_base"*, !dbg !2736
  %9 = bitcast %"class.tl::expected"* %3 to i8*, !dbg !2736
  %10 = getelementptr inbounds i8, i8* %9, i64 9, !dbg !2736
  %11 = bitcast i8* %10 to %"struct.tl::detail::expected_delete_assign_base"*, !dbg !2736
  %12 = bitcast %"class.tl::expected"* %3 to i8*, !dbg !2736
  %13 = getelementptr inbounds i8, i8* %12, i64 10, !dbg !2736
  %14 = bitcast i8* %13 to %"struct.tl::detail::expected_default_ctor_base"*, !dbg !2736
  ret %"class.tl::expected"* %3, !dbg !2736
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @"?error@?$expected@HH@tl@@QEGAAAEAHXZ"(%"class.tl::expected"* %0) #0 comdat align 2 !dbg !2738 {
  %2 = alloca %"class.tl::expected"*, align 8
  store %"class.tl::expected"* %0, %"class.tl::expected"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.tl::expected"** %2, metadata !2739, metadata !DIExpression()), !dbg !2740
  %3 = load %"class.tl::expected"*, %"class.tl::expected"** %2, align 8
  %4 = call nonnull align 4 dereferenceable(4) %"class.tl::unexpected"* @"?err@?$expected@HH@tl@@AEAAAEAV?$unexpected@H@2@XZ"(%"class.tl::expected"* %3), !dbg !2741
  %5 = call nonnull align 4 dereferenceable(4) i32* @"?value@?$unexpected@H@tl@@QEGAAAEAHXZ"(%"class.tl::unexpected"* %4), !dbg !2742
  ret i32* %5, !dbg !2743
}

declare dso_local %class.ClassWithDestructor* @"??0ClassWithDestructor@@QEAA@H@Z"(%class.ClassWithDestructor* returned, i32) unnamed_addr #6

declare dso_local %class.ClassWithDestructor* @"??0ClassWithDestructor@@QEAA@AEBV0@@Z"(%class.ClassWithDestructor* returned, %class.ClassWithDestructor* nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare dso_local nonnull align 4 dereferenceable(4) %class.ClassWithDestructor* @"??4ClassWithDestructor@@QEAAAEAV0@AEBV0@@Z"(%class.ClassWithDestructor*, %class.ClassWithDestructor* nonnull align 4 dereferenceable(4)) #6

declare dso_local zeroext i1 @"??8ClassWithDestructor@@QEBA_NAEBV0@@Z"(%class.ClassWithDestructor*, %class.ClassWithDestructor* nonnull align 4 dereferenceable(4)) #6

; Function Attrs: nounwind
declare dso_local void @"??1ClassWithDestructor@@QEAA@XZ"(%class.ClassWithDestructor*) unnamed_addr #7

; Function Attrs: noinline optnone uwtable
define dso_local void @"?returnShared@expression@test@@YA?AV?$shared_ptr@H@std@@XZ"(%"class.std::shared_ptr"* noalias sret align 8 %0) #0 !dbg !2744 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast %"class.std::shared_ptr"* %0 to i8*
  store i8* %4, i8** %2, align 8
  store i32 44, i32* %3, align 4, !dbg !2868
  call void @"??$make_shared@HH@std@@YA?AV?$shared_ptr@H@0@$$QEAH@Z"(%"class.std::shared_ptr"* sret align 8 %0, i32* nonnull align 4 dereferenceable(4) %3), !dbg !2869
  ret void, !dbg !2870
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"??$make_shared@HH@std@@YA?AV?$shared_ptr@H@0@$$QEAH@Z"(%"class.std::shared_ptr"* noalias sret align 8 %0, i32* nonnull align 4 dereferenceable(4) %1) #0 comdat personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2871 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"class.std::_Ref_count_obj2"*, align 8
  %6 = alloca i1, align 1
  %7 = bitcast %"class.std::shared_ptr"* %0 to i8*
  store i8* %7, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_obj2"** %5, metadata !2880, metadata !DIExpression()), !dbg !2899
  %8 = call noalias nonnull i8* @"??2@YAPEAX_K@Z"(i64 24) #16, !dbg !2900, !heapallocsite !2883
  %9 = bitcast i8* %8 to %"class.std::_Ref_count_obj2"*, !dbg !2900
  %10 = load i32*, i32** %4, align 8, !dbg !2901
  %11 = call nonnull align 4 dereferenceable(4) i32* @"??$forward@H@std@@YA$$QEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %10) #5, !dbg !2902
  %12 = invoke %"class.std::_Ref_count_obj2"* @"??$?0H@?$_Ref_count_obj2@H@std@@QEAA@$$QEAH@Z"(%"class.std::_Ref_count_obj2"* %9, i32* nonnull align 4 dereferenceable(4) %11)
          to label %13 unwind label %23, !dbg !2903

13:                                               ; preds = %2
  store %"class.std::_Ref_count_obj2"* %9, %"class.std::_Ref_count_obj2"** %5, align 8, !dbg !2899
  store i1 false, i1* %6, align 1, !dbg !2904
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2905, metadata !DIExpression(DW_OP_deref)), !dbg !2906
  %14 = call %"class.std::shared_ptr"* @"??0?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %0) #5, !dbg !2906
  %15 = load %"class.std::_Ref_count_obj2"*, %"class.std::_Ref_count_obj2"** %5, align 8, !dbg !2907
  %16 = bitcast %"class.std::_Ref_count_obj2"* %15 to %"class.std::_Ref_count_base"*, !dbg !2907
  %17 = load %"class.std::_Ref_count_obj2"*, %"class.std::_Ref_count_obj2"** %5, align 8, !dbg !2908
  %18 = getelementptr inbounds %"class.std::_Ref_count_obj2", %"class.std::_Ref_count_obj2"* %17, i32 0, i32 1, !dbg !2909
  %19 = bitcast %union.anon.9* %18 to %"struct.std::_Wrap"*, !dbg !2909
  %20 = getelementptr inbounds %"struct.std::_Wrap", %"struct.std::_Wrap"* %19, i32 0, i32 0, !dbg !2910
  %21 = call i32* @"??$addressof@H@std@@YAPEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %20) #5, !dbg !2911
  call void @"??$_Set_ptr_rep_and_enable_shared@H@?$shared_ptr@H@std@@AEAAXQEAHQEAV_Ref_count_base@1@@Z"(%"class.std::shared_ptr"* %0, i32* %21, %"class.std::_Ref_count_base"* %16) #5, !dbg !2912
  store i1 true, i1* %6, align 1, !dbg !2913
  %22 = load i1, i1* %6, align 1, !dbg !2914
  br i1 %22, label %26, label %25, !dbg !2914

23:                                               ; preds = %2
  %24 = cleanuppad within none [], !dbg !2900
  call void @"??3@YAXPEAX@Z"(i8* %8) #17 [ "funclet"(token %24) ], !dbg !2900
  cleanupret from %24 unwind to caller, !dbg !2900

25:                                               ; preds = %13
  call void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %0) #5, !dbg !2914
  br label %26, !dbg !2914

26:                                               ; preds = %25, %13
  ret void, !dbg !2914
}

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?sharedMemoryTest@expression@test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !2915 {
  %1 = alloca %"class.std::shared_ptr", align 8
  %2 = alloca %"class.std::basic_string", align 8
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::shared_ptr", align 8
  %8 = alloca %"class.std::shared_ptr", align 8
  %9 = alloca i8, align 1
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string", align 8
  %14 = alloca %"class.std::basic_string", align 8
  %15 = alloca i32, align 4
  call void @"?returnShared@expression@test@@YA?AV?$shared_ptr@H@std@@XZ"(%"class.std::shared_ptr"* sret align 8 %1), !dbg !2916
  invoke void @llvm.eha.scope.begin()
          to label %16 unwind label %39, !dbg !2916

16:                                               ; preds = %0
  invoke void @llvm.eha.scope.end()
          to label %17 unwind label %39, !dbg !2916

17:                                               ; preds = %16
  call void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %1) #5, !dbg !2916
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %2, metadata !2917, metadata !DIExpression()), !dbg !2918
  %18 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %2, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @"??_C@_0JB@GCMHBBE@std?3?3shared_ptr?$DMClassWithDestruc@", i64 0, i64 0)), !dbg !2919
  invoke void @llvm.eha.scope.begin()
          to label %19 unwind label %110, !dbg !2920

19:                                               ; preds = %17
  %20 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %5, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %2)
          to label %21 unwind label %110, !dbg !2921

21:                                               ; preds = %19
  invoke void @llvm.eha.scope.begin()
          to label %22 unwind label %47, !dbg !2921

22:                                               ; preds = %21
  %23 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %6, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %24 unwind label %47, !dbg !2921

24:                                               ; preds = %22
  invoke void @llvm.eha.scope.begin()
          to label %25 unwind label %45, !dbg !2921

25:                                               ; preds = %24
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %4, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %5)
          to label %26 unwind label %45, !dbg !2921

26:                                               ; preds = %25
  invoke void @llvm.eha.scope.begin()
          to label %27 unwind label %43, !dbg !2921

27:                                               ; preds = %26
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %3, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %28 unwind label %43, !dbg !2921

28:                                               ; preds = %27
  invoke void @llvm.eha.scope.begin()
          to label %29 unwind label %41, !dbg !2921

29:                                               ; preds = %28
  %30 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3) #5, !dbg !2921
  invoke void @llvm.eha.scope.end()
          to label %31 unwind label %41, !dbg !2921

31:                                               ; preds = %29
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5, !dbg !2921
  invoke void @llvm.eha.scope.end()
          to label %32 unwind label %43, !dbg !2921

32:                                               ; preds = %31
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5, !dbg !2921
  invoke void @llvm.eha.scope.end()
          to label %33 unwind label %45, !dbg !2921

33:                                               ; preds = %32
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5, !dbg !2921
  invoke void @llvm.eha.scope.end()
          to label %34 unwind label %47, !dbg !2921

34:                                               ; preds = %33
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5, !dbg !2921
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2921
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !2921
  br label %35, !dbg !2921

35:                                               ; preds = %38, %34
  %36 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2921
  %37 = trunc i8 %36 to i1, !dbg !2921
  br i1 %37, label %38, label %49, !dbg !2921

38:                                               ; preds = %35
  br label %35, !dbg !2921, !llvm.loop !2922

39:                                               ; preds = %16, %0
  %40 = cleanuppad within none [], !dbg !2916
  call void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %1) #5 [ "funclet"(token %40) ], !dbg !2916
  cleanupret from %40 unwind to caller, !dbg !2916

41:                                               ; preds = %29, %28
  %42 = cleanuppad within none [], !dbg !2921
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5 [ "funclet"(token %42) ], !dbg !2921
  cleanupret from %42 unwind label %43, !dbg !2921

43:                                               ; preds = %31, %41, %27, %26
  %44 = cleanuppad within none [], !dbg !2921
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5 [ "funclet"(token %44) ], !dbg !2921
  cleanupret from %44 unwind label %45, !dbg !2921

45:                                               ; preds = %32, %43, %25, %24
  %46 = cleanuppad within none [], !dbg !2921
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5 [ "funclet"(token %46) ], !dbg !2921
  cleanupret from %46 unwind label %47, !dbg !2921

47:                                               ; preds = %33, %45, %22, %21
  %48 = cleanuppad within none [], !dbg !2921
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5 [ "funclet"(token %48) ], !dbg !2921
  cleanupret from %48 unwind label %110, !dbg !2921

49:                                               ; preds = %35
  %50 = load i32, i32* @"?g_counter@expression@test@@3HA", align 4, !dbg !2923
  %51 = icmp ne i32 %50, 0, !dbg !2923
  br i1 %51, label %53, label %52, !dbg !2925

52:                                               ; preds = %49
  call void @llvm.debugtrap(), !dbg !2926
  br label %53, !dbg !2926

53:                                               ; preds = %52, %49
  %54 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02DPKJAMEF@?$CFd?$AA@", i64 0, i64 0), i32 5)
          to label %55 unwind label %110, !dbg !2928

55:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"* %7, metadata !2929, metadata !DIExpression()), !dbg !2930
  %56 = call %"class.std::shared_ptr"* @"??0?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %7) #5, !dbg !2930
  invoke void @llvm.eha.scope.begin()
          to label %57 unwind label %108, !dbg !2931

57:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"* %8, metadata !2932, metadata !DIExpression()), !dbg !2934
  %58 = call %"class.std::shared_ptr"* @"??0?$shared_ptr@H@std@@QEAA@AEBV01@@Z"(%"class.std::shared_ptr"* %8, %"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %7) #5, !dbg !2935
  invoke void @llvm.eha.scope.begin()
          to label %59 unwind label %85, !dbg !2936

59:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2937, metadata !DIExpression()), !dbg !2938
  %60 = call zeroext i1 @"??$?8HH@std@@YA_NAEBV?$shared_ptr@H@0@0@Z"(%"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %8, %"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %8) #5, !dbg !2939
  %61 = zext i1 %60 to i8, !dbg !2938
  store i8 %61, i8* %9, align 1, !dbg !2938
  invoke void @llvm.eha.scope.end()
          to label %62 unwind label %85, !dbg !2940

62:                                               ; preds = %59
  call void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %8) #5, !dbg !2940
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %10, metadata !2941, metadata !DIExpression()), !dbg !2942
  %63 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %10, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @"??_C@_0BCH@HHLLNHGI@a?4reset?$CI?$CJ?$DLauto?5f?5?$DN?5a?$DLFAIL_TEST_I@", i64 0, i64 0))
          to label %64 unwind label %108, !dbg !2943

64:                                               ; preds = %62
  invoke void @llvm.eha.scope.begin()
          to label %65 unwind label %106, !dbg !2944

65:                                               ; preds = %64
  %66 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %13, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %10)
          to label %67 unwind label %106, !dbg !2945

67:                                               ; preds = %65
  invoke void @llvm.eha.scope.begin()
          to label %68 unwind label %93, !dbg !2945

68:                                               ; preds = %67
  %69 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %14, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %70 unwind label %93, !dbg !2945

70:                                               ; preds = %68
  invoke void @llvm.eha.scope.begin()
          to label %71 unwind label %91, !dbg !2945

71:                                               ; preds = %70
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %12, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %14, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %13)
          to label %72 unwind label %91, !dbg !2945

72:                                               ; preds = %71
  invoke void @llvm.eha.scope.begin()
          to label %73 unwind label %89, !dbg !2945

73:                                               ; preds = %72
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %11, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %74 unwind label %89, !dbg !2945

74:                                               ; preds = %73
  invoke void @llvm.eha.scope.begin()
          to label %75 unwind label %87, !dbg !2945

75:                                               ; preds = %74
  %76 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %11) #5, !dbg !2945
  invoke void @llvm.eha.scope.end()
          to label %77 unwind label %87, !dbg !2945

77:                                               ; preds = %75
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5, !dbg !2945
  invoke void @llvm.eha.scope.end()
          to label %78 unwind label %89, !dbg !2945

78:                                               ; preds = %77
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5, !dbg !2945
  invoke void @llvm.eha.scope.end()
          to label %79 unwind label %91, !dbg !2945

79:                                               ; preds = %78
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %14) #5, !dbg !2945
  invoke void @llvm.eha.scope.end()
          to label %80 unwind label %93, !dbg !2945

80:                                               ; preds = %79
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5, !dbg !2945
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2945
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !2945
  br label %81, !dbg !2945

81:                                               ; preds = %84, %80
  %82 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !2945
  %83 = trunc i8 %82 to i1, !dbg !2945
  br i1 %83, label %84, label %95, !dbg !2945

84:                                               ; preds = %81
  br label %81, !dbg !2945, !llvm.loop !2946

85:                                               ; preds = %59, %57
  %86 = cleanuppad within none [], !dbg !2940
  call void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %8) #5 [ "funclet"(token %86) ], !dbg !2940
  cleanupret from %86 unwind label %108, !dbg !2940

87:                                               ; preds = %75, %74
  %88 = cleanuppad within none [], !dbg !2945
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5 [ "funclet"(token %88) ], !dbg !2945
  cleanupret from %88 unwind label %89, !dbg !2945

89:                                               ; preds = %77, %87, %73, %72
  %90 = cleanuppad within none [], !dbg !2945
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5 [ "funclet"(token %90) ], !dbg !2945
  cleanupret from %90 unwind label %91, !dbg !2945

91:                                               ; preds = %78, %89, %71, %70
  %92 = cleanuppad within none [], !dbg !2945
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %14) #5 [ "funclet"(token %92) ], !dbg !2945
  cleanupret from %92 unwind label %93, !dbg !2945

93:                                               ; preds = %79, %91, %68, %67
  %94 = cleanuppad within none [], !dbg !2945
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5 [ "funclet"(token %94) ], !dbg !2945
  cleanupret from %94 unwind label %106, !dbg !2945

95:                                               ; preds = %81
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2947, metadata !DIExpression()), !dbg !2948
  %96 = bitcast %"class.std::shared_ptr"* %7 to %"class.std::_Ptr_base"*, !dbg !2949
  %97 = call i32 @"?use_count@?$_Ptr_base@H@std@@QEBAJXZ"(%"class.std::_Ptr_base"* %96) #5, !dbg !2950
  store i32 %97, i32* %15, align 4, !dbg !2948
  %98 = call nonnull align 4 dereferenceable(4) i32* @"??$?DH$0A@@?$shared_ptr@H@std@@QEBAAEAHXZ"(%"class.std::shared_ptr"* %7) #5, !dbg !2951
  %99 = load i32, i32* %98, align 4, !dbg !2951
  %100 = icmp eq i32 %99, 5, !dbg !2951
  br i1 %100, label %102, label %101, !dbg !2953

101:                                              ; preds = %95
  call void @llvm.debugtrap(), !dbg !2954
  br label %102, !dbg !2954

102:                                              ; preds = %101, %95
  invoke void @llvm.eha.scope.end()
          to label %103 unwind label %106, !dbg !2956

103:                                              ; preds = %102
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5, !dbg !2956
  invoke void @llvm.eha.scope.end()
          to label %104 unwind label %108, !dbg !2956

104:                                              ; preds = %103
  call void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %7) #5, !dbg !2956
  invoke void @llvm.eha.scope.end()
          to label %105 unwind label %110, !dbg !2956

105:                                              ; preds = %104
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %2) #5, !dbg !2956
  ret void, !dbg !2956

106:                                              ; preds = %102, %93, %65, %64
  %107 = cleanuppad within none [], !dbg !2956
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5 [ "funclet"(token %107) ], !dbg !2956
  cleanupret from %107 unwind label %108, !dbg !2956

108:                                              ; preds = %103, %106, %62, %85, %55
  %109 = cleanuppad within none [], !dbg !2956
  call void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %7) #5 [ "funclet"(token %109) ], !dbg !2956
  cleanupret from %109 unwind label %110, !dbg !2956

110:                                              ; preds = %104, %108, %53, %47, %19, %17
  %111 = cleanuppad within none [], !dbg !2956
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %2) #5 [ "funclet"(token %111) ], !dbg !2956
  cleanupret from %111 unwind to caller, !dbg !2956
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* %0) unnamed_addr #1 comdat align 2 !dbg !2957 {
  %2 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %2, metadata !2958, metadata !DIExpression()), !dbg !2960
  %3 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr"* %3 to %"class.std::_Ptr_base"*, !dbg !2961
  call void @"?_Decref@?$_Ptr_base@H@std@@IEAAXXZ"(%"class.std::_Ptr_base"* %4) #5, !dbg !2961
  ret void, !dbg !2963
}

; Function Attrs: nobuiltin noinline optnone uwtable
define linkonce_odr dso_local i32 @printf(i8* %0, ...) #8 comdat !dbg !1360 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__vcrt_assert_va_start_is_not_reference, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2966, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2968, metadata !DIExpression()), !dbg !2969
  %6 = bitcast i8** %4 to i8*, !dbg !2970
  call void @llvm.va_start(i8* %6), !dbg !2970
  %7 = load i8*, i8** %4, align 8, !dbg !2971
  %8 = load i8*, i8** %2, align 8, !dbg !2972
  %9 = call %struct._iobuf* @__acrt_iob_func(i32 1), !dbg !2973
  %10 = call i32 @_vfprintf_l(%struct._iobuf* %9, i8* %8, %struct.__crt_locale_pointers* null, i8* %7), !dbg !2974
  store i32 %10, i32* %3, align 4, !dbg !2975
  store i8* null, i8** %4, align 8, !dbg !2976
  %11 = load i32, i32* %3, align 4, !dbg !2977
  ret i32 %11, !dbg !2978
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::shared_ptr"* @"??0?$shared_ptr@H@std@@QEAA@XZ"(%"class.std::shared_ptr"* returned %0) unnamed_addr #1 comdat align 2 !dbg !2979 {
  %2 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %2, metadata !2980, metadata !DIExpression()), !dbg !2981
  %3 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr"* %3 to %"class.std::_Ptr_base"*, !dbg !2982
  %5 = call %"class.std::_Ptr_base"* @"??0?$_Ptr_base@H@std@@IEAA@XZ"(%"class.std::_Ptr_base"* %4) #5, !dbg !2983
  ret %"class.std::shared_ptr"* %3, !dbg !2982
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::shared_ptr"* @"??0?$shared_ptr@H@std@@QEAA@AEBV01@@Z"(%"class.std::shared_ptr"* returned %0, %"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !dbg !2984 {
  %3 = alloca %"class.std::shared_ptr"*, align 8
  %4 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %1, %"class.std::shared_ptr"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %3, metadata !2985, metadata !DIExpression()), !dbg !2986
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %4, metadata !2987, metadata !DIExpression()), !dbg !2988
  %5 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %4, align 8
  %6 = bitcast %"class.std::shared_ptr"* %5 to %"class.std::_Ptr_base"*, !dbg !2989
  %7 = call %"class.std::_Ptr_base"* @"??0?$_Ptr_base@H@std@@IEAA@XZ"(%"class.std::_Ptr_base"* %6) #5, !dbg !2990
  %8 = bitcast %"class.std::shared_ptr"* %5 to %"class.std::_Ptr_base"*, !dbg !2991
  %9 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %3, align 8, !dbg !2993
  call void @"??$_Copy_construct_from@H@?$_Ptr_base@H@std@@IEAAXAEBV?$shared_ptr@H@1@@Z"(%"class.std::_Ptr_base"* %8, %"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %9) #5, !dbg !2991
  ret %"class.std::shared_ptr"* %5, !dbg !2994
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??$?8HH@std@@YA_NAEBV?$shared_ptr@H@0@0@Z"(%"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %0, %"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %1) #1 comdat !dbg !2995 {
  %3 = alloca %"class.std::shared_ptr"*, align 8
  %4 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %1, %"class.std::shared_ptr"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %3, metadata !2998, metadata !DIExpression()), !dbg !2999
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %4, metadata !3000, metadata !DIExpression()), !dbg !3001
  %5 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %4, align 8, !dbg !3002
  %6 = bitcast %"class.std::shared_ptr"* %5 to %"class.std::_Ptr_base"*, !dbg !3002
  %7 = call i32* @"?get@?$_Ptr_base@H@std@@IEBAPEAHXZ"(%"class.std::_Ptr_base"* %6) #5, !dbg !3003
  %8 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %3, align 8, !dbg !3004
  %9 = bitcast %"class.std::shared_ptr"* %8 to %"class.std::_Ptr_base"*, !dbg !3004
  %10 = call i32* @"?get@?$_Ptr_base@H@std@@IEBAPEAHXZ"(%"class.std::_Ptr_base"* %9) #5, !dbg !3005
  %11 = icmp eq i32* %7, %10, !dbg !3006
  ret i1 %11, !dbg !3007
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?use_count@?$_Ptr_base@H@std@@QEBAJXZ"(%"class.std::_Ptr_base"* %0) #1 comdat align 2 !dbg !3008 {
  %2 = alloca %"class.std::_Ptr_base"*, align 8
  store %"class.std::_Ptr_base"* %0, %"class.std::_Ptr_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ptr_base"** %2, metadata !3009, metadata !DIExpression()), !dbg !3011
  %3 = load %"class.std::_Ptr_base"*, %"class.std::_Ptr_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 1, !dbg !3012
  %5 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %4, align 8, !dbg !3012
  %6 = icmp ne %"class.std::_Ref_count_base"* %5, null, !dbg !3012
  br i1 %6, label %7, label %11, !dbg !3012

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 1, !dbg !3013
  %9 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %8, align 8, !dbg !3013
  %10 = call i32 @"?_Use_count@_Ref_count_base@std@@QEBAJXZ"(%"class.std::_Ref_count_base"* %9) #5, !dbg !3014
  br label %12, !dbg !3012

11:                                               ; preds = %1
  br label %12, !dbg !3012

12:                                               ; preds = %11, %7
  %13 = phi i32 [ %10, %7 ], [ 0, %11 ], !dbg !3012
  ret i32 %13, !dbg !3015
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @"??$?DH$0A@@?$shared_ptr@H@std@@QEBAAEAHXZ"(%"class.std::shared_ptr"* %0) #1 comdat align 2 !dbg !3016 {
  %2 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %2, metadata !3020, metadata !DIExpression()), !dbg !3022
  %3 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr"* %3 to %"class.std::_Ptr_base"*, !dbg !3023
  %5 = call i32* @"?get@?$_Ptr_base@H@std@@IEBAPEAHXZ"(%"class.std::_Ptr_base"* %4) #5, !dbg !3023
  ret i32* %5, !dbg !3024
}

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?uniquePtrTest@expression@test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3025 {
  %1 = alloca %"class.std::unique_ptr.2", align 8
  %2 = alloca %"class.std::unique_ptr.2", align 8
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::unique_ptr", align 8
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string", align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr.2"* %1, metadata !3026, metadata !DIExpression()), !dbg !3112
  %14 = call %"class.std::unique_ptr.2"* @"??$?0U?$default_delete@H@std@@$0A@@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* %1) #5, !dbg !3112
  invoke void @llvm.eha.scope.begin()
          to label %15 unwind label %104, !dbg !3113

15:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr.2"* %2, metadata !3114, metadata !DIExpression()), !dbg !3115
  %16 = call %"class.std::unique_ptr.2"* @"??$?0U?$default_delete@H@std@@$0A@@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* %2) #5, !dbg !3115
  invoke void @llvm.eha.scope.begin()
          to label %17 unwind label %102, !dbg !3116

17:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %3, metadata !3117, metadata !DIExpression()), !dbg !3118
  %18 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %3, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @"??_C@_0LD@NMMKOFBP@a?4reset?$CI?$CJ?$DLstd?3?3unique_ptr?$DMint?$DO?5f@", i64 0, i64 0))
          to label %19 unwind label %102, !dbg !3119

19:                                               ; preds = %17
  invoke void @llvm.eha.scope.begin()
          to label %20 unwind label %100, !dbg !3120

20:                                               ; preds = %19
  %21 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %22 unwind label %100, !dbg !3121

22:                                               ; preds = %20
  invoke void @llvm.eha.scope.begin()
          to label %23 unwind label %46, !dbg !3121

23:                                               ; preds = %22
  %24 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %7, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %25 unwind label %46, !dbg !3121

25:                                               ; preds = %23
  invoke void @llvm.eha.scope.begin()
          to label %26 unwind label %44, !dbg !3121

26:                                               ; preds = %25
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %5, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %7, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6)
          to label %27 unwind label %44, !dbg !3121

27:                                               ; preds = %26
  invoke void @llvm.eha.scope.begin()
          to label %28 unwind label %42, !dbg !3121

28:                                               ; preds = %27
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %4, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %29 unwind label %42, !dbg !3121

29:                                               ; preds = %28
  invoke void @llvm.eha.scope.begin()
          to label %30 unwind label %40, !dbg !3121

30:                                               ; preds = %29
  %31 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4) #5, !dbg !3121
  invoke void @llvm.eha.scope.end()
          to label %32 unwind label %40, !dbg !3121

32:                                               ; preds = %30
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5, !dbg !3121
  invoke void @llvm.eha.scope.end()
          to label %33 unwind label %42, !dbg !3121

33:                                               ; preds = %32
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5, !dbg !3121
  invoke void @llvm.eha.scope.end()
          to label %34 unwind label %44, !dbg !3121

34:                                               ; preds = %33
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5, !dbg !3121
  invoke void @llvm.eha.scope.end()
          to label %35 unwind label %46, !dbg !3121

35:                                               ; preds = %34
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5, !dbg !3121
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3121
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !3121
  br label %36, !dbg !3121

36:                                               ; preds = %39, %35
  %37 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3121
  %38 = trunc i8 %37 to i1, !dbg !3121
  br i1 %38, label %39, label %48, !dbg !3121

39:                                               ; preds = %36
  br label %36, !dbg !3121, !llvm.loop !3122

40:                                               ; preds = %30, %29
  %41 = cleanuppad within none [], !dbg !3121
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5 [ "funclet"(token %41) ], !dbg !3121
  cleanupret from %41 unwind label %42, !dbg !3121

42:                                               ; preds = %32, %40, %28, %27
  %43 = cleanuppad within none [], !dbg !3121
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5 [ "funclet"(token %43) ], !dbg !3121
  cleanupret from %43 unwind label %44, !dbg !3121

44:                                               ; preds = %33, %42, %26, %25
  %45 = cleanuppad within none [], !dbg !3121
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5 [ "funclet"(token %45) ], !dbg !3121
  cleanupret from %45 unwind label %46, !dbg !3121

46:                                               ; preds = %34, %44, %23, %22
  %47 = cleanuppad within none [], !dbg !3121
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5 [ "funclet"(token %47) ], !dbg !3121
  cleanupret from %47 unwind label %100, !dbg !3121

48:                                               ; preds = %36
  %49 = call nonnull align 4 dereferenceable(4) i32* @"??D?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAAEAHXZ"(%"class.std::unique_ptr.2"* %1) #5, !dbg !3123
  %50 = load i32, i32* %49, align 4, !dbg !3123
  %51 = icmp eq i32 %50, 5, !dbg !3123
  br i1 %51, label %53, label %52, !dbg !3125

52:                                               ; preds = %48
  call void @llvm.debugtrap(), !dbg !3126
  br label %53, !dbg !3126

53:                                               ; preds = %52, %48
  invoke void @"?retFunc@@YA?AV?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@XZ"(%"class.std::unique_ptr"* sret align 8 %8)
          to label %54 unwind label %100, !dbg !3128

54:                                               ; preds = %53
  invoke void @llvm.eha.scope.begin()
          to label %55 unwind label %79, !dbg !3128

55:                                               ; preds = %54
  invoke void @llvm.eha.scope.end()
          to label %56 unwind label %79, !dbg !3128

56:                                               ; preds = %55
  call void @"??1?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr"* %8) #5, !dbg !3128
  store i32 0, i32* @"?g_counter@expression@test@@3HA", align 4, !dbg !3129
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %9, metadata !3130, metadata !DIExpression()), !dbg !3131
  %57 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %9, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @"??_C@_0PH@HEHHHG@auto?5aa?5?$DN?5ClassWithDestructor?$CI2?$CJ@", i64 0, i64 0))
          to label %58 unwind label %100, !dbg !3132

58:                                               ; preds = %56
  invoke void @llvm.eha.scope.begin()
          to label %59 unwind label %98, !dbg !3133

59:                                               ; preds = %58
  %60 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %12, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %9)
          to label %61 unwind label %98, !dbg !3134

61:                                               ; preds = %59
  invoke void @llvm.eha.scope.begin()
          to label %62 unwind label %87, !dbg !3134

62:                                               ; preds = %61
  %63 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %13, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %64 unwind label %87, !dbg !3134

64:                                               ; preds = %62
  invoke void @llvm.eha.scope.begin()
          to label %65 unwind label %85, !dbg !3134

65:                                               ; preds = %64
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %11, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %13, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %12)
          to label %66 unwind label %85, !dbg !3134

66:                                               ; preds = %65
  invoke void @llvm.eha.scope.begin()
          to label %67 unwind label %83, !dbg !3134

67:                                               ; preds = %66
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %10, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %68 unwind label %83, !dbg !3134

68:                                               ; preds = %67
  invoke void @llvm.eha.scope.begin()
          to label %69 unwind label %81, !dbg !3134

69:                                               ; preds = %68
  %70 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %10) #5, !dbg !3134
  invoke void @llvm.eha.scope.end()
          to label %71 unwind label %81, !dbg !3134

71:                                               ; preds = %69
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5, !dbg !3134
  invoke void @llvm.eha.scope.end()
          to label %72 unwind label %83, !dbg !3134

72:                                               ; preds = %71
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5, !dbg !3134
  invoke void @llvm.eha.scope.end()
          to label %73 unwind label %85, !dbg !3134

73:                                               ; preds = %72
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5, !dbg !3134
  invoke void @llvm.eha.scope.end()
          to label %74 unwind label %87, !dbg !3134

74:                                               ; preds = %73
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5, !dbg !3134
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3134
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !3134
  br label %75, !dbg !3134

75:                                               ; preds = %78, %74
  %76 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3134
  %77 = trunc i8 %76 to i1, !dbg !3134
  br i1 %77, label %78, label %89, !dbg !3134

78:                                               ; preds = %75
  br label %75, !dbg !3134, !llvm.loop !3135

79:                                               ; preds = %55, %54
  %80 = cleanuppad within none [], !dbg !3128
  call void @"??1?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr"* %8) #5 [ "funclet"(token %80) ], !dbg !3128
  cleanupret from %80 unwind label %100, !dbg !3128

81:                                               ; preds = %69, %68
  %82 = cleanuppad within none [], !dbg !3134
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %10) #5 [ "funclet"(token %82) ], !dbg !3134
  cleanupret from %82 unwind label %83, !dbg !3134

83:                                               ; preds = %71, %81, %67, %66
  %84 = cleanuppad within none [], !dbg !3134
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %11) #5 [ "funclet"(token %84) ], !dbg !3134
  cleanupret from %84 unwind label %85, !dbg !3134

85:                                               ; preds = %72, %83, %65, %64
  %86 = cleanuppad within none [], !dbg !3134
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %13) #5 [ "funclet"(token %86) ], !dbg !3134
  cleanupret from %86 unwind label %87, !dbg !3134

87:                                               ; preds = %73, %85, %62, %61
  %88 = cleanuppad within none [], !dbg !3134
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %12) #5 [ "funclet"(token %88) ], !dbg !3134
  cleanupret from %88 unwind label %98, !dbg !3134

89:                                               ; preds = %75
  %90 = load i32, i32* @"?g_counter@expression@test@@3HA", align 4, !dbg !3136
  %91 = icmp ne i32 %90, 0, !dbg !3136
  br i1 %91, label %93, label %92, !dbg !3138

92:                                               ; preds = %89
  call void @llvm.debugtrap(), !dbg !3139
  br label %93, !dbg !3139

93:                                               ; preds = %92, %89
  invoke void @llvm.eha.scope.end()
          to label %94 unwind label %98, !dbg !3141

94:                                               ; preds = %93
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %9) #5, !dbg !3141
  invoke void @llvm.eha.scope.end()
          to label %95 unwind label %100, !dbg !3141

95:                                               ; preds = %94
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5, !dbg !3141
  invoke void @llvm.eha.scope.end()
          to label %96 unwind label %102, !dbg !3141

96:                                               ; preds = %95
  call void @"??1?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* %2) #5, !dbg !3141
  invoke void @llvm.eha.scope.end()
          to label %97 unwind label %104, !dbg !3141

97:                                               ; preds = %96
  call void @"??1?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* %1) #5, !dbg !3141
  ret void, !dbg !3141

98:                                               ; preds = %93, %87, %59, %58
  %99 = cleanuppad within none [], !dbg !3141
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %9) #5 [ "funclet"(token %99) ], !dbg !3141
  cleanupret from %99 unwind label %100, !dbg !3141

100:                                              ; preds = %94, %98, %56, %79, %53, %46, %20, %19
  %101 = cleanuppad within none [], !dbg !3141
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5 [ "funclet"(token %101) ], !dbg !3141
  cleanupret from %101 unwind label %102, !dbg !3141

102:                                              ; preds = %95, %100, %17, %15
  %103 = cleanuppad within none [], !dbg !3141
  call void @"??1?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* %2) #5 [ "funclet"(token %103) ], !dbg !3141
  cleanupret from %103 unwind label %104, !dbg !3141

104:                                              ; preds = %96, %102, %0
  %105 = cleanuppad within none [], !dbg !3141
  call void @"??1?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* %1) #5 [ "funclet"(token %105) ], !dbg !3141
  cleanupret from %105 unwind to caller, !dbg !3141
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::unique_ptr.2"* @"??$?0U?$default_delete@H@std@@$0A@@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* returned %0) unnamed_addr #1 comdat align 2 !dbg !3142 {
  %2 = alloca %"class.std::unique_ptr.2"*, align 8
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  store %"class.std::unique_ptr.2"* %0, %"class.std::unique_ptr.2"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr.2"** %2, metadata !3146, metadata !DIExpression()), !dbg !3148
  %4 = load %"class.std::unique_ptr.2"*, %"class.std::unique_ptr.2"** %2, align 8
  %5 = getelementptr inbounds %"class.std::unique_ptr.2", %"class.std::unique_ptr.2"* %4, i32 0, i32 0, !dbg !3149
  %6 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %3, i32 0, i32 0, !dbg !3149
  %7 = load i8, i8* %6, align 1, !dbg !3149
  %8 = call %"class.std::_Compressed_pair.3"* @"??$?0$$V@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair.3"* %5, i8 %7) #5, !dbg !3149
  ret %"class.std::unique_ptr.2"* %4, !dbg !3150
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @"??D?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAAEAHXZ"(%"class.std::unique_ptr.2"* %0) #1 comdat align 2 !dbg !3151 {
  %2 = alloca %"class.std::unique_ptr.2"*, align 8
  store %"class.std::unique_ptr.2"* %0, %"class.std::unique_ptr.2"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr.2"** %2, metadata !3152, metadata !DIExpression()), !dbg !3154
  %3 = load %"class.std::unique_ptr.2"*, %"class.std::unique_ptr.2"** %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr.2", %"class.std::unique_ptr.2"* %3, i32 0, i32 0, !dbg !3155
  %5 = getelementptr inbounds %"class.std::_Compressed_pair.3", %"class.std::_Compressed_pair.3"* %4, i32 0, i32 0, !dbg !3156
  %6 = load i32*, i32** %5, align 8, !dbg !3156
  ret i32* %6, !dbg !3157
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr"* %0) unnamed_addr #1 comdat align 2 !dbg !3158 {
  %2 = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %2, metadata !3159, metadata !DIExpression()), !dbg !3160
  %3 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %3, i32 0, i32 0, !dbg !3161
  %5 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %4, i32 0, i32 0, !dbg !3164
  %6 = load %class.ClassWithDestructor*, %class.ClassWithDestructor** %5, align 8, !dbg !3164
  %7 = icmp ne %class.ClassWithDestructor* %6, null, !dbg !3161
  br i1 %7, label %8, label %14, !dbg !3165

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %3, i32 0, i32 0, !dbg !3166
  %10 = call nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @"?_Get_first@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAAAEAU?$default_delete@VClassWithDestructor@@@2@XZ"(%"class.std::_Compressed_pair"* %9) #5, !dbg !3168
  %11 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %3, i32 0, i32 0, !dbg !3169
  %12 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %11, i32 0, i32 0, !dbg !3170
  %13 = load %class.ClassWithDestructor*, %class.ClassWithDestructor** %12, align 8, !dbg !3170
  call void @"??R?$default_delete@VClassWithDestructor@@@std@@QEBAXPEAVClassWithDestructor@@@Z"(%"struct.std::default_delete"* %10, %class.ClassWithDestructor* %13) #5, !dbg !3166
  br label %14, !dbg !3171

14:                                               ; preds = %8, %1
  ret void, !dbg !3172
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ"(%"class.std::unique_ptr.2"* %0) unnamed_addr #1 comdat align 2 !dbg !3173 {
  %2 = alloca %"class.std::unique_ptr.2"*, align 8
  store %"class.std::unique_ptr.2"* %0, %"class.std::unique_ptr.2"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr.2"** %2, metadata !3174, metadata !DIExpression()), !dbg !3175
  %3 = load %"class.std::unique_ptr.2"*, %"class.std::unique_ptr.2"** %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr.2", %"class.std::unique_ptr.2"* %3, i32 0, i32 0, !dbg !3176
  %5 = getelementptr inbounds %"class.std::_Compressed_pair.3", %"class.std::_Compressed_pair.3"* %4, i32 0, i32 0, !dbg !3179
  %6 = load i32*, i32** %5, align 8, !dbg !3179
  %7 = icmp ne i32* %6, null, !dbg !3176
  br i1 %7, label %8, label %14, !dbg !3180

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::unique_ptr.2", %"class.std::unique_ptr.2"* %3, i32 0, i32 0, !dbg !3181
  %10 = call nonnull align 1 dereferenceable(1) %"struct.std::default_delete.4"* @"?_Get_first@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAAAEAU?$default_delete@H@2@XZ"(%"class.std::_Compressed_pair.3"* %9) #5, !dbg !3183
  %11 = getelementptr inbounds %"class.std::unique_ptr.2", %"class.std::unique_ptr.2"* %3, i32 0, i32 0, !dbg !3184
  %12 = getelementptr inbounds %"class.std::_Compressed_pair.3", %"class.std::_Compressed_pair.3"* %11, i32 0, i32 0, !dbg !3185
  %13 = load i32*, i32** %12, align 8, !dbg !3185
  call void @"??R?$default_delete@H@std@@QEBAXPEAH@Z"(%"struct.std::default_delete.4"* %10, i32* %13) #5, !dbg !3181
  br label %14, !dbg !3186

14:                                               ; preds = %8, %1
  ret void, !dbg !3187
}

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?windowsApiTest@expression@test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3188 {
  %1 = alloca %struct._STARTUPINFOW, align 8
  %2 = alloca %struct._CONTEXT, align 16
  %3 = alloca %struct._PROCESS_INFORMATION, align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  call void @llvm.dbg.declare(metadata %struct._STARTUPINFOW* %1, metadata !3189, metadata !DIExpression()), !dbg !3223
  %9 = bitcast %struct._STARTUPINFOW* %1 to i8*, !dbg !3223
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 104, i1 false), !dbg !3223
  %10 = bitcast %struct._STARTUPINFOW* %1 to i8*, !dbg !3224
  %11 = bitcast %struct._STARTUPINFOW* %1 to i8*, !dbg !3224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 104, i1 false), !dbg !3224
  call void @llvm.dbg.declare(metadata %struct._CONTEXT* %2, metadata !3225, metadata !DIExpression()), !dbg !3341
  %12 = bitcast %struct._CONTEXT* %2 to i8*, !dbg !3341
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 1232, i1 false), !dbg !3341
  %13 = bitcast %struct._CONTEXT* %2 to i8*, !dbg !3342
  %14 = bitcast %struct._CONTEXT* %2 to i8*, !dbg !3342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 %14, i64 1232, i1 false), !dbg !3342
  call void @llvm.dbg.declare(metadata %struct._PROCESS_INFORMATION* %3, metadata !3343, metadata !DIExpression()), !dbg !3351
  %15 = bitcast %struct._PROCESS_INFORMATION* %3 to i8*, !dbg !3352
  %16 = bitcast %struct._PROCESS_INFORMATION* %3 to i8*, !dbg !3352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false), !dbg !3352
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %4, metadata !3353, metadata !DIExpression()), !dbg !3354
  %17 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %4, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @"??_C@_0KI@EBHLGOBM@PROCESS_INFORMATION?5w?5?$DN?5?$HL?$HN?$DL?6s?4cb@", i64 0, i64 0)), !dbg !3355
  invoke void @llvm.eha.scope.begin()
          to label %18 unwind label %60, !dbg !3356

18:                                               ; preds = %0
  %19 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %7, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %20 unwind label %60, !dbg !3357

20:                                               ; preds = %18
  invoke void @llvm.eha.scope.begin()
          to label %21 unwind label %44, !dbg !3357

21:                                               ; preds = %20
  %22 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %8, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %23 unwind label %44, !dbg !3357

23:                                               ; preds = %21
  invoke void @llvm.eha.scope.begin()
          to label %24 unwind label %42, !dbg !3357

24:                                               ; preds = %23
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %7)
          to label %25 unwind label %42, !dbg !3357

25:                                               ; preds = %24
  invoke void @llvm.eha.scope.begin()
          to label %26 unwind label %40, !dbg !3357

26:                                               ; preds = %25
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %5, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %27 unwind label %40, !dbg !3357

27:                                               ; preds = %26
  invoke void @llvm.eha.scope.begin()
          to label %28 unwind label %38, !dbg !3357

28:                                               ; preds = %27
  %29 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %5) #5, !dbg !3357
  invoke void @llvm.eha.scope.end()
          to label %30 unwind label %38, !dbg !3357

30:                                               ; preds = %28
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5, !dbg !3357
  invoke void @llvm.eha.scope.end()
          to label %31 unwind label %40, !dbg !3357

31:                                               ; preds = %30
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5, !dbg !3357
  invoke void @llvm.eha.scope.end()
          to label %32 unwind label %42, !dbg !3357

32:                                               ; preds = %31
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %8) #5, !dbg !3357
  invoke void @llvm.eha.scope.end()
          to label %33 unwind label %44, !dbg !3357

33:                                               ; preds = %32
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5, !dbg !3357
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3357
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !3357
  br label %34, !dbg !3357

34:                                               ; preds = %37, %33
  %35 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3357
  %36 = trunc i8 %35 to i1, !dbg !3357
  br i1 %36, label %37, label %46, !dbg !3357

37:                                               ; preds = %34
  br label %34, !dbg !3357, !llvm.loop !3358

38:                                               ; preds = %28, %27
  %39 = cleanuppad within none [], !dbg !3357
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5 [ "funclet"(token %39) ], !dbg !3357
  cleanupret from %39 unwind label %40, !dbg !3357

40:                                               ; preds = %30, %38, %26, %25
  %41 = cleanuppad within none [], !dbg !3357
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5 [ "funclet"(token %41) ], !dbg !3357
  cleanupret from %41 unwind label %42, !dbg !3357

42:                                               ; preds = %31, %40, %24, %23
  %43 = cleanuppad within none [], !dbg !3357
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %8) #5 [ "funclet"(token %43) ], !dbg !3357
  cleanupret from %43 unwind label %44, !dbg !3357

44:                                               ; preds = %32, %42, %21, %20
  %45 = cleanuppad within none [], !dbg !3357
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %7) #5 [ "funclet"(token %45) ], !dbg !3357
  cleanupret from %45 unwind label %60, !dbg !3357

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct._CONTEXT, %struct._CONTEXT* %2, i32 0, i32 31, !dbg !3359
  %48 = load i64, i64* %47, align 8, !dbg !3359
  %49 = icmp eq i64 %48, 8, !dbg !3359
  br i1 %49, label %51, label %50, !dbg !3361

50:                                               ; preds = %46
  call void @llvm.debugtrap(), !dbg !3362
  br label %51, !dbg !3362

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct._PROCESS_INFORMATION, %struct._PROCESS_INFORMATION* %3, i32 0, i32 1, !dbg !3364
  %53 = load i8*, i8** %52, align 8, !dbg !3364
  %54 = invoke i8* @GetCurrentThread()
          to label %55 unwind label %60, !dbg !3364

55:                                               ; preds = %51
  %56 = icmp eq i8* %53, %54, !dbg !3364
  br i1 %56, label %58, label %57, !dbg !3366

57:                                               ; preds = %55
  call void @llvm.debugtrap(), !dbg !3367
  br label %58, !dbg !3367

58:                                               ; preds = %57, %55
  invoke void @llvm.eha.scope.end()
          to label %59 unwind label %60, !dbg !3369

59:                                               ; preds = %58
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5, !dbg !3369
  ret void, !dbg !3369

60:                                               ; preds = %58, %51, %44, %18, %0
  %61 = cleanuppad within none [], !dbg !3369
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5 [ "funclet"(token %61) ], !dbg !3369
  cleanupret from %61 unwind to caller, !dbg !3369
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

declare dllimport i8* @GetCurrentThread() #6

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?mixStlWithDwarfData@expression@test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3370 {
  %1 = alloca %"struct.test::expression::MyStruct", align 4
  %2 = alloca %"class.std::basic_string", align 8
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::basic_string", align 8
  call void @llvm.dbg.declare(metadata %"struct.test::expression::MyStruct"* %1, metadata !3371, metadata !DIExpression()), !dbg !3375
  %7 = getelementptr inbounds %"struct.test::expression::MyStruct", %"struct.test::expression::MyStruct"* %1, i32 0, i32 0, !dbg !3376
  %8 = load i32, i32* %7, align 4, !dbg !3376
  %9 = getelementptr inbounds %"struct.test::expression::MyStruct", %"struct.test::expression::MyStruct"* %1, i32 0, i32 0, !dbg !3377
  store i32 %8, i32* %9, align 4, !dbg !3378
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %2, metadata !3379, metadata !DIExpression()), !dbg !3380
  %10 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %2, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @"??_C@_0FM@BHMHCBJK@test?3?3expression?3?3MyStruct?5s?$DLaut@", i64 0, i64 0)), !dbg !3381
  invoke void @llvm.eha.scope.begin()
          to label %11 unwind label %41, !dbg !3382

11:                                               ; preds = %0
  %12 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %5, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %2)
          to label %13 unwind label %41, !dbg !3383

13:                                               ; preds = %11
  invoke void @llvm.eha.scope.begin()
          to label %14 unwind label %37, !dbg !3383

14:                                               ; preds = %13
  %15 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %6, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %16 unwind label %37, !dbg !3383

16:                                               ; preds = %14
  invoke void @llvm.eha.scope.begin()
          to label %17 unwind label %35, !dbg !3383

17:                                               ; preds = %16
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %4, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %5)
          to label %18 unwind label %35, !dbg !3383

18:                                               ; preds = %17
  invoke void @llvm.eha.scope.begin()
          to label %19 unwind label %33, !dbg !3383

19:                                               ; preds = %18
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %3, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %20 unwind label %33, !dbg !3383

20:                                               ; preds = %19
  invoke void @llvm.eha.scope.begin()
          to label %21 unwind label %31, !dbg !3383

21:                                               ; preds = %20
  %22 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3) #5, !dbg !3383
  invoke void @llvm.eha.scope.end()
          to label %23 unwind label %31, !dbg !3383

23:                                               ; preds = %21
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5, !dbg !3383
  invoke void @llvm.eha.scope.end()
          to label %24 unwind label %33, !dbg !3383

24:                                               ; preds = %23
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5, !dbg !3383
  invoke void @llvm.eha.scope.end()
          to label %25 unwind label %35, !dbg !3383

25:                                               ; preds = %24
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5, !dbg !3383
  invoke void @llvm.eha.scope.end()
          to label %26 unwind label %37, !dbg !3383

26:                                               ; preds = %25
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5, !dbg !3383
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3383
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !3383
  br label %27, !dbg !3383

27:                                               ; preds = %30, %26
  %28 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3383
  %29 = trunc i8 %28 to i1, !dbg !3383
  br i1 %29, label %30, label %39, !dbg !3383

30:                                               ; preds = %27
  br label %27, !dbg !3383, !llvm.loop !3384

31:                                               ; preds = %21, %20
  %32 = cleanuppad within none [], !dbg !3383
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5 [ "funclet"(token %32) ], !dbg !3383
  cleanupret from %32 unwind label %33, !dbg !3383

33:                                               ; preds = %23, %31, %19, %18
  %34 = cleanuppad within none [], !dbg !3383
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5 [ "funclet"(token %34) ], !dbg !3383
  cleanupret from %34 unwind label %35, !dbg !3383

35:                                               ; preds = %24, %33, %17, %16
  %36 = cleanuppad within none [], !dbg !3383
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5 [ "funclet"(token %36) ], !dbg !3383
  cleanupret from %36 unwind label %37, !dbg !3383

37:                                               ; preds = %25, %35, %14, %13
  %38 = cleanuppad within none [], !dbg !3383
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5 [ "funclet"(token %38) ], !dbg !3383
  cleanupret from %38 unwind label %41, !dbg !3383

39:                                               ; preds = %27
  invoke void @llvm.eha.scope.end()
          to label %40 unwind label %41, !dbg !3385

40:                                               ; preds = %39
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %2) #5, !dbg !3385
  ret void, !dbg !3385

41:                                               ; preds = %39, %37, %11, %0
  %42 = cleanuppad within none [], !dbg !3385
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %2) #5 [ "funclet"(token %42) ], !dbg !3385
  cleanupret from %42 unwind to caller, !dbg !3385
}

; Function Attrs: noinline optnone uwtable
define dso_local dllexport void @"?allStl@expression@test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3386 {
  %1 = alloca %"struct.test::expression::MyStruct", align 4
  %2 = alloca %"class.std::basic_string", align 8
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::basic_string", align 8
  call void @llvm.dbg.declare(metadata %"struct.test::expression::MyStruct"* %1, metadata !3387, metadata !DIExpression()), !dbg !3388
  %7 = getelementptr inbounds %"struct.test::expression::MyStruct", %"struct.test::expression::MyStruct"* %1, i32 0, i32 0, !dbg !3389
  %8 = load i32, i32* %7, align 4, !dbg !3389
  %9 = getelementptr inbounds %"struct.test::expression::MyStruct", %"struct.test::expression::MyStruct"* %1, i32 0, i32 0, !dbg !3390
  store i32 %8, i32* %9, align 4, !dbg !3391
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"* %2, metadata !3392, metadata !DIExpression()), !dbg !3393
  %10 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %2, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @"??_C@_0FN@ECLNLPJK@std?3?3shared_ptr?$DMint?$DO?5f?$DLstd?3?3opti@", i64 0, i64 0)), !dbg !3394
  invoke void @llvm.eha.scope.begin()
          to label %11 unwind label %41, !dbg !3395

11:                                               ; preds = %0
  %12 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %5, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %2)
          to label %13 unwind label %41, !dbg !3396

13:                                               ; preds = %11
  invoke void @llvm.eha.scope.begin()
          to label %14 unwind label %37, !dbg !3396

14:                                               ; preds = %13
  %15 = invoke %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %6, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"??_C@_0FO@BMCOEJHP@?7?$CDdefine?5FAIL_TEST_IF_FALSE?$CIcond@", i64 0, i64 0))
          to label %16 unwind label %37, !dbg !3396

16:                                               ; preds = %14
  invoke void @llvm.eha.scope.begin()
          to label %17 unwind label %35, !dbg !3396

17:                                               ; preds = %16
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z"(%"class.std::basic_string"* sret align 8 %4, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %6, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %5)
          to label %18 unwind label %35, !dbg !3396

18:                                               ; preds = %17
  invoke void @llvm.eha.scope.begin()
          to label %19 unwind label %33, !dbg !3396

19:                                               ; preds = %18
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z"(%"class.std::basic_string"* sret align 8 %3, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"??_C@_0BP@FJINOLPO@?$DLg_shouldPauseExecute?5?$DN?5false?$DL?$AA@", i64 0, i64 0))
          to label %20 unwind label %33, !dbg !3396

20:                                               ; preds = %19
  invoke void @llvm.eha.scope.begin()
          to label %21 unwind label %31, !dbg !3396

21:                                               ; preds = %20
  %22 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(%"class.std::basic_string"* @"?g_expr@@3V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@A", %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3) #5, !dbg !3396
  invoke void @llvm.eha.scope.end()
          to label %23 unwind label %31, !dbg !3396

23:                                               ; preds = %21
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5, !dbg !3396
  invoke void @llvm.eha.scope.end()
          to label %24 unwind label %33, !dbg !3396

24:                                               ; preds = %23
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5, !dbg !3396
  invoke void @llvm.eha.scope.end()
          to label %25 unwind label %35, !dbg !3396

25:                                               ; preds = %24
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5, !dbg !3396
  invoke void @llvm.eha.scope.end()
          to label %26 unwind label %37, !dbg !3396

26:                                               ; preds = %25
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5, !dbg !3396
  store i8 1, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3396
  store i8 1, i8* @"?g_notifyBp@@3_NA", align 1, !dbg !3396
  br label %27, !dbg !3396

27:                                               ; preds = %30, %26
  %28 = load i8, i8* @"?g_shouldPauseExecute@@3_NA", align 1, !dbg !3396
  %29 = trunc i8 %28 to i1, !dbg !3396
  br i1 %29, label %30, label %39, !dbg !3396

30:                                               ; preds = %27
  br label %27, !dbg !3396, !llvm.loop !3397

31:                                               ; preds = %21, %20
  %32 = cleanuppad within none [], !dbg !3396
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %3) #5 [ "funclet"(token %32) ], !dbg !3396
  cleanupret from %32 unwind label %33, !dbg !3396

33:                                               ; preds = %23, %31, %19, %18
  %34 = cleanuppad within none [], !dbg !3396
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %4) #5 [ "funclet"(token %34) ], !dbg !3396
  cleanupret from %34 unwind label %35, !dbg !3396

35:                                               ; preds = %24, %33, %17, %16
  %36 = cleanuppad within none [], !dbg !3396
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %6) #5 [ "funclet"(token %36) ], !dbg !3396
  cleanupret from %36 unwind label %37, !dbg !3396

37:                                               ; preds = %25, %35, %14, %13
  %38 = cleanuppad within none [], !dbg !3396
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %5) #5 [ "funclet"(token %38) ], !dbg !3396
  cleanupret from %38 unwind label %41, !dbg !3396

39:                                               ; preds = %27
  invoke void @llvm.eha.scope.end()
          to label %40 unwind label %41, !dbg !3398

40:                                               ; preds = %39
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %2) #5, !dbg !3398
  ret void, !dbg !3398

41:                                               ; preds = %39, %37, %11, %0
  %42 = cleanuppad within none [], !dbg !3398
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %2) #5 [ "funclet"(token %42) ], !dbg !3398
  cleanupret from %42 unwind to caller, !dbg !3398
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair"* @"??$?0$$V@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair"* returned %0, i8 %1) unnamed_addr #1 comdat align 2 !dbg !3399 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca %"class.std::_Compressed_pair"*, align 8
  %5 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %3, i32 0, i32 0
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata %"struct.std::_Zero_then_variadic_args_t"* %3, metadata !3411, metadata !DIExpression()), !dbg !3412
  store %"class.std::_Compressed_pair"* %0, %"class.std::_Compressed_pair"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair"** %4, metadata !3413, metadata !DIExpression()), !dbg !3415
  %6 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %4, align 8
  %7 = bitcast %"class.std::_Compressed_pair"* %6 to %"struct.std::default_delete"*, !dbg !3416
  %8 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %6, i32 0, i32 0, !dbg !3417
  store %class.ClassWithDestructor* null, %class.ClassWithDestructor** %8, align 8, !dbg !3417
  ret %"class.std::_Compressed_pair"* %6, !dbg !3418
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @"??$forward@H@std@@YA$$QEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %0) #1 comdat !dbg !3419 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !3426, metadata !DIExpression()), !dbg !3427
  %3 = load i32*, i32** %2, align 8, !dbg !3428
  ret i32* %3, !dbg !3429
}

; Function Attrs: noinline optnone uwtable
define internal %"struct.std::_Optional_construct_base"* @"??0?$_Optional_construct_base@H@std@@QEAA@Uin_place_t@1@$$QEAH@Z"(%"struct.std::_Optional_construct_base"* returned %0, i8 %1, i32* nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 !dbg !3430 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca i32*, align 8
  %6 = alloca %"struct.std::_Optional_construct_base"*, align 8
  %7 = getelementptr inbounds %"struct.std::in_place_t", %"struct.std::in_place_t"* %4, i32 0, i32 0
  store i8 %1, i8* %7, align 1
  store i32* %2, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3435, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.declare(metadata %"struct.std::in_place_t"* %4, metadata !3437, metadata !DIExpression()), !dbg !3436
  store %"struct.std::_Optional_construct_base"* %0, %"struct.std::_Optional_construct_base"** %6, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Optional_construct_base"** %6, metadata !3438, metadata !DIExpression()), !dbg !3436
  %8 = load %"struct.std::_Optional_construct_base"*, %"struct.std::_Optional_construct_base"** %6, align 8
  %9 = bitcast %"struct.std::_Optional_construct_base"* %8 to %"struct.std::_Optional_destruct_base"*, !dbg !3440
  %10 = load i32*, i32** %5, align 8, !dbg !3440
  %11 = getelementptr inbounds %"struct.std::in_place_t", %"struct.std::in_place_t"* %4, i32 0, i32 0, !dbg !3440
  %12 = load i8, i8* %11, align 1, !dbg !3440
  %13 = call %"struct.std::_Optional_destruct_base"* @"??$?0H@?$_Optional_destruct_base@H$00@std@@QEAA@Uin_place_t@1@$$QEAH@Z"(%"struct.std::_Optional_destruct_base"* %9, i8 %12, i32* nonnull align 4 dereferenceable(4) %10), !dbg !3440
  ret %"struct.std::_Optional_construct_base"* %8, !dbg !3440
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Optional_destruct_base"* @"??$?0H@?$_Optional_destruct_base@H$00@std@@QEAA@Uin_place_t@1@$$QEAH@Z"(%"struct.std::_Optional_destruct_base"* returned %0, i8 %1, i32* nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 !dbg !3441 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca i32*, align 8
  %6 = alloca %"struct.std::_Optional_destruct_base"*, align 8
  %7 = getelementptr inbounds %"struct.std::in_place_t", %"struct.std::in_place_t"* %4, i32 0, i32 0
  store i8 %1, i8* %7, align 1
  store i32* %2, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3446, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.declare(metadata %"struct.std::in_place_t"* %4, metadata !3448, metadata !DIExpression()), !dbg !3449
  store %"struct.std::_Optional_destruct_base"* %0, %"struct.std::_Optional_destruct_base"** %6, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Optional_destruct_base"** %6, metadata !3450, metadata !DIExpression()), !dbg !3452
  %8 = load %"struct.std::_Optional_destruct_base"*, %"struct.std::_Optional_destruct_base"** %6, align 8
  %9 = getelementptr inbounds %"struct.std::_Optional_destruct_base", %"struct.std::_Optional_destruct_base"* %8, i32 0, i32 0, !dbg !3453
  %10 = bitcast %union.anon* %9 to i32*, !dbg !3453
  %11 = load i32*, i32** %5, align 8, !dbg !3454
  %12 = call nonnull align 4 dereferenceable(4) i32* @"??$forward@H@std@@YA$$QEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %11) #5, !dbg !3455
  %13 = load i32, i32* %12, align 4, !dbg !3455
  store i32 %13, i32* %10, align 4, !dbg !3453
  %14 = getelementptr inbounds %"struct.std::_Optional_destruct_base", %"struct.std::_Optional_destruct_base"* %8, i32 0, i32 1, !dbg !3456
  store i8 1, i8* %14, align 4, !dbg !3456
  ret %"struct.std::_Optional_destruct_base"* %8, !dbg !3457
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.tl::detail::expected_move_assign_base"* @"??0?$expected_move_assign_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_move_assign_base"* returned %0) unnamed_addr #0 comdat align 2 !dbg !3458 {
  %2 = alloca %"struct.tl::detail::expected_move_assign_base"*, align 8
  store %"struct.tl::detail::expected_move_assign_base"* %0, %"struct.tl::detail::expected_move_assign_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.tl::detail::expected_move_assign_base"** %2, metadata !3463, metadata !DIExpression()), !dbg !3465
  %3 = load %"struct.tl::detail::expected_move_assign_base"*, %"struct.tl::detail::expected_move_assign_base"** %2, align 8
  %4 = bitcast %"struct.tl::detail::expected_move_assign_base"* %3 to %"struct.tl::detail::expected_copy_assign_base"*, !dbg !3466
  %5 = call %"struct.tl::detail::expected_copy_assign_base"* @"??0?$expected_copy_assign_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_copy_assign_base"* %4), !dbg !3466
  ret %"struct.tl::detail::expected_move_assign_base"* %3, !dbg !3466
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.tl::detail::expected_copy_assign_base"* @"??0?$expected_copy_assign_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_copy_assign_base"* returned %0) unnamed_addr #0 comdat align 2 !dbg !3467 {
  %2 = alloca %"struct.tl::detail::expected_copy_assign_base"*, align 8
  store %"struct.tl::detail::expected_copy_assign_base"* %0, %"struct.tl::detail::expected_copy_assign_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.tl::detail::expected_copy_assign_base"** %2, metadata !3472, metadata !DIExpression()), !dbg !3474
  %3 = load %"struct.tl::detail::expected_copy_assign_base"*, %"struct.tl::detail::expected_copy_assign_base"** %2, align 8
  %4 = bitcast %"struct.tl::detail::expected_copy_assign_base"* %3 to %"struct.tl::detail::expected_move_base"*, !dbg !3475
  %5 = call %"struct.tl::detail::expected_move_base"* @"??0?$expected_move_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_move_base"* %4), !dbg !3475
  ret %"struct.tl::detail::expected_copy_assign_base"* %3, !dbg !3475
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.tl::detail::expected_move_base"* @"??0?$expected_move_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_move_base"* returned %0) unnamed_addr #0 comdat align 2 !dbg !3476 {
  %2 = alloca %"struct.tl::detail::expected_move_base"*, align 8
  store %"struct.tl::detail::expected_move_base"* %0, %"struct.tl::detail::expected_move_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.tl::detail::expected_move_base"** %2, metadata !3481, metadata !DIExpression()), !dbg !3483
  %3 = load %"struct.tl::detail::expected_move_base"*, %"struct.tl::detail::expected_move_base"** %2, align 8
  %4 = bitcast %"struct.tl::detail::expected_move_base"* %3 to %"struct.tl::detail::expected_copy_base"*, !dbg !3484
  %5 = call %"struct.tl::detail::expected_copy_base"* @"??0?$expected_copy_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_copy_base"* %4), !dbg !3484
  ret %"struct.tl::detail::expected_move_base"* %3, !dbg !3484
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.tl::detail::expected_copy_base"* @"??0?$expected_copy_base@HH$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_copy_base"* returned %0) unnamed_addr #0 comdat align 2 !dbg !3485 {
  %2 = alloca %"struct.tl::detail::expected_copy_base"*, align 8
  store %"struct.tl::detail::expected_copy_base"* %0, %"struct.tl::detail::expected_copy_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.tl::detail::expected_copy_base"** %2, metadata !3490, metadata !DIExpression()), !dbg !3492
  %3 = load %"struct.tl::detail::expected_copy_base"*, %"struct.tl::detail::expected_copy_base"** %2, align 8
  %4 = bitcast %"struct.tl::detail::expected_copy_base"* %3 to %"struct.tl::detail::expected_operations_base"*, !dbg !3493
  %5 = call %"struct.tl::detail::expected_operations_base"* @"??0?$expected_operations_base@HH@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_operations_base"* %4), !dbg !3493
  ret %"struct.tl::detail::expected_copy_base"* %3, !dbg !3493
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.tl::detail::expected_operations_base"* @"??0?$expected_operations_base@HH@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_operations_base"* returned %0) unnamed_addr #0 comdat align 2 !dbg !3494 {
  %2 = alloca %"struct.tl::detail::expected_operations_base"*, align 8
  store %"struct.tl::detail::expected_operations_base"* %0, %"struct.tl::detail::expected_operations_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.tl::detail::expected_operations_base"** %2, metadata !3496, metadata !DIExpression()), !dbg !3498
  %3 = load %"struct.tl::detail::expected_operations_base"*, %"struct.tl::detail::expected_operations_base"** %2, align 8
  %4 = bitcast %"struct.tl::detail::expected_operations_base"* %3 to %"struct.tl::detail::expected_storage_base"*, !dbg !3499
  %5 = call %"struct.tl::detail::expected_storage_base"* @"??0?$expected_storage_base@HH$00$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_storage_base"* %4), !dbg !3499
  ret %"struct.tl::detail::expected_operations_base"* %3, !dbg !3499
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.tl::detail::expected_storage_base"* @"??0?$expected_storage_base@HH$00$00@detail@tl@@QEAA@XZ"(%"struct.tl::detail::expected_storage_base"* returned %0) unnamed_addr #0 comdat align 2 !dbg !3500 {
  %2 = alloca %"struct.tl::detail::expected_storage_base"*, align 8
  store %"struct.tl::detail::expected_storage_base"* %0, %"struct.tl::detail::expected_storage_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.tl::detail::expected_storage_base"** %2, metadata !3501, metadata !DIExpression()), !dbg !3503
  %3 = load %"struct.tl::detail::expected_storage_base"*, %"struct.tl::detail::expected_storage_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.tl::detail::expected_storage_base", %"struct.tl::detail::expected_storage_base"* %3, i32 0, i32 0, !dbg !3504
  %5 = bitcast %union.anon.1* %4 to i32*, !dbg !3504
  store i32 0, i32* %5, align 4, !dbg !3504
  %6 = getelementptr inbounds %"struct.tl::detail::expected_storage_base", %"struct.tl::detail::expected_storage_base"* %3, i32 0, i32 1, !dbg !3505
  store i8 1, i8* %6, align 4, !dbg !3505
  ret %"struct.tl::detail::expected_storage_base"* %3, !dbg !3506
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) %"class.tl::unexpected"* @"?err@?$expected@HH@tl@@AEAAAEAV?$unexpected@H@2@XZ"(%"class.tl::expected"* %0) #0 comdat align 2 !dbg !3507 {
  %2 = alloca %"class.tl::expected"*, align 8
  store %"class.tl::expected"* %0, %"class.tl::expected"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.tl::expected"** %2, metadata !3508, metadata !DIExpression()), !dbg !3509
  %3 = load %"class.tl::expected"*, %"class.tl::expected"** %2, align 8
  %4 = bitcast %"class.tl::expected"* %3 to %"struct.tl::detail::expected_storage_base"*, !dbg !3510
  %5 = getelementptr inbounds %"struct.tl::detail::expected_storage_base", %"struct.tl::detail::expected_storage_base"* %4, i32 0, i32 0, !dbg !3510
  %6 = bitcast %union.anon.1* %5 to %"class.tl::unexpected"*, !dbg !3510
  ret %"class.tl::unexpected"* %6, !dbg !3511
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @"?value@?$unexpected@H@tl@@QEGAAAEAHXZ"(%"class.tl::unexpected"* %0) #0 comdat align 2 !dbg !3512 {
  %2 = alloca %"class.tl::unexpected"*, align 8
  store %"class.tl::unexpected"* %0, %"class.tl::unexpected"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.tl::unexpected"** %2, metadata !3513, metadata !DIExpression()), !dbg !3514
  %3 = load %"class.tl::unexpected"*, %"class.tl::unexpected"** %2, align 8
  %4 = getelementptr inbounds %"class.tl::unexpected", %"class.tl::unexpected"* %3, i32 0, i32 0, !dbg !3515
  ret i32* %4, !dbg !3516
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(%struct._iobuf* %0, i8* %1, %struct.__crt_locale_pointers* %2, i8* %3) #0 comdat !dbg !3517 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__crt_locale_pointers*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._iobuf*, align 8
  store i8* %3, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3532, metadata !DIExpression()), !dbg !3533
  store %struct.__crt_locale_pointers* %2, %struct.__crt_locale_pointers** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__crt_locale_pointers** %6, metadata !3534, metadata !DIExpression()), !dbg !3535
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3536, metadata !DIExpression()), !dbg !3537
  store %struct._iobuf* %0, %struct._iobuf** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._iobuf** %8, metadata !3538, metadata !DIExpression()), !dbg !3539
  %9 = load i8*, i8** %5, align 8, !dbg !3540
  %10 = load %struct.__crt_locale_pointers*, %struct.__crt_locale_pointers** %6, align 8, !dbg !3541
  %11 = load i8*, i8** %7, align 8, !dbg !3542
  %12 = load %struct._iobuf*, %struct._iobuf** %8, align 8, !dbg !3543
  %13 = call i64* @__local_stdio_printf_options(), !dbg !3544
  %14 = load i64, i64* %13, align 8, !dbg !3544
  %15 = call i32 @__stdio_common_vfprintf(i64 %14, %struct._iobuf* %12, i8* %11, %struct.__crt_locale_pointers* %10, i8* %9), !dbg !3545
  ret i32 %15, !dbg !3546
}

declare dso_local %struct._iobuf* @__acrt_iob_func(i32) #6

declare dso_local i32 @__stdio_common_vfprintf(i64, %struct._iobuf*, i8*, %struct.__crt_locale_pointers*, i8*) #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64* @__local_stdio_printf_options() #0 comdat !dbg !19 {
  ret i64* @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA", !dbg !3547
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Ptr_base"* @"??0?$_Ptr_base@H@std@@IEAA@XZ"(%"class.std::_Ptr_base"* returned %0) unnamed_addr #1 comdat align 2 !dbg !3548 {
  %2 = alloca %"class.std::_Ptr_base"*, align 8
  store %"class.std::_Ptr_base"* %0, %"class.std::_Ptr_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ptr_base"** %2, metadata !3549, metadata !DIExpression()), !dbg !3551
  %3 = load %"class.std::_Ptr_base"*, %"class.std::_Ptr_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 0, !dbg !3552
  store i32* null, i32** %4, align 8, !dbg !3552
  %5 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 1, !dbg !3553
  store %"class.std::_Ref_count_base"* null, %"class.std::_Ref_count_base"** %5, align 8, !dbg !3553
  ret %"class.std::_Ptr_base"* %3, !dbg !3554
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair.3"* @"??$?0$$V@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair.3"* returned %0, i8 %1) unnamed_addr #1 comdat align 2 !dbg !3555 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca %"class.std::_Compressed_pair.3"*, align 8
  %5 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %3, i32 0, i32 0
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata %"struct.std::_Zero_then_variadic_args_t"* %3, metadata !3559, metadata !DIExpression()), !dbg !3560
  store %"class.std::_Compressed_pair.3"* %0, %"class.std::_Compressed_pair.3"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.3"** %4, metadata !3561, metadata !DIExpression()), !dbg !3563
  %6 = load %"class.std::_Compressed_pair.3"*, %"class.std::_Compressed_pair.3"** %4, align 8
  %7 = bitcast %"class.std::_Compressed_pair.3"* %6 to %"struct.std::default_delete.4"*, !dbg !3564
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.3", %"class.std::_Compressed_pair.3"* %6, i32 0, i32 0, !dbg !3565
  store i32* null, i32** %8, align 8, !dbg !3565
  ret %"class.std::_Compressed_pair.3"* %6, !dbg !3566
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3567 {
  %2 = alloca %"class.std::basic_string"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i8, align 1
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !3568, metadata !DIExpression()), !dbg !3569
  %6 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %7 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3570
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %7, i32 0, i32 0, !dbg !3571
  %9 = bitcast %"class.std::_String_val"* %8 to %"struct.std::_Container_base0"*, !dbg !3570
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %9) #5, !dbg !3572
  %10 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3573
  %11 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %10, i32 0, i32 0, !dbg !3575
  %12 = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %11) #5, !dbg !3576
  br i1 %12, label %13, label %32, !dbg !3577

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3578, metadata !DIExpression()), !dbg !3582
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3583
  %15 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %14, i32 0, i32 0, !dbg !3584
  %16 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %15, i32 0, i32 0, !dbg !3585
  %17 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %16 to i8**, !dbg !3586
  %18 = load i8*, i8** %17, align 8, !dbg !3586
  store i8* %18, i8** %3, align 8, !dbg !3582
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !3587, metadata !DIExpression()), !dbg !3588
  %19 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %6) #5, !dbg !3589
  store %"class.std::allocator"* %19, %"class.std::allocator"** %4, align 8, !dbg !3588
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3590
  %21 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %20, i32 0, i32 0, !dbg !3591
  %22 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %21, i32 0, i32 0, !dbg !3592
  %23 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %22 to i8**, !dbg !3593
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %23) #5, !dbg !3594
  %24 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8, !dbg !3595
  %25 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3596
  %26 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %25, i32 0, i32 0, !dbg !3597
  %27 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %26, i32 0, i32 2, !dbg !3598
  %28 = load i64, i64* %27, align 8, !dbg !3598
  %29 = add i64 %28, 1, !dbg !3599
  %30 = load i8*, i8** %3, align 8, !dbg !3600
  invoke void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %24, i8* %30, i64 %29)
          to label %31 unwind label %44, !dbg !3601

31:                                               ; preds = %13
  br label %32, !dbg !3602

32:                                               ; preds = %31, %1
  %33 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3603
  %34 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %33, i32 0, i32 0, !dbg !3604
  %35 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %34, i32 0, i32 1, !dbg !3605
  store i64 0, i64* %35, align 8, !dbg !3606
  %36 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3607
  %37 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %36, i32 0, i32 0, !dbg !3608
  %38 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %37, i32 0, i32 2, !dbg !3609
  store i64 15, i64* %38, align 8, !dbg !3610
  store i8 0, i8* %5, align 1, !dbg !3611
  %39 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i32 0, i32 0, !dbg !3612
  %40 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %39, i32 0, i32 0, !dbg !3613
  %41 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %40, i32 0, i32 0, !dbg !3614
  %42 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %41 to [16 x i8]*, !dbg !3615
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %42, i64 0, i64 0, !dbg !3612
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %43, i8* nonnull align 1 dereferenceable(1) %5) #5, !dbg !3616
  ret void, !dbg !3617

44:                                               ; preds = %13
  %45 = cleanuppad within none [], !dbg !3601
  call void @__std_terminate() #18 [ "funclet"(token %45) ], !dbg !3601
  unreachable, !dbg !3601
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair.0"* %0) unnamed_addr #1 comdat align 2 !dbg !3618 {
  %2 = alloca %"class.std::_Compressed_pair.0"*, align 8
  store %"class.std::_Compressed_pair.0"* %0, %"class.std::_Compressed_pair.0"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.0"** %2, metadata !3622, metadata !DIExpression()), !dbg !3624
  %3 = load %"class.std::_Compressed_pair.0"*, %"class.std::_Compressed_pair.0"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %3, i32 0, i32 0, !dbg !3625
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %4) #5, !dbg !3625
  ret void, !dbg !3627
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %0) #1 comdat align 2 !dbg !3628 {
  %2 = alloca %"struct.std::_Container_base0"*, align 8
  store %"struct.std::_Container_base0"* %0, %"struct.std::_Container_base0"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Container_base0"** %2, metadata !3629, metadata !DIExpression()), !dbg !3630
  %3 = load %"struct.std::_Container_base0"*, %"struct.std::_Container_base0"** %2, align 8
  ret void, !dbg !3631
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %0) #1 comdat align 2 !dbg !3632 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !3633, metadata !DIExpression()), !dbg !3635
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 2, !dbg !3636
  %5 = load i64, i64* %4, align 8, !dbg !3636
  %6 = icmp ule i64 16, %5, !dbg !3637
  ret i1 %6, !dbg !3638
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %0) #1 comdat align 2 !dbg !3639 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !3640, metadata !DIExpression()), !dbg !3641
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i32 0, i32 0, !dbg !3642
  %5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair.0"* %4) #5, !dbg !3643
  ret %"class.std::allocator"* %5, !dbg !3644
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0) #1 comdat !dbg !3645 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3651, metadata !DIExpression()), !dbg !3652
  %3 = load i8**, i8*** %2, align 8, !dbg !3653
  ret void, !dbg !3654
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %0, i8* %1, i64 %2) #0 comdat align 2 !dbg !3655 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store i64 %2, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3656, metadata !DIExpression()), !dbg !3657
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3658, metadata !DIExpression()), !dbg !3659
  store %"class.std::allocator"* %0, %"class.std::allocator"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %6, metadata !3660, metadata !DIExpression()), !dbg !3662
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %8 = load i64, i64* %4, align 8, !dbg !3663
  %9 = mul i64 1, %8, !dbg !3664
  %10 = load i8*, i8** %5, align 8, !dbg !3665
  call void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(i8* %10, i64 %9) #5, !dbg !3666
  ret void, !dbg !3667
}

declare dso_local void @__std_terminate()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %0, i8* nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 !dbg !3668 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3669, metadata !DIExpression()), !dbg !3670
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3671, metadata !DIExpression()), !dbg !3672
  %5 = load i8*, i8** %3, align 8, !dbg !3673
  %6 = load i8, i8* %5, align 1, !dbg !3673
  %7 = load i8*, i8** %4, align 8, !dbg !3674
  store i8 %6, i8* %7, align 1, !dbg !3675
  ret void, !dbg !3676
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair.0"* %0) #1 comdat align 2 !dbg !3677 {
  %2 = alloca %"class.std::_Compressed_pair.0"*, align 8
  store %"class.std::_Compressed_pair.0"* %0, %"class.std::_Compressed_pair.0"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.0"** %2, metadata !3678, metadata !DIExpression()), !dbg !3679
  %3 = load %"class.std::_Compressed_pair.0"*, %"class.std::_Compressed_pair.0"** %2, align 8
  %4 = bitcast %"class.std::_Compressed_pair.0"* %3 to %"class.std::allocator"*, !dbg !3680
  ret %"class.std::allocator"* %4, !dbg !3681
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(i8* %0, i64 %1) #1 comdat personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3682 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3687, metadata !DIExpression()), !dbg !3688
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3689, metadata !DIExpression()), !dbg !3690
  %5 = load i64, i64* %3, align 8, !dbg !3691
  %6 = icmp uge i64 %5, 4096, !dbg !3693
  br i1 %6, label %7, label %9, !dbg !3694

7:                                                ; preds = %2
  invoke void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(i8** nonnull align 8 dereferenceable(8) %4, i64* nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %12, !dbg !3695

8:                                                ; preds = %7
  br label %9, !dbg !3697

9:                                                ; preds = %8, %2
  %10 = load i64, i64* %3, align 8, !dbg !3698
  %11 = load i8*, i8** %4, align 8, !dbg !3699
  call void @"??3@YAXPEAX_K@Z"(i8* %11, i64 %10) #5, !dbg !3700
  ret void, !dbg !3701

12:                                               ; preds = %7
  %13 = cleanuppad within none [], !dbg !3695
  call void @__std_terminate() #18 [ "funclet"(token %13) ], !dbg !3695
  unreachable, !dbg !3695
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(i8** nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !3702 {
  %3 = alloca i64*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %1, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3709, metadata !DIExpression()), !dbg !3710
  %9 = load i64*, i64** %3, align 8, !dbg !3711
  %10 = load i64, i64* %9, align 8, !dbg !3712
  %11 = add i64 %10, 39, !dbg !3712
  store i64 %11, i64* %9, align 8, !dbg !3712
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3713, metadata !DIExpression()), !dbg !3717
  %12 = load i8**, i8*** %4, align 8, !dbg !3718
  %13 = load i8*, i8** %12, align 8, !dbg !3718
  %14 = bitcast i8* %13 to i64*, !dbg !3719
  store i64* %14, i64** %5, align 8, !dbg !3717
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3720, metadata !DIExpression()), !dbg !3721
  %15 = load i64*, i64** %5, align 8, !dbg !3722
  %16 = getelementptr inbounds i64, i64* %15, i64 -1, !dbg !3722
  %17 = load i64, i64* %16, align 8, !dbg !3722
  store i64 %17, i64* %6, align 8, !dbg !3721
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i64 8, i64* %7, align 8, !dbg !3724
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3725, metadata !DIExpression()), !dbg !3726
  %18 = load i8**, i8*** %4, align 8, !dbg !3727
  %19 = load i8*, i8** %18, align 8, !dbg !3727
  %20 = ptrtoint i8* %19 to i64, !dbg !3728
  %21 = load i64, i64* %6, align 8, !dbg !3729
  %22 = sub i64 %20, %21, !dbg !3730
  store i64 %22, i64* %8, align 8, !dbg !3726
  br label %23, !dbg !3731

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8, !dbg !3732
  %25 = icmp uge i64 %24, 8, !dbg !3732
  br i1 %25, label %26, label %30, !dbg !3732

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8, !dbg !3732
  %28 = icmp ule i64 %27, 39, !dbg !3732
  br i1 %28, label %29, label %30, !dbg !3735

29:                                               ; preds = %26
  br label %33, !dbg !3736

30:                                               ; preds = %26, %23
  br label %31, !dbg !3738

31:                                               ; preds = %30
  call void @_invalid_parameter_noinfo_noreturn() #15, !dbg !3740
  unreachable, !dbg !3740

32:                                               ; No predecessors!
  br label %33

33:                                               ; preds = %32, %29
  br label %34, !dbg !3735

34:                                               ; preds = %33
  %35 = load i64, i64* %6, align 8, !dbg !3742
  %36 = inttoptr i64 %35 to i8*, !dbg !3743
  %37 = load i8**, i8*** %4, align 8, !dbg !3744
  store i8* %36, i8** %37, align 8, !dbg !3745
  ret void, !dbg !3746
}

; Function Attrs: nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(i8*, i64) #7

; Function Attrs: noreturn
declare dso_local void @_invalid_parameter_noinfo_noreturn() #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %0) unnamed_addr #1 comdat align 2 !dbg !3747 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !3749, metadata !DIExpression()), !dbg !3751
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 0, !dbg !3752
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %4) #5, !dbg !3752
  ret void, !dbg !3754
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %0) unnamed_addr #1 comdat align 2 !dbg !3755 {
  %2 = alloca %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, align 8
  store %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %0, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  call void @llvm.dbg.declare(metadata %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, metadata !3756, metadata !DIExpression()), !dbg !3758
  %3 = load %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  ret void, !dbg !3759
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @"?_Get_first@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAAAEAU?$default_delete@VClassWithDestructor@@@2@XZ"(%"class.std::_Compressed_pair"* %0) #1 comdat align 2 !dbg !3760 {
  %2 = alloca %"class.std::_Compressed_pair"*, align 8
  store %"class.std::_Compressed_pair"* %0, %"class.std::_Compressed_pair"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair"** %2, metadata !3761, metadata !DIExpression()), !dbg !3762
  %3 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %2, align 8
  %4 = bitcast %"class.std::_Compressed_pair"* %3 to %"struct.std::default_delete"*, !dbg !3763
  ret %"struct.std::default_delete"* %4, !dbg !3764
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R?$default_delete@VClassWithDestructor@@@std@@QEBAXPEAVClassWithDestructor@@@Z"(%"struct.std::default_delete"* %0, %class.ClassWithDestructor* %1) #1 comdat align 2 !dbg !3765 {
  %3 = alloca %class.ClassWithDestructor*, align 8
  %4 = alloca %"struct.std::default_delete"*, align 8
  store %class.ClassWithDestructor* %1, %class.ClassWithDestructor** %3, align 8
  call void @llvm.dbg.declare(metadata %class.ClassWithDestructor** %3, metadata !3766, metadata !DIExpression()), !dbg !3767
  store %"struct.std::default_delete"* %0, %"struct.std::default_delete"** %4, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::default_delete"** %4, metadata !3768, metadata !DIExpression()), !dbg !3770
  %5 = load %"struct.std::default_delete"*, %"struct.std::default_delete"** %4, align 8
  %6 = load %class.ClassWithDestructor*, %class.ClassWithDestructor** %3, align 8, !dbg !3771
  %7 = icmp eq %class.ClassWithDestructor* %6, null, !dbg !3772
  br i1 %7, label %10, label %8, !dbg !3772

8:                                                ; preds = %2
  call void @"??1ClassWithDestructor@@QEAA@XZ"(%class.ClassWithDestructor* %6) #5, !dbg !3772
  %9 = bitcast %class.ClassWithDestructor* %6 to i8*, !dbg !3772
  call void @"??3@YAXPEAX@Z"(i8* %9) #17, !dbg !3772
  br label %10, !dbg !3772

10:                                               ; preds = %8, %2
  ret void, !dbg !3773
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX@Z"(i8*) #11

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_optional_access@std@@YAXXZ"() #12 comdat !dbg !3774 {
  %1 = alloca %"class.std::bad_optional_access", align 8
  %2 = bitcast %"class.std::bad_optional_access"* %1 to i8*, !dbg !3775
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 24, i1 false), !dbg !3775
  %3 = call %"class.std::bad_optional_access"* @"??0bad_optional_access@std@@QEAA@XZ"(%"class.std::bad_optional_access"* %1) #5, !dbg !3775
  %4 = bitcast %"class.std::bad_optional_access"* %1 to i8*, !dbg !3775
  call void @_CxxThrowException(i8* %4, %eh.ThrowInfo* @"_TI2?AVbad_optional_access@std@@") #15, !dbg !3775
  unreachable, !dbg !3775
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_optional_access"* @"??0bad_optional_access@std@@QEAA@XZ"(%"class.std::bad_optional_access"* returned %0) unnamed_addr #1 comdat align 2 !dbg !3776 {
  %2 = alloca %"class.std::bad_optional_access"*, align 8
  store %"class.std::bad_optional_access"* %0, %"class.std::bad_optional_access"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_optional_access"** %2, metadata !3822, metadata !DIExpression()), !dbg !3824
  %3 = load %"class.std::bad_optional_access"*, %"class.std::bad_optional_access"** %2, align 8
  %4 = bitcast %"class.std::bad_optional_access"* %3 to %"class.std::exception"*, !dbg !3825
  %5 = call %"class.std::exception"* @"??0exception@std@@QEAA@XZ"(%"class.std::exception"* %4) #5, !dbg !3825
  %6 = bitcast %"class.std::bad_optional_access"* %3 to i32 (...)***, !dbg !3825
  store i32 (...)** bitcast (i8** @"??_7bad_optional_access@std@@6B@" to i32 (...)**), i32 (...)*** %6, align 8, !dbg !3825
  ret %"class.std::bad_optional_access"* %3, !dbg !3825
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_optional_access"* @"??0bad_optional_access@std@@QEAA@AEBV01@@Z"(%"class.std::bad_optional_access"* returned %0, %"class.std::bad_optional_access"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !dbg !3826 {
  %3 = alloca %"class.std::bad_optional_access"*, align 8
  %4 = alloca %"class.std::bad_optional_access"*, align 8
  store %"class.std::bad_optional_access"* %1, %"class.std::bad_optional_access"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_optional_access"** %3, metadata !3831, metadata !DIExpression()), !dbg !3832
  store %"class.std::bad_optional_access"* %0, %"class.std::bad_optional_access"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_optional_access"** %4, metadata !3833, metadata !DIExpression()), !dbg !3832
  %5 = load %"class.std::bad_optional_access"*, %"class.std::bad_optional_access"** %4, align 8
  %6 = bitcast %"class.std::bad_optional_access"* %5 to %"class.std::exception"*, !dbg !3834
  %7 = load %"class.std::bad_optional_access"*, %"class.std::bad_optional_access"** %3, align 8, !dbg !3834
  %8 = bitcast %"class.std::bad_optional_access"* %7 to %"class.std::exception"*, !dbg !3834
  %9 = call %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* %6, %"class.std::exception"* nonnull align 8 dereferenceable(24) %8) #5, !dbg !3834
  %10 = bitcast %"class.std::bad_optional_access"* %5 to i32 (...)***, !dbg !3834
  store i32 (...)** bitcast (i8** @"??_7bad_optional_access@std@@6B@" to i32 (...)**), i32 (...)*** %10, align 8, !dbg !3834
  ret %"class.std::bad_optional_access"* %5, !dbg !3834
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* returned %0, %"class.std::exception"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3835 {
  %3 = alloca %"class.std::exception"*, align 8
  %4 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %1, %"class.std::exception"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %3, metadata !3836, metadata !DIExpression()), !dbg !3837
  store %"class.std::exception"* %0, %"class.std::exception"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %4, metadata !3838, metadata !DIExpression()), !dbg !3840
  %5 = load %"class.std::exception"*, %"class.std::exception"** %4, align 8
  %6 = bitcast %"class.std::exception"* %5 to i32 (...)***, !dbg !3841
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %6, align 8, !dbg !3841
  %7 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %5, i32 0, i32 1, !dbg !3842
  %8 = bitcast %struct.__std_exception_data* %7 to i8*, !dbg !3842
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false), !dbg !3842
  %9 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %5, i32 0, i32 1, !dbg !3843
  %10 = load %"class.std::exception"*, %"class.std::exception"** %3, align 8, !dbg !3845
  %11 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %10, i32 0, i32 1, !dbg !3846
  invoke void @__std_exception_copy(%struct.__std_exception_data* %11, %struct.__std_exception_data* %9)
          to label %12 unwind label %13, !dbg !3847

12:                                               ; preds = %2
  ret %"class.std::exception"* %5, !dbg !3848

13:                                               ; preds = %2
  %14 = cleanuppad within none [], !dbg !3847
  call void @__std_terminate() #18 [ "funclet"(token %14) ], !dbg !3847
  unreachable, !dbg !3847
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_optional_access@std@@UEAA@XZ"(%"class.std::bad_optional_access"* %0) unnamed_addr #1 comdat align 2 !dbg !3849 {
  %2 = alloca %"class.std::bad_optional_access"*, align 8
  store %"class.std::bad_optional_access"* %0, %"class.std::bad_optional_access"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_optional_access"** %2, metadata !3851, metadata !DIExpression()), !dbg !3852
  %3 = load %"class.std::bad_optional_access"*, %"class.std::bad_optional_access"** %2, align 8
  %4 = bitcast %"class.std::bad_optional_access"* %3 to %"class.std::exception"*, !dbg !3853
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %4) #5, !dbg !3853
  ret void, !dbg !3855
}

declare dso_local void @_CxxThrowException(i8*, %eh.ThrowInfo*)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@XZ"(%"class.std::exception"* returned %0) unnamed_addr #1 comdat align 2 !dbg !3856 {
  %2 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %0, %"class.std::exception"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %2, metadata !3857, metadata !DIExpression()), !dbg !3858
  %3 = load %"class.std::exception"*, %"class.std::exception"** %2, align 8
  %4 = bitcast %"class.std::exception"* %3 to i32 (...)***, !dbg !3859
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8, !dbg !3859
  %5 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %3, i32 0, i32 1, !dbg !3860
  %6 = bitcast %struct.__std_exception_data* %5 to i8*, !dbg !3860
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false), !dbg !3860
  ret %"class.std::exception"* %3, !dbg !3861
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_optional_access@std@@UEAAPEAXI@Z"(%"class.std::bad_optional_access"* %0, i32 %1) unnamed_addr #1 comdat align 2 !dbg !3862 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::bad_optional_access"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3863, metadata !DIExpression()), !dbg !3864
  store %"class.std::bad_optional_access"* %0, %"class.std::bad_optional_access"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_optional_access"** %5, metadata !3865, metadata !DIExpression()), !dbg !3864
  %6 = load %"class.std::bad_optional_access"*, %"class.std::bad_optional_access"** %5, align 8
  %7 = bitcast %"class.std::bad_optional_access"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1bad_optional_access@std@@UEAA@XZ"(%"class.std::bad_optional_access"* %6) #5, !dbg !3866
  %9 = icmp eq i32 %8, 0, !dbg !3866
  br i1 %9, label %12, label %10, !dbg !3866

10:                                               ; preds = %2
  %11 = bitcast %"class.std::bad_optional_access"* %6 to i8*, !dbg !3866
  call void @"??3@YAXPEAX@Z"(i8* %11) #17, !dbg !3866
  br label %12, !dbg !3866

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8, !dbg !3866
  ret i8* %13, !dbg !3866
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?what@bad_optional_access@std@@UEBAPEBDXZ"(%"class.std::bad_optional_access"* %0) unnamed_addr #1 comdat align 2 !dbg !3867 {
  %2 = alloca %"class.std::bad_optional_access"*, align 8
  store %"class.std::bad_optional_access"* %0, %"class.std::bad_optional_access"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_optional_access"** %2, metadata !3868, metadata !DIExpression()), !dbg !3870
  %3 = load %"class.std::bad_optional_access"*, %"class.std::bad_optional_access"** %2, align 8
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"??_C@_0BE@LMOOKEAD@Bad?5optional?5access?$AA@", i64 0, i64 0), !dbg !3871
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gexception@std@@UEAAPEAXI@Z"(%"class.std::exception"* %0, i32 %1) unnamed_addr #1 comdat align 2 !dbg !3872 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::exception"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3873, metadata !DIExpression()), !dbg !3874
  store %"class.std::exception"* %0, %"class.std::exception"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %5, metadata !3875, metadata !DIExpression()), !dbg !3874
  %6 = load %"class.std::exception"*, %"class.std::exception"** %5, align 8
  %7 = bitcast %"class.std::exception"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %6) #5, !dbg !3876
  %9 = icmp eq i32 %8, 0, !dbg !3876
  br i1 %9, label %12, label %10, !dbg !3876

10:                                               ; preds = %2
  %11 = bitcast %"class.std::exception"* %6 to i8*, !dbg !3876
  call void @"??3@YAXPEAX@Z"(i8* %11) #17, !dbg !3876
  br label %12, !dbg !3876

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8, !dbg !3877
  ret i8* %13, !dbg !3877
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?what@exception@std@@UEBAPEBDXZ"(%"class.std::exception"* %0) unnamed_addr #0 comdat align 2 !dbg !3878 {
  %2 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %0, %"class.std::exception"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %2, metadata !3879, metadata !DIExpression()), !dbg !3881
  %3 = load %"class.std::exception"*, %"class.std::exception"** %2, align 8
  %4 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %3, i32 0, i32 1, !dbg !3882
  %5 = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %4, i32 0, i32 0, !dbg !3883
  %6 = load i8*, i8** %5, align 8, !dbg !3883
  %7 = icmp ne i8* %6, null, !dbg !3882
  br i1 %7, label %8, label %12, !dbg !3882

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %3, i32 0, i32 1, !dbg !3884
  %10 = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %9, i32 0, i32 0, !dbg !3885
  %11 = load i8*, i8** %10, align 8, !dbg !3885
  br label %13, !dbg !3882

12:                                               ; preds = %1
  br label %13, !dbg !3882

13:                                               ; preds = %12, %8
  %14 = phi i8* [ %11, %8 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", i64 0, i64 0), %12 ], !dbg !3882
  ret i8* %14, !dbg !3886
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3887 {
  %2 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %0, %"class.std::exception"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %2, metadata !3888, metadata !DIExpression()), !dbg !3889
  %3 = load %"class.std::exception"*, %"class.std::exception"** %2, align 8
  %4 = bitcast %"class.std::exception"* %3 to i32 (...)***, !dbg !3890
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8, !dbg !3890
  %5 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %3, i32 0, i32 1, !dbg !3891
  invoke void @__std_exception_destroy(%struct.__std_exception_data* %5)
          to label %6 unwind label %7, !dbg !3893

6:                                                ; preds = %1
  ret void, !dbg !3894

7:                                                ; preds = %1
  %8 = cleanuppad within none [], !dbg !3893
  call void @__std_terminate() #18 [ "funclet"(token %8) ], !dbg !3893
  unreachable, !dbg !3893
}

declare dso_local void @__std_exception_destroy(%struct.__std_exception_data*) #6

declare dso_local void @__std_exception_copy(%struct.__std_exception_data*, %struct.__std_exception_data*) #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair.0"* @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair.0"* returned %0, i8 %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3895 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca %"class.std::_Compressed_pair.0"*, align 8
  %5 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %3, i32 0, i32 0
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata %"struct.std::_Zero_then_variadic_args_t"* %3, metadata !3899, metadata !DIExpression()), !dbg !3900
  store %"class.std::_Compressed_pair.0"* %0, %"class.std::_Compressed_pair.0"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.0"** %4, metadata !3901, metadata !DIExpression()), !dbg !3902
  %6 = load %"class.std::_Compressed_pair.0"*, %"class.std::_Compressed_pair.0"** %4, align 8
  %7 = bitcast %"class.std::_Compressed_pair.0"* %6 to %"class.std::allocator"*, !dbg !3903
  %8 = call %"class.std::allocator"* @"??0?$allocator@D@std@@QEAA@XZ"(%"class.std::allocator"* %7) #5, !dbg !3904
  %9 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %6, i32 0, i32 0, !dbg !3905
  %10 = call %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %9), !dbg !3905
  invoke void @llvm.eha.scope.begin()
          to label %11 unwind label %12, !dbg !3905

11:                                               ; preds = %2
  ret %"class.std::_Compressed_pair.0"* %6, !dbg !3906

12:                                               ; preds = %2
  %13 = cleanuppad within none [], !dbg !3907
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %9) #5 [ "funclet"(token %13) ], !dbg !3907
  cleanupret from %13 unwind to caller, !dbg !3907
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* returned %0, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %1, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 !dbg !3909 {
  %4 = alloca %"struct.std::_Container_base0"*, align 8
  %5 = alloca %"struct.std::_Fake_allocator"*, align 8
  %6 = alloca %"struct.std::_Fake_proxy_ptr_impl"*, align 8
  store %"struct.std::_Container_base0"* %2, %"struct.std::_Container_base0"** %4, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Container_base0"** %4, metadata !3910, metadata !DIExpression()), !dbg !3911
  store %"struct.std::_Fake_allocator"* %1, %"struct.std::_Fake_allocator"** %5, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_allocator"** %5, metadata !3912, metadata !DIExpression()), !dbg !3913
  store %"struct.std::_Fake_proxy_ptr_impl"* %0, %"struct.std::_Fake_proxy_ptr_impl"** %6, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"** %6, metadata !3914, metadata !DIExpression()), !dbg !3916
  %7 = load %"struct.std::_Fake_proxy_ptr_impl"*, %"struct.std::_Fake_proxy_ptr_impl"** %6, align 8
  ret %"struct.std::_Fake_proxy_ptr_impl"* %7, !dbg !3917
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %0) #1 comdat align 2 !dbg !3918 {
  %2 = alloca %"class.std::basic_string"*, align 8
  %3 = alloca i8, align 1
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !3919, metadata !DIExpression()), !dbg !3920
  %4 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %5 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i32 0, i32 0, !dbg !3921
  %6 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %5, i32 0, i32 0, !dbg !3922
  %7 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %6, i32 0, i32 1, !dbg !3923
  store i64 0, i64* %7, align 8, !dbg !3924
  %8 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i32 0, i32 0, !dbg !3925
  %9 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %8, i32 0, i32 0, !dbg !3926
  %10 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %9, i32 0, i32 2, !dbg !3927
  store i64 15, i64* %10, align 8, !dbg !3928
  store i8 0, i8* %3, align 1, !dbg !3929
  %11 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i32 0, i32 0, !dbg !3930
  %12 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %11, i32 0, i32 0, !dbg !3931
  %13 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %12, i32 0, i32 0, !dbg !3932
  %14 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %13 to [16 x i8]*, !dbg !3933
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0, !dbg !3930
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %15, i8* nonnull align 1 dereferenceable(1) %3) #5, !dbg !3934
  ret void, !dbg !3935
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %0, i8* %1) #0 comdat align 2 !dbg !3936 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3937, metadata !DIExpression()), !dbg !3938
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !3939, metadata !DIExpression()), !dbg !3940
  %5 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %6 = load i8*, i8** %3, align 8, !dbg !3941
  %7 = call i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %6) #5, !dbg !3942
  %8 = call i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %7) #5, !dbg !3943
  %9 = load i8*, i8** %3, align 8, !dbg !3944
  %10 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %5, i8* %9, i64 %8), !dbg !3945
  ret %"class.std::basic_string"* %10, !dbg !3946
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %0) #1 comdat align 2 !dbg !3947 {
  %2 = alloca %"struct.std::_Fake_proxy_ptr_impl"*, align 8
  store %"struct.std::_Fake_proxy_ptr_impl"* %0, %"struct.std::_Fake_proxy_ptr_impl"** %2, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"** %2, metadata !3948, metadata !DIExpression()), !dbg !3949
  %3 = load %"struct.std::_Fake_proxy_ptr_impl"*, %"struct.std::_Fake_proxy_ptr_impl"** %2, align 8
  ret void, !dbg !3950
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::allocator"* @"??0?$allocator@D@std@@QEAA@XZ"(%"class.std::allocator"* returned %0) unnamed_addr #1 comdat align 2 !dbg !3951 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !3952, metadata !DIExpression()), !dbg !3953
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret %"class.std::allocator"* %3, !dbg !3954
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* returned %0) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !3955 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !3956, metadata !DIExpression()), !dbg !3957
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  %4 = bitcast %"class.std::_String_val"* %3 to %"struct.std::_Container_base0"*, !dbg !3958
  %5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 0, !dbg !3959
  %6 = call %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5), !dbg !3959
  invoke void @llvm.eha.scope.begin()
          to label %7 unwind label %10, !dbg !3959

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 1, !dbg !3960
  store i64 0, i64* %8, align 8, !dbg !3960
  %9 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %3, i32 0, i32 2, !dbg !3961
  store i64 0, i64* %9, align 8, !dbg !3961
  ret %"class.std::_String_val"* %3, !dbg !3962

10:                                               ; preds = %1
  %11 = cleanuppad within none [], !dbg !3963
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5) #5 [ "funclet"(token %11) ], !dbg !3963
  cleanupret from %11 unwind to caller, !dbg !3963
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* returned %0) unnamed_addr #0 comdat align 2 !dbg !3965 {
  %2 = alloca %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, align 8
  store %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %0, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  call void @llvm.dbg.declare(metadata %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, metadata !3966, metadata !DIExpression()), !dbg !3967
  %3 = load %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %2, align 8
  ret %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %3, !dbg !3968
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %0, i8* %1, i64 %2) #0 comdat align 2 !dbg !3969 {
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"class.std::basic_string"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %class.anon, align 1
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3970, metadata !DIExpression()), !dbg !3971
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3972, metadata !DIExpression()), !dbg !3973
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %7, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %7, metadata !3974, metadata !DIExpression()), !dbg !3975
  %11 = load %"class.std::basic_string"*, %"class.std::basic_string"** %7, align 8
  %12 = load i64, i64* %5, align 8, !dbg !3976
  %13 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i32 0, i32 0, !dbg !3978
  %14 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %13, i32 0, i32 0, !dbg !3979
  %15 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %14, i32 0, i32 2, !dbg !3980
  %16 = load i64, i64* %15, align 8, !dbg !3980
  %17 = icmp ule i64 %12, %16, !dbg !3981
  br i1 %17, label %18, label %33, !dbg !3982

18:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3983, metadata !DIExpression()), !dbg !3985
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i32 0, i32 0, !dbg !3986
  %20 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %19, i32 0, i32 0, !dbg !3987
  %21 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %20) #5, !dbg !3988
  store i8* %21, i8** %8, align 8, !dbg !3985
  %22 = load i64, i64* %5, align 8, !dbg !3989
  %23 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i32 0, i32 0, !dbg !3990
  %24 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %23, i32 0, i32 0, !dbg !3991
  %25 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %24, i32 0, i32 1, !dbg !3992
  store i64 %22, i64* %25, align 8, !dbg !3993
  %26 = load i64, i64* %5, align 8, !dbg !3994
  %27 = load i8*, i8** %6, align 8, !dbg !3995
  %28 = load i8*, i8** %8, align 8, !dbg !3996
  %29 = call i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %28, i8* %27, i64 %26) #5, !dbg !3997
  store i8 0, i8* %9, align 1, !dbg !3998
  %30 = load i8*, i8** %8, align 8, !dbg !3999
  %31 = load i64, i64* %5, align 8, !dbg !4000
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !3999
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %32, i8* nonnull align 1 dereferenceable(1) %9) #5, !dbg !4001
  store %"class.std::basic_string"* %11, %"class.std::basic_string"** %4, align 8, !dbg !4002
  br label %39, !dbg !4002

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8, !dbg !4003
  %35 = load i64, i64* %5, align 8, !dbg !4004
  %36 = getelementptr inbounds %class.anon, %class.anon* %10, i32 0, i32 0, !dbg !4005
  %37 = load i8, i8* %36, align 1, !dbg !4005
  %38 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(%"class.std::basic_string"* %11, i64 %35, i8 %37, i8* %34), !dbg !4005
  store %"class.std::basic_string"* %38, %"class.std::basic_string"** %4, align 8, !dbg !4006
  br label %39, !dbg !4006

39:                                               ; preds = %33, %18
  %40 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8, !dbg !4007
  ret %"class.std::basic_string"* %40, !dbg !4007
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %0) #1 comdat !dbg !4008 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4013, metadata !DIExpression()), !dbg !4014
  %3 = load i64, i64* %2, align 8, !dbg !4015
  ret i64 %3, !dbg !4016
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %0) #1 comdat align 2 !dbg !4017 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4018, metadata !DIExpression()), !dbg !4019
  %3 = load i8*, i8** %2, align 8, !dbg !4020
  %4 = call i64 @strlen(i8* %3) #5, !dbg !4022
  ret i64 %4, !dbg !4023
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %0) #1 comdat align 2 !dbg !4024 {
  %2 = alloca %"class.std::_String_val"*, align 8
  %3 = alloca i8*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !4025, metadata !DIExpression()), !dbg !4026
  %4 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4027, metadata !DIExpression()), !dbg !4028
  %5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !4029
  %6 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5 to [16 x i8]*, !dbg !4030
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !4029
  store i8* %7, i8** %3, align 8, !dbg !4028
  %8 = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %4) #5, !dbg !4031
  br i1 %8, label %9, label %14, !dbg !4033

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !4034
  %11 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %10 to i8**, !dbg !4036
  %12 = load i8*, i8** %11, align 8, !dbg !4036
  %13 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %12) #5, !dbg !4037
  store i8* %13, i8** %3, align 8, !dbg !4038
  br label %14, !dbg !4039

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %3, align 8, !dbg !4040
  ret i8* %15, !dbg !4041
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %0, i8* %1, i64 %2) #1 comdat align 2 !dbg !4042 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %2, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4043, metadata !DIExpression()), !dbg !4044
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4045, metadata !DIExpression()), !dbg !4046
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4047, metadata !DIExpression()), !dbg !4048
  %7 = load i8*, i8** %6, align 8, !dbg !4049
  %8 = load i8*, i8** %5, align 8, !dbg !4050
  %9 = load i64, i64* %4, align 8, !dbg !4051
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %9, i1 false), !dbg !4052
  ret i8* %7, !dbg !4053
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(%"class.std::basic_string"* %0, i64 %1, i8 %2, i8* %3) #0 comdat align 2 !dbg !4054 {
  %5 = alloca %class.anon, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::basic_string"*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::allocator"*, align 8
  %12 = alloca i8*, align 8
  %13 = getelementptr inbounds %class.anon, %class.anon* %5, i32 0, i32 0
  store i8 %2, i8* %13, align 1
  store i8* %3, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4064, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.declare(metadata %class.anon* %5, metadata !4066, metadata !DIExpression()), !dbg !4067
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4068, metadata !DIExpression()), !dbg !4069
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %8, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %8, metadata !4070, metadata !DIExpression()), !dbg !4071
  %14 = load %"class.std::basic_string"*, %"class.std::basic_string"** %8, align 8
  %15 = load i64, i64* %7, align 8, !dbg !4072
  %16 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %14) #5, !dbg !4074
  %17 = icmp ugt i64 %15, %16, !dbg !4075
  br i1 %17, label %18, label %19, !dbg !4076

18:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #15, !dbg !4077
  unreachable, !dbg !4077

19:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4079, metadata !DIExpression()), !dbg !4080
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4081
  %21 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %20, i32 0, i32 0, !dbg !4082
  %22 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %21, i32 0, i32 2, !dbg !4083
  %23 = load i64, i64* %22, align 8, !dbg !4083
  store i64 %23, i64* %9, align 8, !dbg !4080
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4084, metadata !DIExpression()), !dbg !4085
  %24 = load i64, i64* %7, align 8, !dbg !4086
  %25 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %14, i64 %24) #5, !dbg !4087
  store i64 %25, i64* %10, align 8, !dbg !4085
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %11, metadata !4088, metadata !DIExpression()), !dbg !4089
  %26 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %14) #5, !dbg !4090
  store %"class.std::allocator"* %26, %"class.std::allocator"** %11, align 8, !dbg !4089
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4091, metadata !DIExpression()), !dbg !4092
  %27 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8, !dbg !4093
  %28 = load i64, i64* %10, align 8, !dbg !4094
  %29 = add i64 %28, 1, !dbg !4095
  %30 = call i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %27, i64 %29), !dbg !4096, !heapallocsite !67
  store i8* %30, i8** %12, align 8, !dbg !4092
  %31 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4097
  %32 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %31, i32 0, i32 0, !dbg !4098
  %33 = bitcast %"class.std::_String_val"* %32 to %"struct.std::_Container_base0"*, !dbg !4097
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %33) #5, !dbg !4099
  %34 = load i64, i64* %7, align 8, !dbg !4100
  %35 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4101
  %36 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %35, i32 0, i32 0, !dbg !4102
  %37 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %36, i32 0, i32 1, !dbg !4103
  store i64 %34, i64* %37, align 8, !dbg !4104
  %38 = load i64, i64* %10, align 8, !dbg !4105
  %39 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4106
  %40 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %39, i32 0, i32 0, !dbg !4107
  %41 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %40, i32 0, i32 2, !dbg !4108
  store i64 %38, i64* %41, align 8, !dbg !4109
  %42 = load i8*, i8** %6, align 8, !dbg !4110
  %43 = load i64, i64* %7, align 8, !dbg !4111
  %44 = load i8*, i8** %12, align 8, !dbg !4112
  %45 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %44) #5, !dbg !4113
  call void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(%class.anon* %5, i8* %45, i64 %43, i8* %42), !dbg !4114
  %46 = load i64, i64* %9, align 8, !dbg !4115
  %47 = icmp ule i64 16, %46, !dbg !4117
  br i1 %47, label %48, label %62, !dbg !4118

48:                                               ; preds = %19
  %49 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8, !dbg !4119
  %50 = load i64, i64* %9, align 8, !dbg !4121
  %51 = add i64 %50, 1, !dbg !4122
  %52 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4123
  %53 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %52, i32 0, i32 0, !dbg !4124
  %54 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %53, i32 0, i32 0, !dbg !4125
  %55 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %54 to i8**, !dbg !4126
  %56 = load i8*, i8** %55, align 8, !dbg !4126
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %49, i8* %56, i64 %51), !dbg !4127
  %57 = load i8*, i8** %12, align 8, !dbg !4128
  %58 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4129
  %59 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %58, i32 0, i32 0, !dbg !4130
  %60 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %59, i32 0, i32 0, !dbg !4131
  %61 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %60 to i8**, !dbg !4132
  store i8* %57, i8** %61, align 8, !dbg !4133
  br label %67, !dbg !4134

62:                                               ; preds = %19
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4135
  %64 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %63, i32 0, i32 0, !dbg !4137
  %65 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %64, i32 0, i32 0, !dbg !4138
  %66 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %65 to i8**, !dbg !4139
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %66, i8** nonnull align 8 dereferenceable(8) %12) #5, !dbg !4140
  br label %67

67:                                               ; preds = %62, %48
  ret %"class.std::basic_string"* %14, !dbg !4141
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %0) #1 comdat !dbg !4142 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4144, metadata !DIExpression()), !dbg !4145
  %3 = load i8*, i8** %2, align 8, !dbg !4146
  ret i8* %3, !dbg !4147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %0) #1 comdat align 2 !dbg !4148 {
  %2 = alloca %"class.std::basic_string"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !4149, metadata !DIExpression()), !dbg !4151
  %8 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4152, metadata !DIExpression()), !dbg !4153
  %9 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %8) #5, !dbg !4154
  %10 = call i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9) #5, !dbg !4155
  store i64 %10, i64* %3, align 8, !dbg !4153
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4156, metadata !DIExpression()), !dbg !4157
  store i64 16, i64* %5, align 8, !dbg !4158
  %11 = call nonnull align 8 dereferenceable(8) i64* @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %3, i64* nonnull align 8 dereferenceable(8) %5) #5, !dbg !4159
  %12 = load i64, i64* %11, align 8, !dbg !4159
  store i64 %12, i64* %4, align 8, !dbg !4157
  %13 = load i64, i64* %4, align 8, !dbg !4160
  %14 = sub i64 %13, 1, !dbg !4161
  store i64 %14, i64* %6, align 8, !dbg !4160
  %15 = call i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #5, !dbg !4162
  store i64 %15, i64* %7, align 8, !dbg !4163
  %16 = call nonnull align 8 dereferenceable(8) i64* @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %7, i64* nonnull align 8 dereferenceable(8) %6) #5, !dbg !4164
  %17 = load i64, i64* %16, align 8, !dbg !4164
  ret i64 %17, !dbg !4165
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #12 comdat !dbg !4166 {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@", i64 0, i64 0)) #15, !dbg !4167
  unreachable, !dbg !4167
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %0, i64 %1) #1 comdat align 2 !dbg !4168 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4169, metadata !DIExpression()), !dbg !4170
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !4171, metadata !DIExpression()), !dbg !4172
  %5 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %6 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %5) #5, !dbg !4173
  %7 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i32 0, i32 0, !dbg !4174
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %7, i32 0, i32 0, !dbg !4175
  %9 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %8, i32 0, i32 2, !dbg !4176
  %10 = load i64, i64* %9, align 8, !dbg !4176
  %11 = load i64, i64* %3, align 8, !dbg !4177
  %12 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 %11, i64 %10, i64 %6) #5, !dbg !4178
  ret i64 %12, !dbg !4179
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %0, i64 %1) #0 comdat align 2 !dbg !4180 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4181, metadata !DIExpression()), !dbg !4182
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !4183, metadata !DIExpression()), !dbg !4184
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %6 = load i64, i64* %3, align 8, !dbg !4185
  %7 = call i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 %6), !dbg !4186
  %8 = call i8* @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 %7), !dbg !4187, !heapallocsite !67
  ret i8* %8, !dbg !4188
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(%class.anon* %0, i8* %1, i64 %2, i8* %3) #0 comdat align 2 !dbg !4189 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %class.anon*, align 8
  %9 = alloca i8, align 1
  store i8* %3, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4198, metadata !DIExpression()), !dbg !4199
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4200, metadata !DIExpression()), !dbg !4201
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4202, metadata !DIExpression()), !dbg !4203
  store %class.anon* %0, %class.anon** %8, align 8
  call void @llvm.dbg.declare(metadata %class.anon** %8, metadata !4204, metadata !DIExpression()), !dbg !4206
  %10 = load %class.anon*, %class.anon** %8, align 8
  %11 = load i64, i64* %6, align 8, !dbg !4207
  %12 = load i8*, i8** %5, align 8, !dbg !4208
  %13 = load i8*, i8** %7, align 8, !dbg !4209
  %14 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %13, i8* %12, i64 %11) #5, !dbg !4210
  store i8 0, i8* %9, align 1, !dbg !4211
  %15 = load i8*, i8** %7, align 8, !dbg !4212
  %16 = load i64, i64* %6, align 8, !dbg !4213
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !4212
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %17, i8* nonnull align 1 dereferenceable(1) %9) #5, !dbg !4214
  ret void, !dbg !4215
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0, i8** nonnull align 8 dereferenceable(8) %1) #1 comdat !dbg !4216 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %1, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !4224, metadata !DIExpression()), !dbg !4225
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !4226, metadata !DIExpression()), !dbg !4227
  %5 = load i8**, i8*** %4, align 8, !dbg !4228
  %6 = call i8** @"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %5) #5, !dbg !4229
  %7 = bitcast i8** %6 to i8*, !dbg !4229
  %8 = bitcast i8* %7 to i8**, !dbg !4230
  %9 = load i8**, i8*** %3, align 8, !dbg !4231
  %10 = call nonnull align 8 dereferenceable(8) i8** @"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %9) #5, !dbg !4232
  %11 = load i8*, i8** %10, align 8, !dbg !4232
  store i8* %11, i8** %8, align 8, !dbg !4230
  ret void, !dbg !4233
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 !dbg !4234 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !4235, metadata !DIExpression()), !dbg !4236
  ret i64 -1, !dbg !4237
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %0) #1 comdat align 2 !dbg !4238 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !4239, metadata !DIExpression()), !dbg !4240
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i32 0, i32 0, !dbg !4241
  %5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair.0"* %4) #5, !dbg !4242
  ret %"class.std::allocator"* %5, !dbg !4243
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #1 comdat !dbg !4244 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %1, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !4250, metadata !DIExpression()), !dbg !4251
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4252, metadata !DIExpression()), !dbg !4253
  %5 = load i64*, i64** %4, align 8, !dbg !4254
  %6 = load i64, i64* %5, align 8, !dbg !4254
  %7 = load i64*, i64** %3, align 8, !dbg !4255
  %8 = load i64, i64* %7, align 8, !dbg !4255
  %9 = icmp ult i64 %6, %8, !dbg !4256
  br i1 %9, label %10, label %12, !dbg !4254

10:                                               ; preds = %2
  %11 = load i64*, i64** %3, align 8, !dbg !4257
  br label %14, !dbg !4254

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !4258
  br label %14, !dbg !4254

14:                                               ; preds = %12, %10
  %15 = phi i64* [ %11, %10 ], [ %13, %12 ], !dbg !4254
  ret i64* %15, !dbg !4259
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #1 comdat !dbg !4260 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %1, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !4261, metadata !DIExpression()), !dbg !4262
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4263, metadata !DIExpression()), !dbg !4264
  %5 = load i64*, i64** %3, align 8, !dbg !4265
  %6 = load i64, i64* %5, align 8, !dbg !4265
  %7 = load i64*, i64** %4, align 8, !dbg !4266
  %8 = load i64, i64* %7, align 8, !dbg !4266
  %9 = icmp ult i64 %6, %8, !dbg !4267
  br i1 %9, label %10, label %12, !dbg !4265

10:                                               ; preds = %2
  %11 = load i64*, i64** %3, align 8, !dbg !4268
  br label %14, !dbg !4265

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !4269
  br label %14, !dbg !4265

14:                                               ; preds = %12, %10
  %15 = phi i64* [ %11, %10 ], [ %13, %12 ], !dbg !4265
  ret i64* %15, !dbg !4270
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #1 comdat align 2 !dbg !4271 {
  ret i64 9223372036854775807, !dbg !4326
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair.0"* %0) #1 comdat align 2 !dbg !4327 {
  %2 = alloca %"class.std::_Compressed_pair.0"*, align 8
  store %"class.std::_Compressed_pair.0"* %0, %"class.std::_Compressed_pair.0"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.0"** %2, metadata !4328, metadata !DIExpression()), !dbg !4330
  %3 = load %"class.std::_Compressed_pair.0"*, %"class.std::_Compressed_pair.0"** %2, align 8
  %4 = bitcast %"class.std::_Compressed_pair.0"* %3 to %"class.std::allocator"*, !dbg !4331
  ret %"class.std::allocator"* %4, !dbg !4332
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(i8*) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 %0, i64 %1, i64 %2) #1 comdat align 2 !dbg !4333 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4334, metadata !DIExpression()), !dbg !4335
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4336, metadata !DIExpression()), !dbg !4337
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4340, metadata !DIExpression()), !dbg !4341
  %10 = load i64, i64* %7, align 8, !dbg !4342
  %11 = or i64 %10, 15, !dbg !4343
  store i64 %11, i64* %8, align 8, !dbg !4341
  %12 = load i64, i64* %8, align 8, !dbg !4344
  %13 = load i64, i64* %5, align 8, !dbg !4346
  %14 = icmp ugt i64 %12, %13, !dbg !4347
  br i1 %14, label %15, label %17, !dbg !4348

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8, !dbg !4349
  store i64 %16, i64* %4, align 8, !dbg !4351
  br label %33, !dbg !4351

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8, !dbg !4352
  %19 = load i64, i64* %5, align 8, !dbg !4354
  %20 = load i64, i64* %6, align 8, !dbg !4355
  %21 = udiv i64 %20, 2, !dbg !4356
  %22 = sub i64 %19, %21, !dbg !4357
  %23 = icmp ugt i64 %18, %22, !dbg !4358
  br i1 %23, label %24, label %26, !dbg !4359

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8, !dbg !4360
  store i64 %25, i64* %4, align 8, !dbg !4362
  br label %33, !dbg !4362

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8, !dbg !4363
  %28 = load i64, i64* %6, align 8, !dbg !4364
  %29 = udiv i64 %28, 2, !dbg !4365
  %30 = add i64 %27, %29, !dbg !4366
  store i64 %30, i64* %9, align 8, !dbg !4363
  %31 = call nonnull align 8 dereferenceable(8) i64* @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %8, i64* nonnull align 8 dereferenceable(8) %9) #5, !dbg !4367
  %32 = load i64, i64* %31, align 8, !dbg !4367
  store i64 %32, i64* %4, align 8, !dbg !4368
  br label %33, !dbg !4368

33:                                               ; preds = %26, %24, %15
  %34 = load i64, i64* %4, align 8, !dbg !4369
  ret i64 %34, !dbg !4369
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 %0) #0 comdat !dbg !4370 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4381, metadata !DIExpression()), !dbg !4382
  %4 = load i64, i64* %3, align 8, !dbg !4383
  %5 = icmp uge i64 %4, 4096, !dbg !4385
  br i1 %5, label %6, label %9, !dbg !4386

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8, !dbg !4387
  %8 = call i8* @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 %7), !dbg !4389, !heapallocsite !53
  store i8* %8, i8** %2, align 8, !dbg !4390
  br label %16, !dbg !4390

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !4391
  %11 = icmp ne i64 %10, 0, !dbg !4393
  br i1 %11, label %12, label %15, !dbg !4394

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8, !dbg !4395
  %14 = call i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %13), !dbg !4397, !heapallocsite !53
  store i8* %14, i8** %2, align 8, !dbg !4398
  br label %16, !dbg !4398

15:                                               ; preds = %9
  store i8* null, i8** %2, align 8, !dbg !4399
  br label %16, !dbg !4399

16:                                               ; preds = %15, %12, %6
  %17 = load i8*, i8** %2, align 8, !dbg !4400
  ret i8* %17, !dbg !4400
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 %0) #0 comdat !dbg !4401 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4404, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4406, metadata !DIExpression()), !dbg !4407
  store i8 0, i8* %3, align 1, !dbg !4407
  %4 = load i64, i64* %2, align 8, !dbg !4408
  %5 = mul i64 %4, 1, !dbg !4409
  ret i64 %5, !dbg !4410
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 %0) #0 comdat !dbg !4411 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4414, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4416, metadata !DIExpression()), !dbg !4417
  %6 = load i64, i64* %2, align 8, !dbg !4418
  %7 = add i64 39, %6, !dbg !4419
  store i64 %7, i64* %3, align 8, !dbg !4417
  %8 = load i64, i64* %3, align 8, !dbg !4420
  %9 = load i64, i64* %2, align 8, !dbg !4422
  %10 = icmp ule i64 %8, %9, !dbg !4423
  br i1 %10, label %11, label %12, !dbg !4424

11:                                               ; preds = %1
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #15, !dbg !4425
  unreachable, !dbg !4425

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4427, metadata !DIExpression()), !dbg !4428
  %13 = load i64, i64* %3, align 8, !dbg !4429
  %14 = call i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %13), !dbg !4430, !heapallocsite !53
  %15 = ptrtoint i8* %14 to i64, !dbg !4431
  store i64 %15, i64* %4, align 8, !dbg !4428
  br label %16, !dbg !4432

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8, !dbg !4433
  %18 = icmp ne i64 %17, 0, !dbg !4433
  br i1 %18, label %19, label %20, !dbg !4436

19:                                               ; preds = %16
  br label %23, !dbg !4437

20:                                               ; preds = %16
  br label %21, !dbg !4439

21:                                               ; preds = %20
  call void @_invalid_parameter_noinfo_noreturn() #15, !dbg !4441
  unreachable, !dbg !4441

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %19
  br label %24, !dbg !4436

24:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4443, metadata !DIExpression()), !dbg !4445
  %25 = load i64, i64* %4, align 8, !dbg !4446
  %26 = add i64 %25, 39, !dbg !4447
  %27 = and i64 %26, -32, !dbg !4448
  %28 = inttoptr i64 %27 to i8*, !dbg !4449
  store i8* %28, i8** %5, align 8, !dbg !4445
  %29 = load i64, i64* %4, align 8, !dbg !4450
  %30 = load i8*, i8** %5, align 8, !dbg !4451
  %31 = bitcast i8* %30 to i64*, !dbg !4452
  %32 = getelementptr inbounds i64, i64* %31, i64 -1, !dbg !4452
  store i64 %29, i64* %32, align 8, !dbg !4453
  %33 = load i8*, i8** %5, align 8, !dbg !4454
  ret i8* %33, !dbg !4455
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %0) #0 comdat align 2 !dbg !4456 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4457, metadata !DIExpression()), !dbg !4458
  %3 = load i64, i64* %2, align 8, !dbg !4459
  %4 = call noalias nonnull i8* @"??2@YAPEAX_K@Z"(i64 %3) #19, !dbg !4460, !heapallocsite !53
  ret i8* %4, !dbg !4461
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #12 comdat !dbg !4462 {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@XZ"(%"class.std::bad_array_new_length"* %1) #5, !dbg !4463
  %3 = bitcast %"class.std::bad_array_new_length"* %1 to i8*, !dbg !4463
  call void @_CxxThrowException(i8* %3, %eh.ThrowInfo* @"_TI3?AVbad_array_new_length@std@@") #15, !dbg !4463
  unreachable, !dbg !4463
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@XZ"(%"class.std::bad_array_new_length"* returned %0) unnamed_addr #1 comdat align 2 !dbg !4464 {
  %2 = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %2, metadata !4482, metadata !DIExpression()), !dbg !4484
  %3 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %2, align 8
  %4 = bitcast %"class.std::bad_array_new_length"* %3 to %"class.std::bad_alloc"*, !dbg !4485
  %5 = call %"class.std::bad_alloc"* @"??0bad_alloc@std@@AEAA@QEBD@Z"(%"class.std::bad_alloc"* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@", i64 0, i64 0)) #5, !dbg !4486
  %6 = bitcast %"class.std::bad_array_new_length"* %3 to i32 (...)***, !dbg !4485
  store i32 (...)** bitcast (i8** @"??_7bad_array_new_length@std@@6B@" to i32 (...)**), i32 (...)*** %6, align 8, !dbg !4485
  ret %"class.std::bad_array_new_length"* %3, !dbg !4487
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(%"class.std::bad_array_new_length"* returned %0, %"class.std::bad_array_new_length"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !dbg !4488 {
  %3 = alloca %"class.std::bad_array_new_length"*, align 8
  %4 = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %1, %"class.std::bad_array_new_length"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %3, metadata !4494, metadata !DIExpression()), !dbg !4495
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %4, metadata !4496, metadata !DIExpression()), !dbg !4495
  %5 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %4, align 8
  %6 = bitcast %"class.std::bad_array_new_length"* %5 to %"class.std::bad_alloc"*, !dbg !4497
  %7 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %3, align 8, !dbg !4497
  %8 = bitcast %"class.std::bad_array_new_length"* %7 to %"class.std::bad_alloc"*, !dbg !4497
  %9 = call %"class.std::bad_alloc"* @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(%"class.std::bad_alloc"* %6, %"class.std::bad_alloc"* nonnull align 8 dereferenceable(24) %8) #5, !dbg !4497
  %10 = bitcast %"class.std::bad_array_new_length"* %5 to i32 (...)***, !dbg !4497
  store i32 (...)** bitcast (i8** @"??_7bad_array_new_length@std@@6B@" to i32 (...)**), i32 (...)*** %10, align 8, !dbg !4497
  ret %"class.std::bad_array_new_length"* %5, !dbg !4497
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_alloc"* @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(%"class.std::bad_alloc"* returned %0, %"class.std::bad_alloc"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !dbg !4498 {
  %3 = alloca %"class.std::bad_alloc"*, align 8
  %4 = alloca %"class.std::bad_alloc"*, align 8
  store %"class.std::bad_alloc"* %1, %"class.std::bad_alloc"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %3, metadata !4504, metadata !DIExpression()), !dbg !4505
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %4, metadata !4506, metadata !DIExpression()), !dbg !4505
  %5 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %4, align 8
  %6 = bitcast %"class.std::bad_alloc"* %5 to %"class.std::exception"*, !dbg !4508
  %7 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %3, align 8, !dbg !4508
  %8 = bitcast %"class.std::bad_alloc"* %7 to %"class.std::exception"*, !dbg !4508
  %9 = call %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* %6, %"class.std::exception"* nonnull align 8 dereferenceable(24) %8) #5, !dbg !4508
  %10 = bitcast %"class.std::bad_alloc"* %5 to i32 (...)***, !dbg !4508
  store i32 (...)** bitcast (i8** @"??_7bad_alloc@std@@6B@" to i32 (...)**), i32 (...)*** %10, align 8, !dbg !4508
  ret %"class.std::bad_alloc"* %5, !dbg !4508
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(%"class.std::bad_array_new_length"* %0) unnamed_addr #1 comdat align 2 !dbg !4509 {
  %2 = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %2, metadata !4511, metadata !DIExpression()), !dbg !4512
  %3 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %2, align 8
  %4 = bitcast %"class.std::bad_array_new_length"* %3 to %"class.std::bad_alloc"*, !dbg !4513
  call void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %4) #5, !dbg !4513
  ret void, !dbg !4515
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_alloc"* @"??0bad_alloc@std@@AEAA@QEBD@Z"(%"class.std::bad_alloc"* returned %0, i8* %1) unnamed_addr #1 comdat align 2 !dbg !4516 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::bad_alloc"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4517, metadata !DIExpression()), !dbg !4518
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %4, metadata !4519, metadata !DIExpression()), !dbg !4520
  %5 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %4, align 8
  %6 = bitcast %"class.std::bad_alloc"* %5 to %"class.std::exception"*, !dbg !4521
  %7 = load i8*, i8** %3, align 8, !dbg !4522
  %8 = call %"class.std::exception"* @"??0exception@std@@QEAA@QEBDH@Z"(%"class.std::exception"* %6, i8* %7, i32 1) #5, !dbg !4523
  %9 = bitcast %"class.std::bad_alloc"* %5 to i32 (...)***, !dbg !4521
  store i32 (...)** bitcast (i8** @"??_7bad_alloc@std@@6B@" to i32 (...)**), i32 (...)*** %9, align 8, !dbg !4521
  ret %"class.std::bad_alloc"* %5, !dbg !4524
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(%"class.std::bad_array_new_length"* %0, i32 %1) unnamed_addr #1 comdat align 2 !dbg !4525 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::bad_array_new_length"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4526, metadata !DIExpression()), !dbg !4527
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_array_new_length"** %5, metadata !4528, metadata !DIExpression()), !dbg !4527
  %6 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %5, align 8
  %7 = bitcast %"class.std::bad_array_new_length"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(%"class.std::bad_array_new_length"* %6) #5, !dbg !4529
  %9 = icmp eq i32 %8, 0, !dbg !4529
  br i1 %9, label %12, label %10, !dbg !4529

10:                                               ; preds = %2
  %11 = bitcast %"class.std::bad_array_new_length"* %6 to i8*, !dbg !4529
  call void @"??3@YAXPEAX@Z"(i8* %11) #17, !dbg !4529
  br label %12, !dbg !4529

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8, !dbg !4529
  ret i8* %13, !dbg !4529
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@QEBDH@Z"(%"class.std::exception"* returned %0, i8* %1, i32 %2) unnamed_addr #1 comdat align 2 !dbg !4530 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::exception"*, align 8
  store i32 %2, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4531, metadata !DIExpression()), !dbg !4532
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4533, metadata !DIExpression()), !dbg !4534
  store %"class.std::exception"* %0, %"class.std::exception"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::exception"** %6, metadata !4535, metadata !DIExpression()), !dbg !4536
  %7 = load %"class.std::exception"*, %"class.std::exception"** %6, align 8
  %8 = bitcast %"class.std::exception"* %7 to i32 (...)***, !dbg !4537
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %8, align 8, !dbg !4537
  %9 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %7, i32 0, i32 1, !dbg !4538
  %10 = bitcast %struct.__std_exception_data* %9 to i8*, !dbg !4538
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false), !dbg !4538
  %11 = load i8*, i8** %5, align 8, !dbg !4539
  %12 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %7, i32 0, i32 1, !dbg !4541
  %13 = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %12, i32 0, i32 0, !dbg !4542
  store i8* %11, i8** %13, align 8, !dbg !4543
  ret %"class.std::exception"* %7, !dbg !4544
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(%"class.std::bad_alloc"* %0, i32 %1) unnamed_addr #1 comdat align 2 !dbg !4545 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::bad_alloc"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4547, metadata !DIExpression()), !dbg !4548
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %5, metadata !4549, metadata !DIExpression()), !dbg !4548
  %6 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %5, align 8
  %7 = bitcast %"class.std::bad_alloc"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %6) #5, !dbg !4550
  %9 = icmp eq i32 %8, 0, !dbg !4550
  br i1 %9, label %12, label %10, !dbg !4550

10:                                               ; preds = %2
  %11 = bitcast %"class.std::bad_alloc"* %6 to i8*, !dbg !4550
  call void @"??3@YAXPEAX@Z"(i8* %11) #17, !dbg !4550
  br label %12, !dbg !4550

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8, !dbg !4550
  ret i8* %13, !dbg !4550
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %0) unnamed_addr #1 comdat align 2 !dbg !4551 {
  %2 = alloca %"class.std::bad_alloc"*, align 8
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::bad_alloc"** %2, metadata !4552, metadata !DIExpression()), !dbg !4553
  %3 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %2, align 8
  %4 = bitcast %"class.std::bad_alloc"* %3 to %"class.std::exception"*, !dbg !4554
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %4) #5, !dbg !4554
  ret void, !dbg !4556
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @"??2@YAPEAX_K@Z"(i64) #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %0, i8* %1, i64 %2) #1 comdat align 2 !dbg !4557 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %2, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4558, metadata !DIExpression()), !dbg !4559
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4560, metadata !DIExpression()), !dbg !4561
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4562, metadata !DIExpression()), !dbg !4563
  %7 = load i8*, i8** %6, align 8, !dbg !4564
  %8 = load i8*, i8** %5, align 8, !dbg !4565
  %9 = load i64, i64* %4, align 8, !dbg !4566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %9, i1 false), !dbg !4567
  ret i8* %7, !dbg !4568
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8** @"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0) #1 comdat !dbg !4569 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !4572, metadata !DIExpression()), !dbg !4573
  %3 = load i8**, i8*** %2, align 8, !dbg !4574
  ret i8** %3, !dbg !4575
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i8** @"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0) #1 comdat !dbg !4576 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !4585, metadata !DIExpression()), !dbg !4586
  %3 = load i8**, i8*** %2, align 8, !dbg !4587
  ret i8** %3, !dbg !4588
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #7

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(%"class.std::allocator"* noalias sret align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 !dbg !4589 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !4590, metadata !DIExpression()), !dbg !4591
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8, !dbg !4592
  ret void, !dbg !4593
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair.0"* @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair.0"* returned %0, i8 %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !4594 {
  %4 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::_Compressed_pair.0"*, align 8
  %7 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %4, i32 0, i32 0
  store i8 %1, i8* %7, align 1
  store %"class.std::allocator"* %2, %"class.std::allocator"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %5, metadata !4607, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.declare(metadata %"struct.std::_One_then_variadic_args_t"* %4, metadata !4609, metadata !DIExpression()), !dbg !4610
  store %"class.std::_Compressed_pair.0"* %0, %"class.std::_Compressed_pair.0"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.0"** %6, metadata !4611, metadata !DIExpression()), !dbg !4612
  %8 = load %"class.std::_Compressed_pair.0"*, %"class.std::_Compressed_pair.0"** %6, align 8
  %9 = bitcast %"class.std::_Compressed_pair.0"* %8 to %"class.std::allocator"*, !dbg !4613
  %10 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8, !dbg !4614
  %11 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %10) #5, !dbg !4615
  %12 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %8, i32 0, i32 0, !dbg !4616
  %13 = call %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %12), !dbg !4616
  invoke void @llvm.eha.scope.begin()
          to label %14 unwind label %15, !dbg !4616

14:                                               ; preds = %3
  ret %"class.std::_Compressed_pair.0"* %8, !dbg !4617

15:                                               ; preds = %3
  %16 = cleanuppad within none [], !dbg !4618
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %12) #5 [ "funclet"(token %16) ], !dbg !4618
  cleanupret from %16 unwind to caller, !dbg !4618
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 !dbg !4620 {
  %3 = alloca %"class.std::basic_string"*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca %"class.std::_String_val"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"class.std::_String_val"*, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %3, metadata !4621, metadata !DIExpression()), !dbg !4622
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !4623, metadata !DIExpression()), !dbg !4624
  %14 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %5, metadata !4625, metadata !DIExpression()), !dbg !4627
  %15 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !4628
  %16 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %15, i32 0, i32 0, !dbg !4629
  %17 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %16, i32 0, i32 0, !dbg !4630
  store %"class.std::_String_val"* %17, %"class.std::_String_val"** %5, align 8, !dbg !4627
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4631, metadata !DIExpression()), !dbg !4632
  %18 = load %"class.std::_String_val"*, %"class.std::_String_val"** %5, align 8, !dbg !4633
  %19 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %18, i32 0, i32 1, !dbg !4634
  %20 = load i64, i64* %19, align 8, !dbg !4634
  store i64 %20, i64* %6, align 8, !dbg !4632
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4635, metadata !DIExpression()), !dbg !4636
  %21 = load %"class.std::_String_val"*, %"class.std::_String_val"** %5, align 8, !dbg !4637
  %22 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %21) #5, !dbg !4638
  store i8* %22, i8** %7, align 8, !dbg !4636
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %8, metadata !4639, metadata !DIExpression()), !dbg !4641
  %23 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i32 0, i32 0, !dbg !4642
  %24 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %23, i32 0, i32 0, !dbg !4643
  store %"class.std::_String_val"* %24, %"class.std::_String_val"** %8, align 8, !dbg !4641
  %25 = load i64, i64* %6, align 8, !dbg !4644
  %26 = icmp ult i64 %25, 16, !dbg !4646
  br i1 %26, label %27, label %39, !dbg !4647

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8, !dbg !4648
  %29 = load %"class.std::_String_val"*, %"class.std::_String_val"** %8, align 8, !dbg !4650
  %30 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %29, i32 0, i32 0, !dbg !4651
  %31 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %30 to [16 x i8]*, !dbg !4652
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 0, !dbg !4650
  %33 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %32, i8* %28, i64 16) #5, !dbg !4653
  %34 = load i64, i64* %6, align 8, !dbg !4654
  %35 = load %"class.std::_String_val"*, %"class.std::_String_val"** %8, align 8, !dbg !4655
  %36 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %35, i32 0, i32 1, !dbg !4656
  store i64 %34, i64* %36, align 8, !dbg !4657
  %37 = load %"class.std::_String_val"*, %"class.std::_String_val"** %8, align 8, !dbg !4658
  %38 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %37, i32 0, i32 2, !dbg !4659
  store i64 15, i64* %38, align 8, !dbg !4660
  br label %65, !dbg !4661

39:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %9, metadata !4662, metadata !DIExpression()), !dbg !4663
  %40 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %14) #5, !dbg !4664
  store %"class.std::allocator"* %40, %"class.std::allocator"** %9, align 8, !dbg !4663
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4665, metadata !DIExpression()), !dbg !4666
  %41 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %14) #5, !dbg !4667
  store i64 %41, i64* %11, align 8, !dbg !4667
  %42 = load i64, i64* %6, align 8, !dbg !4668
  %43 = or i64 %42, 15, !dbg !4669
  store i64 %43, i64* %12, align 8, !dbg !4668
  %44 = call nonnull align 8 dereferenceable(8) i64* @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %12, i64* nonnull align 8 dereferenceable(8) %11) #5, !dbg !4670
  %45 = load i64, i64* %44, align 8, !dbg !4670
  store i64 %45, i64* %10, align 8, !dbg !4666
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4671, metadata !DIExpression()), !dbg !4672
  %46 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8, !dbg !4673
  %47 = load i64, i64* %10, align 8, !dbg !4674
  %48 = add i64 %47, 1, !dbg !4675
  %49 = call i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %46, i64 %48), !dbg !4676, !heapallocsite !67
  store i8* %49, i8** %13, align 8, !dbg !4672
  %50 = load %"class.std::_String_val"*, %"class.std::_String_val"** %8, align 8, !dbg !4677
  %51 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %50, i32 0, i32 0, !dbg !4678
  %52 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %51 to i8**, !dbg !4679
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %52, i8** nonnull align 8 dereferenceable(8) %13) #5, !dbg !4680
  %53 = load i64, i64* %6, align 8, !dbg !4681
  %54 = add i64 %53, 1, !dbg !4682
  %55 = load i8*, i8** %7, align 8, !dbg !4683
  %56 = load i8*, i8** %13, align 8, !dbg !4684
  %57 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %56) #5, !dbg !4685
  %58 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %57, i8* %55, i64 %54) #5, !dbg !4686
  %59 = load i64, i64* %6, align 8, !dbg !4687
  %60 = load %"class.std::_String_val"*, %"class.std::_String_val"** %8, align 8, !dbg !4688
  %61 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %60, i32 0, i32 1, !dbg !4689
  store i64 %59, i64* %61, align 8, !dbg !4690
  %62 = load i64, i64* %10, align 8, !dbg !4691
  %63 = load %"class.std::_String_val"*, %"class.std::_String_val"** %8, align 8, !dbg !4692
  %64 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %63, i32 0, i32 2, !dbg !4693
  store i64 %62, i64* %64, align 8, !dbg !4694
  br label %65, !dbg !4695

65:                                               ; preds = %39, %27
  ret void, !dbg !4695
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat !dbg !4696 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !4705, metadata !DIExpression()), !dbg !4706
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8, !dbg !4707
  ret %"class.std::allocator"* %3, !dbg !4708
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %0) #1 comdat align 2 !dbg !4709 {
  %2 = alloca %"class.std::_String_val"*, align 8
  %3 = alloca i8*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !4710, metadata !DIExpression()), !dbg !4711
  %4 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4712, metadata !DIExpression()), !dbg !4713
  %5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !4714
  %6 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %5 to [16 x i8]*, !dbg !4715
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !4714
  store i8* %7, i8** %3, align 8, !dbg !4713
  %8 = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %4) #5, !dbg !4716
  br i1 %8, label %9, label %14, !dbg !4718

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %4, i32 0, i32 0, !dbg !4719
  %11 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %10 to i8**, !dbg !4721
  %12 = load i8*, i8** %11, align 8, !dbg !4721
  %13 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %12) #5, !dbg !4722
  store i8* %13, i8** %3, align 8, !dbg !4723
  br label %14, !dbg !4724

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %3, align 8, !dbg !4725
  ret i8* %15, !dbg !4726
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@U_String_constructor_concat_tag@1@AEAV01@1@Z"(%"class.std::basic_string"* returned %0, i8 %1, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %2, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !4727 {
  %5 = alloca %"class.std::basic_string"*, align 8
  %6 = alloca %"struct.std::_String_constructor_concat_tag", align 1
  %7 = alloca %"class.std::basic_string"*, align 8
  %8 = alloca %"class.std::basic_string"*, align 8
  %9 = alloca %"class.std::basic_string"*, align 8
  %10 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %11 = alloca %"class.std::_String_val"*, align 8
  %12 = alloca %"class.std::_String_val"*, align 8
  %13 = alloca %"class.std::_String_val"*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca %"struct.std::_Fake_allocator", align 1
  %21 = alloca %"struct.std::integral_constant", align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca %"struct.std::_Fake_allocator", align 1
  %25 = alloca %"struct.std::integral_constant", align 1
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %"struct.std::_Fake_allocator"*, align 8
  %30 = alloca %"struct.std::_Fake_allocator", align 1
  %31 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = getelementptr inbounds %"struct.std::_String_constructor_concat_tag", %"struct.std::_String_constructor_concat_tag"* %6, i32 0, i32 0
  store i8 %1, i8* %34, align 1
  store %"class.std::basic_string"* %3, %"class.std::basic_string"** %7, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %7, metadata !4728, metadata !DIExpression()), !dbg !4729
  store %"class.std::basic_string"* %2, %"class.std::basic_string"** %8, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %8, metadata !4730, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.declare(metadata %"struct.std::_String_constructor_concat_tag"* %6, metadata !4732, metadata !DIExpression()), !dbg !4733
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %9, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %9, metadata !4734, metadata !DIExpression()), !dbg !4735
  %35 = load %"class.std::basic_string"*, %"class.std::basic_string"** %9, align 8
  store %"class.std::basic_string"* %35, %"class.std::basic_string"** %5, align 8
  %36 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %35, i32 0, i32 0, !dbg !4736
  %37 = load %"class.std::basic_string"*, %"class.std::basic_string"** %8, align 8, !dbg !4737
  %38 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %37) #5, !dbg !4738
  %39 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %10, i32 0, i32 0, !dbg !4736
  %40 = load i8, i8* %39, align 1, !dbg !4736
  %41 = call %"class.std::_Compressed_pair.0"* @"??$?0AEAV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair.0"* %36, i8 %40, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %38), !dbg !4736
  invoke void @llvm.eha.scope.begin()
          to label %42 unwind label %189, !dbg !4736

42:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %11, metadata !4739, metadata !DIExpression()), !dbg !4741
  %43 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %35, i32 0, i32 0, !dbg !4742
  %44 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %43, i32 0, i32 0, !dbg !4743
  store %"class.std::_String_val"* %44, %"class.std::_String_val"** %11, align 8, !dbg !4741
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %12, metadata !4744, metadata !DIExpression()), !dbg !4745
  %45 = load %"class.std::basic_string"*, %"class.std::basic_string"** %8, align 8, !dbg !4746
  %46 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %45, i32 0, i32 0, !dbg !4747
  %47 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %46, i32 0, i32 0, !dbg !4748
  store %"class.std::_String_val"* %47, %"class.std::_String_val"** %12, align 8, !dbg !4745
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %13, metadata !4749, metadata !DIExpression()), !dbg !4750
  %48 = load %"class.std::basic_string"*, %"class.std::basic_string"** %7, align 8, !dbg !4751
  %49 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %48, i32 0, i32 0, !dbg !4752
  %50 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %49, i32 0, i32 0, !dbg !4753
  store %"class.std::_String_val"* %50, %"class.std::_String_val"** %13, align 8, !dbg !4750
  %51 = load %"class.std::_String_val"*, %"class.std::_String_val"** %12, align 8, !dbg !4754
  %52 = bitcast %"class.std::_String_val"* %51 to %"struct.std::_Container_base0"*, !dbg !4754
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %52) #5, !dbg !4755
  %53 = load %"class.std::_String_val"*, %"class.std::_String_val"** %13, align 8, !dbg !4756
  %54 = bitcast %"class.std::_String_val"* %53 to %"struct.std::_Container_base0"*, !dbg !4756
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %54) #5, !dbg !4757
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4758, metadata !DIExpression()), !dbg !4759
  %55 = load %"class.std::_String_val"*, %"class.std::_String_val"** %12, align 8, !dbg !4760
  %56 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %55, i32 0, i32 1, !dbg !4761
  %57 = load i64, i64* %56, align 8, !dbg !4761
  store i64 %57, i64* %14, align 8, !dbg !4759
  call void @llvm.dbg.declare(metadata i64* %15, metadata !4762, metadata !DIExpression()), !dbg !4763
  %58 = load %"class.std::_String_val"*, %"class.std::_String_val"** %13, align 8, !dbg !4764
  %59 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %58, i32 0, i32 1, !dbg !4765
  %60 = load i64, i64* %59, align 8, !dbg !4765
  store i64 %60, i64* %15, align 8, !dbg !4763
  call void @llvm.dbg.declare(metadata i64* %16, metadata !4766, metadata !DIExpression()), !dbg !4767
  %61 = load %"class.std::_String_val"*, %"class.std::_String_val"** %12, align 8, !dbg !4768
  %62 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %61, i32 0, i32 2, !dbg !4769
  %63 = load i64, i64* %62, align 8, !dbg !4769
  store i64 %63, i64* %16, align 8, !dbg !4767
  call void @llvm.dbg.declare(metadata i64* %17, metadata !4770, metadata !DIExpression()), !dbg !4771
  %64 = load %"class.std::_String_val"*, %"class.std::_String_val"** %13, align 8, !dbg !4772
  %65 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %64, i32 0, i32 2, !dbg !4773
  %66 = load i64, i64* %65, align 8, !dbg !4773
  store i64 %66, i64* %17, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata i64* %18, metadata !4774, metadata !DIExpression()), !dbg !4775
  %67 = load i64, i64* %14, align 8, !dbg !4776
  %68 = load i64, i64* %15, align 8, !dbg !4777
  %69 = add i64 %67, %68, !dbg !4778
  store i64 %69, i64* %18, align 8, !dbg !4775
  call void @llvm.dbg.declare(metadata i8* %19, metadata !4779, metadata !DIExpression()), !dbg !4780
  %70 = load i64, i64* %15, align 8, !dbg !4781
  %71 = load i64, i64* %16, align 8, !dbg !4782
  %72 = load i64, i64* %14, align 8, !dbg !4783
  %73 = sub i64 %71, %72, !dbg !4784
  %74 = icmp ule i64 %70, %73, !dbg !4785
  %75 = zext i1 %74 to i8, !dbg !4780
  store i8 %75, i8* %19, align 1, !dbg !4780
  %76 = load i8, i8* %19, align 1, !dbg !4786
  %77 = trunc i8 %76 to i1, !dbg !4786
  br i1 %77, label %78, label %101, !dbg !4788

78:                                               ; preds = %42
  %79 = load i64, i64* %17, align 8, !dbg !4789
  %80 = load i64, i64* %16, align 8, !dbg !4790
  %81 = icmp ule i64 %79, %80, !dbg !4791
  br i1 %81, label %82, label %101, !dbg !4792

82:                                               ; preds = %78
  %83 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4793
  %84 = bitcast %"class.std::_String_val"* %83 to %"struct.std::_Container_base0"*, !dbg !4793
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(%"struct.std::_Container_base0"* %84, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %20) #5, !dbg !4795
  %85 = load %"class.std::basic_string"*, %"class.std::basic_string"** %8, align 8, !dbg !4796
  %86 = getelementptr inbounds %"struct.std::integral_constant", %"struct.std::integral_constant"* %21, i32 0, i32 0, !dbg !4797
  %87 = load i8, i8* %86, align 1, !dbg !4797
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(%"class.std::basic_string"* %35, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %85, i8 %87) #5, !dbg !4797
  call void @llvm.dbg.declare(metadata i8** %22, metadata !4798, metadata !DIExpression()), !dbg !4799
  %88 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4800
  %89 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %88) #5, !dbg !4801
  store i8* %89, i8** %22, align 8, !dbg !4799
  %90 = load i64, i64* %15, align 8, !dbg !4802
  %91 = add i64 %90, 1, !dbg !4803
  %92 = load %"class.std::_String_val"*, %"class.std::_String_val"** %13, align 8, !dbg !4804
  %93 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %92) #5, !dbg !4805
  %94 = load i8*, i8** %22, align 8, !dbg !4806
  %95 = load i64, i64* %14, align 8, !dbg !4807
  %96 = getelementptr inbounds i8, i8* %94, i64 %95, !dbg !4808
  %97 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %96, i8* %93, i64 %91) #5, !dbg !4809
  %98 = load i64, i64* %18, align 8, !dbg !4810
  %99 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4811
  %100 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %99, i32 0, i32 1, !dbg !4812
  store i64 %98, i64* %100, align 8, !dbg !4813
  br label %187, !dbg !4814

101:                                              ; preds = %78, %42
  call void @llvm.dbg.declare(metadata i8* %23, metadata !4815, metadata !DIExpression()), !dbg !4816
  %102 = load i64, i64* %14, align 8, !dbg !4817
  %103 = load i64, i64* %17, align 8, !dbg !4818
  %104 = load i64, i64* %15, align 8, !dbg !4819
  %105 = sub i64 %103, %104, !dbg !4820
  %106 = icmp ule i64 %102, %105, !dbg !4821
  %107 = zext i1 %106 to i8, !dbg !4816
  store i8 %107, i8* %23, align 1, !dbg !4816
  %108 = load %"class.std::basic_string"*, %"class.std::basic_string"** %7, align 8, !dbg !4822
  %109 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %108) #5, !dbg !4824
  %110 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %35) #5, !dbg !4825
  %111 = call zeroext i1 @"??$_Allocators_equal@V?$allocator@D@std@@@std@@YA_NAEBV?$allocator@D@0@0@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %110, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %109) #5, !dbg !4826
  br i1 %111, label %112, label %141, !dbg !4827

112:                                              ; preds = %101
  %113 = load i8, i8* %23, align 1, !dbg !4828
  %114 = trunc i8 %113 to i1, !dbg !4828
  br i1 %114, label %115, label %141, !dbg !4829

115:                                              ; preds = %112
  %116 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4830
  %117 = bitcast %"class.std::_String_val"* %116 to %"struct.std::_Container_base0"*, !dbg !4830
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(%"struct.std::_Container_base0"* %117, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %24) #5, !dbg !4832
  %118 = load %"class.std::basic_string"*, %"class.std::basic_string"** %7, align 8, !dbg !4833
  %119 = getelementptr inbounds %"struct.std::integral_constant", %"struct.std::integral_constant"* %25, i32 0, i32 0, !dbg !4834
  %120 = load i8, i8* %119, align 1, !dbg !4834
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(%"class.std::basic_string"* %35, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %118, i8 %120) #5, !dbg !4834
  call void @llvm.dbg.declare(metadata i8** %26, metadata !4835, metadata !DIExpression()), !dbg !4836
  %121 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4837
  %122 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %121, i32 0, i32 0, !dbg !4838
  %123 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %122 to i8**, !dbg !4839
  %124 = load i8*, i8** %123, align 8, !dbg !4839
  %125 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %124) #5, !dbg !4840
  store i8* %125, i8** %26, align 8, !dbg !4836
  %126 = load i64, i64* %15, align 8, !dbg !4841
  %127 = add i64 %126, 1, !dbg !4842
  %128 = load i8*, i8** %26, align 8, !dbg !4843
  %129 = load i8*, i8** %26, align 8, !dbg !4844
  %130 = load i64, i64* %14, align 8, !dbg !4845
  %131 = getelementptr inbounds i8, i8* %129, i64 %130, !dbg !4846
  %132 = call i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %131, i8* %128, i64 %127) #5, !dbg !4847
  %133 = load i64, i64* %14, align 8, !dbg !4848
  %134 = load %"class.std::_String_val"*, %"class.std::_String_val"** %12, align 8, !dbg !4849
  %135 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %134) #5, !dbg !4850
  %136 = load i8*, i8** %26, align 8, !dbg !4851
  %137 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %136, i8* %135, i64 %133) #5, !dbg !4852
  %138 = load i64, i64* %18, align 8, !dbg !4853
  %139 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4854
  %140 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %139, i32 0, i32 1, !dbg !4855
  store i64 %138, i64* %140, align 8, !dbg !4856
  br label %187, !dbg !4857

141:                                              ; preds = %112, %101
  call void @llvm.dbg.declare(metadata i64* %27, metadata !4858, metadata !DIExpression()), !dbg !4859
  %142 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %35) #5, !dbg !4860
  store i64 %142, i64* %27, align 8, !dbg !4859
  %143 = load i64, i64* %27, align 8, !dbg !4861
  %144 = load i64, i64* %14, align 8, !dbg !4863
  %145 = sub i64 %143, %144, !dbg !4864
  %146 = load i64, i64* %15, align 8, !dbg !4865
  %147 = icmp ult i64 %145, %146, !dbg !4866
  br i1 %147, label %148, label %150, !dbg !4867

148:                                              ; preds = %141
  invoke void @"?_Xlen_string@std@@YAXXZ"() #15
          to label %149 unwind label %189, !dbg !4868

149:                                              ; preds = %148
  unreachable, !dbg !4868

150:                                              ; preds = %141
  call void @llvm.dbg.declare(metadata i64* %28, metadata !4870, metadata !DIExpression()), !dbg !4871
  %151 = load i64, i64* %27, align 8, !dbg !4872
  %152 = load i64, i64* %18, align 8, !dbg !4873
  %153 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 %152, i64 15, i64 %151) #5, !dbg !4874
  store i64 %153, i64* %28, align 8, !dbg !4871
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_allocator"** %29, metadata !4875, metadata !DIExpression()), !dbg !4876
  store %"struct.std::_Fake_allocator"* %30, %"struct.std::_Fake_allocator"** %29, align 8, !dbg !4876
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_proxy_ptr_impl"* %31, metadata !4877, metadata !DIExpression()), !dbg !4878
  %154 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4879
  %155 = bitcast %"class.std::_String_val"* %154 to %"struct.std::_Container_base0"*, !dbg !4879
  %156 = load %"struct.std::_Fake_allocator"*, %"struct.std::_Fake_allocator"** %29, align 8, !dbg !4880
  %157 = call %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* %31, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %156, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %155) #5, !dbg !4878
  call void @llvm.dbg.declare(metadata i8** %32, metadata !4881, metadata !DIExpression()), !dbg !4882
  %158 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %35) #5, !dbg !4883
  %159 = load i64, i64* %28, align 8, !dbg !4884
  %160 = add i64 %159, 1, !dbg !4885
  %161 = invoke i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %158, i64 %160)
          to label %162 unwind label %189, !dbg !4886, !heapallocsite !67

162:                                              ; preds = %150
  store i8* %161, i8** %32, align 8, !dbg !4882
  %163 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4887
  %164 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %163, i32 0, i32 0, !dbg !4888
  %165 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %164 to i8**, !dbg !4889
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %165, i8** nonnull align 8 dereferenceable(8) %32) #5, !dbg !4890
  %166 = load i64, i64* %18, align 8, !dbg !4891
  %167 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4892
  %168 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %167, i32 0, i32 1, !dbg !4893
  store i64 %166, i64* %168, align 8, !dbg !4894
  %169 = load i64, i64* %28, align 8, !dbg !4895
  %170 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !4896
  %171 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %170, i32 0, i32 2, !dbg !4897
  store i64 %169, i64* %171, align 8, !dbg !4898
  call void @llvm.dbg.declare(metadata i8** %33, metadata !4899, metadata !DIExpression()), !dbg !4900
  %172 = load i8*, i8** %32, align 8, !dbg !4901
  %173 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %172) #5, !dbg !4902
  store i8* %173, i8** %33, align 8, !dbg !4900
  %174 = load i64, i64* %14, align 8, !dbg !4903
  %175 = load %"class.std::_String_val"*, %"class.std::_String_val"** %12, align 8, !dbg !4904
  %176 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %175) #5, !dbg !4905
  %177 = load i8*, i8** %33, align 8, !dbg !4906
  %178 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %177, i8* %176, i64 %174) #5, !dbg !4907
  %179 = load i64, i64* %15, align 8, !dbg !4908
  %180 = add i64 %179, 1, !dbg !4909
  %181 = load %"class.std::_String_val"*, %"class.std::_String_val"** %13, align 8, !dbg !4910
  %182 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %181) #5, !dbg !4911
  %183 = load i8*, i8** %33, align 8, !dbg !4912
  %184 = load i64, i64* %14, align 8, !dbg !4913
  %185 = getelementptr inbounds i8, i8* %183, i64 %184, !dbg !4914
  %186 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %185, i8* %182, i64 %180) #5, !dbg !4915
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %31) #5, !dbg !4916
  br label %187, !dbg !4917

187:                                              ; preds = %162, %115, %82
  %188 = load %"class.std::basic_string"*, %"class.std::basic_string"** %5, align 8, !dbg !4917
  ret %"class.std::basic_string"* %188, !dbg !4917

189:                                              ; preds = %150, %148, %4
  %190 = cleanuppad within none [], !dbg !4918
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair.0"* %36) #5 [ "funclet"(token %190) ], !dbg !4918
  cleanupret from %190 unwind to caller, !dbg !4918
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair.0"* @"??$?0AEAV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair.0"* returned %0, i8 %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !4919 {
  %4 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::_Compressed_pair.0"*, align 8
  %7 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %4, i32 0, i32 0
  store i8 %1, i8* %7, align 1
  store %"class.std::allocator"* %2, %"class.std::allocator"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %5, metadata !4925, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.declare(metadata %"struct.std::_One_then_variadic_args_t"* %4, metadata !4927, metadata !DIExpression()), !dbg !4928
  store %"class.std::_Compressed_pair.0"* %0, %"class.std::_Compressed_pair.0"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.0"** %6, metadata !4929, metadata !DIExpression()), !dbg !4930
  %8 = load %"class.std::_Compressed_pair.0"*, %"class.std::_Compressed_pair.0"** %6, align 8
  %9 = bitcast %"class.std::_Compressed_pair.0"* %8 to %"class.std::allocator"*, !dbg !4931
  %10 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8, !dbg !4932
  %11 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$forward@AEAV?$allocator@D@std@@@std@@YAAEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %10) #5, !dbg !4933
  %12 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %8, i32 0, i32 0, !dbg !4934
  %13 = call %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %12), !dbg !4934
  invoke void @llvm.eha.scope.begin()
          to label %14 unwind label %15, !dbg !4934

14:                                               ; preds = %3
  ret %"class.std::_Compressed_pair.0"* %8, !dbg !4935

15:                                               ; preds = %3
  %16 = cleanuppad within none [], !dbg !4936
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %12) #5 [ "funclet"(token %16) ], !dbg !4936
  cleanupret from %16 unwind to caller, !dbg !4936
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(%"struct.std::_Container_base0"* %0, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 !dbg !4938 {
  %3 = alloca %"struct.std::_Fake_allocator"*, align 8
  %4 = alloca %"struct.std::_Container_base0"*, align 8
  store %"struct.std::_Fake_allocator"* %1, %"struct.std::_Fake_allocator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Fake_allocator"** %3, metadata !4939, metadata !DIExpression()), !dbg !4940
  store %"struct.std::_Container_base0"* %0, %"struct.std::_Container_base0"** %4, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Container_base0"** %4, metadata !4941, metadata !DIExpression()), !dbg !4942
  %5 = load %"struct.std::_Container_base0"*, %"struct.std::_Container_base0"** %4, align 8
  ret void, !dbg !4943
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(%"class.std::basic_string"* %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1, i8 %2) #1 comdat align 2 !dbg !4944 {
  %4 = alloca %"struct.std::integral_constant", align 1
  %5 = alloca %"class.std::basic_string"*, align 8
  %6 = alloca %"class.std::basic_string"*, align 8
  %7 = getelementptr inbounds %"struct.std::integral_constant", %"struct.std::integral_constant"* %4, i32 0, i32 0
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata %"struct.std::integral_constant"* %4, metadata !4945, metadata !DIExpression()), !dbg !4946
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %5, metadata !4947, metadata !DIExpression()), !dbg !4948
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %6, metadata !4949, metadata !DIExpression()), !dbg !4950
  %8 = load %"class.std::basic_string"*, %"class.std::basic_string"** %6, align 8
  %9 = load %"class.std::basic_string"*, %"class.std::basic_string"** %5, align 8, !dbg !4951
  call void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %9) #5, !dbg !4952
  %10 = load %"class.std::basic_string"*, %"class.std::basic_string"** %5, align 8, !dbg !4953
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %10) #5, !dbg !4954
  ret void, !dbg !4955
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??$_Allocators_equal@V?$allocator@D@std@@@std@@YA_NAEBV?$allocator@D@0@0@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #1 comdat !dbg !4956 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %3, metadata !4959, metadata !DIExpression()), !dbg !4960
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !4961, metadata !DIExpression()), !dbg !4962
  ret i1 true, !dbg !4963
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$forward@AEAV?$allocator@D@std@@@std@@YAAEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat !dbg !4966 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !4975, metadata !DIExpression()), !dbg !4976
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8, !dbg !4977
  ret %"class.std::allocator"* %3, !dbg !4978
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 !dbg !4979 {
  %3 = alloca %"class.std::basic_string"*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %3, metadata !4980, metadata !DIExpression()), !dbg !4981
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !4982, metadata !DIExpression()), !dbg !4983
  %7 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4984, metadata !DIExpression()), !dbg !4986
  %8 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %7, i32 0, i32 0, !dbg !4987
  %9 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %8, i32 0, i32 0, !dbg !4988
  %10 = call %"class.std::_String_val"* @"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %9) #5, !dbg !4989
  %11 = bitcast %"class.std::_String_val"* %10 to i8*, !dbg !4990
  %12 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !4991
  store i8* %12, i8** %5, align 8, !dbg !4986
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4992, metadata !DIExpression()), !dbg !4994
  %13 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !4995
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %13, i32 0, i32 0, !dbg !4996
  %15 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %14, i32 0, i32 0, !dbg !4997
  %16 = call %"class.std::_String_val"* @"??$addressof@$$CBV?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEBV?$_String_val@U?$_Simple_types@D@std@@@0@AEBV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %15) #5, !dbg !4998
  %17 = bitcast %"class.std::_String_val"* %16 to i8*, !dbg !4999
  %18 = getelementptr inbounds i8, i8* %17, i64 0, !dbg !5000
  store i8* %18, i8** %6, align 8, !dbg !4994
  %19 = load i8*, i8** %5, align 8, !dbg !5001
  %20 = load i8*, i8** %6, align 8, !dbg !5002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %20, i64 32, i1 false), !dbg !5003
  ret void, !dbg !5004
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_String_val"* @"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %0) #1 comdat !dbg !5005 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !5010, metadata !DIExpression()), !dbg !5011
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8, !dbg !5012
  ret %"class.std::_String_val"* %3, !dbg !5013
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_String_val"* @"??$addressof@$$CBV?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEBV?$_String_val@U?$_Simple_types@D@std@@@0@AEBV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %0) #1 comdat !dbg !5014 {
  %2 = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %0, %"class.std::_String_val"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %2, metadata !5019, metadata !DIExpression()), !dbg !5020
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %2, align 8, !dbg !5021
  ret %"class.std::_String_val"* %3, !dbg !5022
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$move@AEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YA$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %0) #1 comdat !dbg !5023 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !5032, metadata !DIExpression()), !dbg !5033
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8, !dbg !5034
  ret %"class.std::basic_string"* %3, !dbg !5035
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %0, i8* %1) #0 comdat align 2 !dbg !5036 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  store i8* %1, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5037, metadata !DIExpression()), !dbg !5038
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !5039, metadata !DIExpression()), !dbg !5040
  %5 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %6 = load i8*, i8** %3, align 8, !dbg !5041
  %7 = call i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %6) #5, !dbg !5042
  %8 = call i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %7) #5, !dbg !5043
  %9 = load i8*, i8** %3, align 8, !dbg !5044
  %10 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %5, i8* %9, i64 %8), !dbg !5045
  ret %"class.std::basic_string"* %10, !dbg !5046
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(%"class.std::basic_string"* returned %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) !dbg !5047 {
  %3 = alloca %"class.std::basic_string"*, align 8
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %6 = alloca %"struct.std::_Fake_allocator", align 1
  %7 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %3, metadata !5048, metadata !DIExpression()), !dbg !5049
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %4, metadata !5050, metadata !DIExpression()), !dbg !5051
  %8 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8
  %9 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i32 0, i32 0, !dbg !5052
  %10 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !5053
  %11 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %10) #5, !dbg !5054
  %12 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %11) #5, !dbg !5055
  %13 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %5, i32 0, i32 0, !dbg !5052
  %14 = load i8, i8* %13, align 1, !dbg !5052
  %15 = invoke %"class.std::_Compressed_pair.0"* @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair.0"* %9, i8 %14, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %12)
          to label %16 unwind label %26, !dbg !5052

16:                                               ; preds = %2
  invoke void @llvm.eha.scope.begin()
          to label %17 unwind label %24, !dbg !5052

17:                                               ; preds = %16
  %18 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i32 0, i32 0, !dbg !5056
  %19 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %18, i32 0, i32 0, !dbg !5058
  %20 = bitcast %"class.std::_String_val"* %19 to %"struct.std::_Container_base0"*, !dbg !5056
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(%"struct.std::_Container_base0"* %20, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %6) #5, !dbg !5059
  %21 = load %"class.std::basic_string"*, %"class.std::basic_string"** %3, align 8, !dbg !5060
  %22 = getelementptr inbounds %"struct.std::integral_constant", %"struct.std::integral_constant"* %7, i32 0, i32 0, !dbg !5061
  %23 = load i8, i8* %22, align 1, !dbg !5061
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(%"class.std::basic_string"* %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %21, i8 %23) #5, !dbg !5061
  ret %"class.std::basic_string"* %8, !dbg !5062

24:                                               ; preds = %16
  %25 = cleanuppad within none [], !dbg !5063
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair.0"* %9) #5 [ "funclet"(token %25) ], !dbg !5063
  cleanupret from %25 unwind label %26, !dbg !5063

26:                                               ; preds = %24, %2
  %27 = cleanuppad within none [], !dbg !5052
  call void @__std_terminate() #18 [ "funclet"(token %27) ], !dbg !5052
  unreachable, !dbg !5052
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %0, i8* %1, i64 %2) #0 comdat align 2 !dbg !5064 {
  %4 = alloca %"class.std::basic_string"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"class.std::basic_string"*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %class.anon.7, align 1
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5065, metadata !DIExpression()), !dbg !5066
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5067, metadata !DIExpression()), !dbg !5068
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %7, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %7, metadata !5069, metadata !DIExpression()), !dbg !5070
  %12 = load %"class.std::basic_string"*, %"class.std::basic_string"** %7, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5071, metadata !DIExpression()), !dbg !5072
  %13 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i32 0, i32 0, !dbg !5073
  %14 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %13, i32 0, i32 0, !dbg !5074
  %15 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %14, i32 0, i32 1, !dbg !5075
  %16 = load i64, i64* %15, align 8, !dbg !5075
  store i64 %16, i64* %8, align 8, !dbg !5072
  %17 = load i64, i64* %5, align 8, !dbg !5076
  %18 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i32 0, i32 0, !dbg !5078
  %19 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %18, i32 0, i32 0, !dbg !5079
  %20 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %19, i32 0, i32 2, !dbg !5080
  %21 = load i64, i64* %20, align 8, !dbg !5080
  %22 = load i64, i64* %8, align 8, !dbg !5081
  %23 = sub i64 %21, %22, !dbg !5082
  %24 = icmp ule i64 %17, %23, !dbg !5083
  br i1 %24, label %25, label %46, !dbg !5084

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8, !dbg !5085
  %27 = load i64, i64* %5, align 8, !dbg !5087
  %28 = add i64 %26, %27, !dbg !5088
  %29 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i32 0, i32 0, !dbg !5089
  %30 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %29, i32 0, i32 0, !dbg !5090
  %31 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %30, i32 0, i32 1, !dbg !5091
  store i64 %28, i64* %31, align 8, !dbg !5092
  call void @llvm.dbg.declare(metadata i8** %9, metadata !5093, metadata !DIExpression()), !dbg !5094
  %32 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i32 0, i32 0, !dbg !5095
  %33 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %32, i32 0, i32 0, !dbg !5096
  %34 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %33) #5, !dbg !5097
  store i8* %34, i8** %9, align 8, !dbg !5094
  %35 = load i64, i64* %5, align 8, !dbg !5098
  %36 = load i8*, i8** %6, align 8, !dbg !5099
  %37 = load i8*, i8** %9, align 8, !dbg !5100
  %38 = load i64, i64* %8, align 8, !dbg !5101
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !5102
  %40 = call i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %39, i8* %36, i64 %35) #5, !dbg !5103
  store i8 0, i8* %10, align 1, !dbg !5104
  %41 = load i8*, i8** %9, align 8, !dbg !5105
  %42 = load i64, i64* %8, align 8, !dbg !5106
  %43 = load i64, i64* %5, align 8, !dbg !5107
  %44 = add i64 %42, %43, !dbg !5108
  %45 = getelementptr inbounds i8, i8* %41, i64 %44, !dbg !5105
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %45, i8* nonnull align 1 dereferenceable(1) %10) #5, !dbg !5109
  store %"class.std::basic_string"* %12, %"class.std::basic_string"** %4, align 8, !dbg !5110
  br label %53, !dbg !5110

46:                                               ; preds = %3
  %47 = load i64, i64* %5, align 8, !dbg !5111
  %48 = load i8*, i8** %6, align 8, !dbg !5112
  %49 = load i64, i64* %5, align 8, !dbg !5113
  %50 = getelementptr inbounds %class.anon.7, %class.anon.7* %11, i32 0, i32 0, !dbg !5114
  %51 = load i8, i8* %50, align 1, !dbg !5114
  %52 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(%"class.std::basic_string"* %12, i64 %49, i8 %51, i8* %48, i64 %47), !dbg !5114
  store %"class.std::basic_string"* %52, %"class.std::basic_string"** %4, align 8, !dbg !5115
  br label %53, !dbg !5115

53:                                               ; preds = %46, %25
  %54 = load %"class.std::basic_string"*, %"class.std::basic_string"** %4, align 8, !dbg !5116
  ret %"class.std::basic_string"* %54, !dbg !5116
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(%"class.std::basic_string"* %0, i64 %1, i8 %2, i8* %3, i64 %4) #0 comdat align 2 !dbg !5117 {
  %6 = alloca %class.anon.7, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"class.std::basic_string"*, align 8
  %11 = alloca %"class.std::_String_val"*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %"class.std::allocator"*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = getelementptr inbounds %class.anon.7, %class.anon.7* %6, i32 0, i32 0
  store i8 %2, i8* %20, align 1
  store i64 %4, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5129, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.declare(metadata %class.anon.7* %6, metadata !5130, metadata !DIExpression()), !dbg !5131
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5132, metadata !DIExpression()), !dbg !5133
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %10, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %10, metadata !5134, metadata !DIExpression()), !dbg !5135
  %21 = load %"class.std::basic_string"*, %"class.std::basic_string"** %10, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_String_val"** %11, metadata !5136, metadata !DIExpression()), !dbg !5137
  %22 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %21, i32 0, i32 0, !dbg !5138
  %23 = getelementptr inbounds %"class.std::_Compressed_pair.0", %"class.std::_Compressed_pair.0"* %22, i32 0, i32 0, !dbg !5139
  store %"class.std::_String_val"* %23, %"class.std::_String_val"** %11, align 8, !dbg !5137
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5140, metadata !DIExpression()), !dbg !5141
  %24 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5142
  %25 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %24, i32 0, i32 1, !dbg !5143
  %26 = load i64, i64* %25, align 8, !dbg !5143
  store i64 %26, i64* %12, align 8, !dbg !5141
  %27 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %21) #5, !dbg !5144
  %28 = load i64, i64* %12, align 8, !dbg !5146
  %29 = sub i64 %27, %28, !dbg !5147
  %30 = load i64, i64* %9, align 8, !dbg !5148
  %31 = icmp ult i64 %29, %30, !dbg !5149
  br i1 %31, label %32, label %33, !dbg !5150

32:                                               ; preds = %5
  call void @"?_Xlen_string@std@@YAXXZ"() #15, !dbg !5151
  unreachable, !dbg !5151

33:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata i64* %13, metadata !5153, metadata !DIExpression()), !dbg !5154
  %34 = load i64, i64* %12, align 8, !dbg !5155
  %35 = load i64, i64* %9, align 8, !dbg !5156
  %36 = add i64 %34, %35, !dbg !5157
  store i64 %36, i64* %13, align 8, !dbg !5154
  call void @llvm.dbg.declare(metadata i64* %14, metadata !5158, metadata !DIExpression()), !dbg !5159
  %37 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5160
  %38 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %37, i32 0, i32 2, !dbg !5161
  %39 = load i64, i64* %38, align 8, !dbg !5161
  store i64 %39, i64* %14, align 8, !dbg !5159
  call void @llvm.dbg.declare(metadata i64* %15, metadata !5162, metadata !DIExpression()), !dbg !5163
  %40 = load i64, i64* %13, align 8, !dbg !5164
  %41 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %21, i64 %40) #5, !dbg !5165
  store i64 %41, i64* %15, align 8, !dbg !5163
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %16, metadata !5166, metadata !DIExpression()), !dbg !5167
  %42 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %21) #5, !dbg !5168
  store %"class.std::allocator"* %42, %"class.std::allocator"** %16, align 8, !dbg !5167
  call void @llvm.dbg.declare(metadata i8** %17, metadata !5169, metadata !DIExpression()), !dbg !5170
  %43 = load %"class.std::allocator"*, %"class.std::allocator"** %16, align 8, !dbg !5171
  %44 = load i64, i64* %15, align 8, !dbg !5172
  %45 = add i64 %44, 1, !dbg !5173
  %46 = call i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %43, i64 %45), !dbg !5174, !heapallocsite !67
  store i8* %46, i8** %17, align 8, !dbg !5170
  %47 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5175
  %48 = bitcast %"class.std::_String_val"* %47 to %"struct.std::_Container_base0"*, !dbg !5175
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %48) #5, !dbg !5176
  %49 = load i64, i64* %13, align 8, !dbg !5177
  %50 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5178
  %51 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %50, i32 0, i32 1, !dbg !5179
  store i64 %49, i64* %51, align 8, !dbg !5180
  %52 = load i64, i64* %15, align 8, !dbg !5181
  %53 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5182
  %54 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %53, i32 0, i32 2, !dbg !5183
  store i64 %52, i64* %54, align 8, !dbg !5184
  call void @llvm.dbg.declare(metadata i8** %18, metadata !5185, metadata !DIExpression()), !dbg !5186
  %55 = load i8*, i8** %17, align 8, !dbg !5187
  %56 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %55) #5, !dbg !5188
  store i8* %56, i8** %18, align 8, !dbg !5186
  %57 = load i64, i64* %14, align 8, !dbg !5189
  %58 = icmp ule i64 16, %57, !dbg !5191
  br i1 %58, label %59, label %78, !dbg !5192

59:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata i8** %19, metadata !5193, metadata !DIExpression()), !dbg !5195
  %60 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5196
  %61 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %60, i32 0, i32 0, !dbg !5197
  %62 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %61 to i8**, !dbg !5198
  %63 = load i8*, i8** %62, align 8, !dbg !5198
  store i8* %63, i8** %19, align 8, !dbg !5195
  %64 = load i64, i64* %7, align 8, !dbg !5199
  %65 = load i8*, i8** %8, align 8, !dbg !5199
  %66 = load i64, i64* %12, align 8, !dbg !5200
  %67 = load i8*, i8** %19, align 8, !dbg !5201
  %68 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %67) #5, !dbg !5202
  %69 = load i8*, i8** %18, align 8, !dbg !5203
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(%class.anon.7* %6, i8* %69, i8* %68, i64 %66, i8* %65, i64 %64), !dbg !5204
  %70 = load %"class.std::allocator"*, %"class.std::allocator"** %16, align 8, !dbg !5205
  %71 = load i64, i64* %14, align 8, !dbg !5206
  %72 = add i64 %71, 1, !dbg !5207
  %73 = load i8*, i8** %19, align 8, !dbg !5208
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %70, i8* %73, i64 %72), !dbg !5209
  %74 = load i8*, i8** %17, align 8, !dbg !5210
  %75 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5211
  %76 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %75, i32 0, i32 0, !dbg !5212
  %77 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %76 to i8**, !dbg !5213
  store i8* %74, i8** %77, align 8, !dbg !5214
  br label %90, !dbg !5215

78:                                               ; preds = %33
  %79 = load i64, i64* %7, align 8, !dbg !5216
  %80 = load i8*, i8** %8, align 8, !dbg !5216
  %81 = load i64, i64* %12, align 8, !dbg !5218
  %82 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5219
  %83 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %82, i32 0, i32 0, !dbg !5220
  %84 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %83 to [16 x i8]*, !dbg !5221
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %84, i64 0, i64 0, !dbg !5219
  %86 = load i8*, i8** %18, align 8, !dbg !5222
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(%class.anon.7* %6, i8* %86, i8* %85, i64 %81, i8* %80, i64 %79), !dbg !5223
  %87 = load %"class.std::_String_val"*, %"class.std::_String_val"** %11, align 8, !dbg !5224
  %88 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %87, i32 0, i32 0, !dbg !5225
  %89 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %88 to i8**, !dbg !5226
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %89, i8** nonnull align 8 dereferenceable(8) %17) #5, !dbg !5227
  br label %90

90:                                               ; preds = %78, %59
  ret %"class.std::basic_string"* %21, !dbg !5228
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(%class.anon.7* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 comdat align 2 !dbg !5229 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %class.anon.7*, align 8
  %13 = alloca i8, align 1
  store i64 %5, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i8* %4, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5239, metadata !DIExpression()), !dbg !5240
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5241, metadata !DIExpression()), !dbg !5242
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i8* %1, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5245, metadata !DIExpression()), !dbg !5246
  store %class.anon.7* %0, %class.anon.7** %12, align 8
  call void @llvm.dbg.declare(metadata %class.anon.7** %12, metadata !5247, metadata !DIExpression()), !dbg !5249
  %14 = load %class.anon.7*, %class.anon.7** %12, align 8
  %15 = load i64, i64* %9, align 8, !dbg !5250
  %16 = load i8*, i8** %10, align 8, !dbg !5251
  %17 = load i8*, i8** %11, align 8, !dbg !5252
  %18 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %17, i8* %16, i64 %15) #5, !dbg !5253
  %19 = load i64, i64* %7, align 8, !dbg !5254
  %20 = load i8*, i8** %8, align 8, !dbg !5255
  %21 = load i8*, i8** %11, align 8, !dbg !5256
  %22 = load i64, i64* %9, align 8, !dbg !5257
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !5258
  %24 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %23, i8* %20, i64 %19) #5, !dbg !5259
  store i8 0, i8* %13, align 1, !dbg !5260
  %25 = load i8*, i8** %11, align 8, !dbg !5261
  %26 = load i64, i64* %9, align 8, !dbg !5262
  %27 = load i64, i64* %7, align 8, !dbg !5263
  %28 = add i64 %26, %27, !dbg !5264
  %29 = getelementptr inbounds i8, i8* %25, i64 %28, !dbg !5261
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %29, i8* nonnull align 1 dereferenceable(1) %13) #5, !dbg !5265
  ret void, !dbg !5266
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat !dbg !5267 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %2, metadata !5271, metadata !DIExpression()), !dbg !5272
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8, !dbg !5273
  ret %"class.std::allocator"* %3, !dbg !5274
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??$addressof@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YAPEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z"(%"class.std::basic_string"* nonnull align 8 dereferenceable(32) %0) #1 comdat !dbg !5275 {
  %2 = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %2, metadata !5280, metadata !DIExpression()), !dbg !5281
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %2, align 8, !dbg !5282
  ret %"class.std::basic_string"* %3, !dbg !5283
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z"(%"class.std::basic_string"* %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1, i8 %2) #1 comdat align 2 !dbg !5284 {
  %4 = alloca %"struct.std::_Equal_allocators", align 1
  %5 = alloca %"class.std::basic_string"*, align 8
  %6 = alloca %"class.std::basic_string"*, align 8
  %7 = alloca %"struct.std::integral_constant", align 1
  %8 = getelementptr inbounds %"struct.std::_Equal_allocators", %"struct.std::_Equal_allocators"* %4, i32 0, i32 0
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata %"struct.std::_Equal_allocators"* %4, metadata !5285, metadata !DIExpression()), !dbg !5286
  store %"class.std::basic_string"* %1, %"class.std::basic_string"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %5, metadata !5287, metadata !DIExpression()), !dbg !5288
  store %"class.std::basic_string"* %0, %"class.std::basic_string"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::basic_string"** %6, metadata !5289, metadata !DIExpression()), !dbg !5290
  %9 = load %"class.std::basic_string"*, %"class.std::basic_string"** %6, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %9) #5, !dbg !5291
  %10 = load %"class.std::basic_string"*, %"class.std::basic_string"** %5, align 8, !dbg !5292
  %11 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %10) #5, !dbg !5293
  %12 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %9) #5, !dbg !5294
  call void @"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %12, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %11) #5, !dbg !5295
  %13 = load %"class.std::basic_string"*, %"class.std::basic_string"** %5, align 8, !dbg !5296
  %14 = getelementptr inbounds %"struct.std::integral_constant", %"struct.std::integral_constant"* %7, i32 0, i32 0, !dbg !5297
  %15 = load i8, i8* %14, align 1, !dbg !5297
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(%"class.std::basic_string"* %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %13, i8 %15) #5, !dbg !5297
  ret void, !dbg !5298
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #1 comdat !dbg !5299 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %3, metadata !5302, metadata !DIExpression()), !dbg !5303
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %4, metadata !5304, metadata !DIExpression()), !dbg !5305
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8, !dbg !5306
  %6 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #5, !dbg !5309
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8, !dbg !5310
  ret void, !dbg !5311
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?has_value@?$optional@H@std@@QEBA_NXZ"(%"class.std::optional"* %0) #1 comdat align 2 !dbg !5312 {
  %2 = alloca %"class.std::optional"*, align 8
  store %"class.std::optional"* %0, %"class.std::optional"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::optional"** %2, metadata !5313, metadata !DIExpression()), !dbg !5315
  %3 = load %"class.std::optional"*, %"class.std::optional"** %2, align 8
  %4 = bitcast %"class.std::optional"* %3 to %"struct.std::_Optional_destruct_base"*, !dbg !5316
  %5 = getelementptr inbounds %"struct.std::_Optional_destruct_base", %"struct.std::_Optional_destruct_base"* %4, i32 0, i32 1, !dbg !5316
  %6 = load i8, i8* %5, align 4, !dbg !5316
  %7 = trunc i8 %6 to i1, !dbg !5316
  ret i1 %7, !dbg !5317
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @"??D?$optional@H@std@@QEGBAAEBHXZ"(%"class.std::optional"* %0) #0 comdat align 2 !dbg !5318 {
  %2 = alloca %"class.std::optional"*, align 8
  store %"class.std::optional"* %0, %"class.std::optional"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::optional"** %2, metadata !5319, metadata !DIExpression()), !dbg !5320
  %3 = load %"class.std::optional"*, %"class.std::optional"** %2, align 8
  %4 = bitcast %"class.std::optional"* %3 to %"struct.std::_Optional_destruct_base"*, !dbg !5321
  %5 = getelementptr inbounds %"struct.std::_Optional_destruct_base", %"struct.std::_Optional_destruct_base"* %4, i32 0, i32 0, !dbg !5321
  %6 = bitcast %union.anon* %5 to i32*, !dbg !5321
  ret i32* %6, !dbg !5322
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Ref_count_obj2"* @"??$?0H@?$_Ref_count_obj2@H@std@@QEAA@$$QEAH@Z"(%"class.std::_Ref_count_obj2"* returned %0, i32* nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 !dbg !5323 {
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::_Ref_count_obj2"*, align 8
  store i32* %1, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !5327, metadata !DIExpression()), !dbg !5328
  store %"class.std::_Ref_count_obj2"* %0, %"class.std::_Ref_count_obj2"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_obj2"** %4, metadata !5329, metadata !DIExpression()), !dbg !5330
  %5 = load %"class.std::_Ref_count_obj2"*, %"class.std::_Ref_count_obj2"** %4, align 8
  %6 = bitcast %"class.std::_Ref_count_obj2"* %5 to %"class.std::_Ref_count_base"*, !dbg !5331
  %7 = bitcast %"class.std::_Ref_count_base"* %6 to i8*, !dbg !5332
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !5332
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false), !dbg !5332
  %9 = call %"class.std::_Ref_count_base"* @"??0_Ref_count_base@std@@IEAA@XZ"(%"class.std::_Ref_count_base"* %6) #5, !dbg !5332
  %10 = bitcast %"class.std::_Ref_count_obj2"* %5 to i32 (...)***, !dbg !5331
  store i32 (...)** bitcast (i8** @"??_7?$_Ref_count_obj2@H@std@@6B@" to i32 (...)**), i32 (...)*** %10, align 8, !dbg !5331
  %11 = load i32*, i32** %3, align 8, !dbg !5333
  %12 = call nonnull align 4 dereferenceable(4) i32* @"??$forward@H@std@@YA$$QEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %11) #5, !dbg !5335
  %13 = getelementptr inbounds %"class.std::_Ref_count_obj2", %"class.std::_Ref_count_obj2"* %5, i32 0, i32 1, !dbg !5336
  %14 = bitcast %union.anon.9* %13 to %"struct.std::_Wrap"*, !dbg !5336
  %15 = getelementptr inbounds %"struct.std::_Wrap", %"struct.std::_Wrap"* %14, i32 0, i32 0, !dbg !5337
  call void @"??$_Construct_in_place@HH@std@@YAXAEAH$$QEAH@Z"(i32* nonnull align 4 dereferenceable(4) %15, i32* nonnull align 4 dereferenceable(4) %12) #5, !dbg !5338
  ret %"class.std::_Ref_count_obj2"* %5, !dbg !5339
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Set_ptr_rep_and_enable_shared@H@?$shared_ptr@H@std@@AEAAXQEAHQEAV_Ref_count_base@1@@Z"(%"class.std::shared_ptr"* %0, i32* %1, %"class.std::_Ref_count_base"* %2) #1 comdat align 2 !dbg !5340 {
  %4 = alloca %"class.std::_Ref_count_base"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::_Ref_count_base"* %2, %"class.std::_Ref_count_base"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %4, metadata !5347, metadata !DIExpression()), !dbg !5348
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !5349, metadata !DIExpression()), !dbg !5350
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %6, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %6, metadata !5351, metadata !DIExpression()), !dbg !5352
  %7 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %6, align 8
  %8 = load i32*, i32** %5, align 8, !dbg !5353
  %9 = bitcast %"class.std::shared_ptr"* %7 to %"class.std::_Ptr_base"*, !dbg !5354
  %10 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %9, i32 0, i32 0, !dbg !5354
  store i32* %8, i32** %10, align 8, !dbg !5355
  %11 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %4, align 8, !dbg !5356
  %12 = bitcast %"class.std::shared_ptr"* %7 to %"class.std::_Ptr_base"*, !dbg !5357
  %13 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %12, i32 0, i32 1, !dbg !5357
  store %"class.std::_Ref_count_base"* %11, %"class.std::_Ref_count_base"** %13, align 8, !dbg !5358
  ret void, !dbg !5359
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @"??$addressof@H@std@@YAPEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %0) #1 comdat !dbg !5360 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !5363, metadata !DIExpression()), !dbg !5364
  %3 = load i32*, i32** %2, align 8, !dbg !5365
  ret i32* %3, !dbg !5366
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Ref_count_base"* @"??0_Ref_count_base@std@@IEAA@XZ"(%"class.std::_Ref_count_base"* returned %0) unnamed_addr #1 comdat align 2 !dbg !5367 {
  %2 = alloca %"class.std::_Ref_count_base"*, align 8
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %2, metadata !5368, metadata !DIExpression()), !dbg !5369
  %3 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %2, align 8
  %4 = bitcast %"class.std::_Ref_count_base"* %3 to i32 (...)***, !dbg !5370
  store i32 (...)** bitcast (i8** @"??_7_Ref_count_base@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8, !dbg !5370
  %5 = getelementptr inbounds %"class.std::_Ref_count_base", %"class.std::_Ref_count_base"* %3, i32 0, i32 1, !dbg !5371
  store i32 1, i32* %5, align 8, !dbg !5371
  %6 = getelementptr inbounds %"class.std::_Ref_count_base", %"class.std::_Ref_count_base"* %3, i32 0, i32 2, !dbg !5372
  store i32 1, i32* %6, align 4, !dbg !5372
  ret %"class.std::_Ref_count_base"* %3, !dbg !5370
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@HH@std@@YAXAEAH$$QEAH@Z"(i32* nonnull align 4 dereferenceable(4) %0, i32* nonnull align 4 dereferenceable(4) %1) #1 comdat !dbg !5373 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %1, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !5376, metadata !DIExpression()), !dbg !5377
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !5378, metadata !DIExpression()), !dbg !5379
  %5 = load i32*, i32** %4, align 8, !dbg !5380
  %6 = call i32* @"??$addressof@H@std@@YAPEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %5) #5, !dbg !5381
  %7 = bitcast i32* %6 to i8*, !dbg !5381
  %8 = bitcast i8* %7 to i32*, !dbg !5382
  %9 = load i32*, i32** %3, align 8, !dbg !5383
  %10 = call nonnull align 4 dereferenceable(4) i32* @"??$forward@H@std@@YA$$QEAHAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %9) #5, !dbg !5384
  %11 = load i32, i32* %10, align 4, !dbg !5384
  store i32 %11, i32* %8, align 4, !dbg !5382
  ret void, !dbg !5385
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Destroy@?$_Ref_count_obj2@H@std@@EEAAXXZ"(%"class.std::_Ref_count_obj2"* %0) unnamed_addr #1 comdat align 2 !dbg !5386 {
  %2 = alloca %"class.std::_Ref_count_obj2"*, align 8
  store %"class.std::_Ref_count_obj2"* %0, %"class.std::_Ref_count_obj2"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_obj2"** %2, metadata !5387, metadata !DIExpression()), !dbg !5388
  %3 = load %"class.std::_Ref_count_obj2"*, %"class.std::_Ref_count_obj2"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ref_count_obj2", %"class.std::_Ref_count_obj2"* %3, i32 0, i32 1, !dbg !5389
  %5 = bitcast %union.anon.9* %4 to %"struct.std::_Wrap"*, !dbg !5389
  %6 = getelementptr inbounds %"struct.std::_Wrap", %"struct.std::_Wrap"* %5, i32 0, i32 0, !dbg !5390
  call void @"??$_Destroy_in_place@H@std@@YAXAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %6) #5, !dbg !5391
  ret void, !dbg !5392
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Delete_this@?$_Ref_count_obj2@H@std@@EEAAXXZ"(%"class.std::_Ref_count_obj2"* %0) unnamed_addr #1 comdat align 2 !dbg !5393 {
  %2 = alloca %"class.std::_Ref_count_obj2"*, align 8
  store %"class.std::_Ref_count_obj2"* %0, %"class.std::_Ref_count_obj2"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_obj2"** %2, metadata !5394, metadata !DIExpression()), !dbg !5395
  %3 = load %"class.std::_Ref_count_obj2"*, %"class.std::_Ref_count_obj2"** %2, align 8
  %4 = icmp eq %"class.std::_Ref_count_obj2"* %3, null, !dbg !5396
  br i1 %4, label %11, label %5, !dbg !5396

5:                                                ; preds = %1
  %6 = bitcast %"class.std::_Ref_count_obj2"* %3 to i8* (%"class.std::_Ref_count_obj2"*, i32)***, !dbg !5396
  %7 = load i8* (%"class.std::_Ref_count_obj2"*, i32)**, i8* (%"class.std::_Ref_count_obj2"*, i32)*** %6, align 8, !dbg !5396
  %8 = getelementptr inbounds i8* (%"class.std::_Ref_count_obj2"*, i32)*, i8* (%"class.std::_Ref_count_obj2"*, i32)** %7, i64 2, !dbg !5396
  %9 = load i8* (%"class.std::_Ref_count_obj2"*, i32)*, i8* (%"class.std::_Ref_count_obj2"*, i32)** %8, align 8, !dbg !5396
  %10 = call i8* %9(%"class.std::_Ref_count_obj2"* %3, i32 1) #5, !dbg !5396
  br label %11, !dbg !5396

11:                                               ; preds = %5, %1
  ret void, !dbg !5397
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_G?$_Ref_count_obj2@H@std@@UEAAPEAXI@Z"(%"class.std::_Ref_count_obj2"* %0, i32 %1) unnamed_addr #1 comdat align 2 !dbg !5398 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::_Ref_count_obj2"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5399, metadata !DIExpression()), !dbg !5400
  store %"class.std::_Ref_count_obj2"* %0, %"class.std::_Ref_count_obj2"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_obj2"** %5, metadata !5401, metadata !DIExpression()), !dbg !5400
  %6 = load %"class.std::_Ref_count_obj2"*, %"class.std::_Ref_count_obj2"** %5, align 8
  %7 = bitcast %"class.std::_Ref_count_obj2"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @"??1?$_Ref_count_obj2@H@std@@UEAA@XZ"(%"class.std::_Ref_count_obj2"* %6) #5, !dbg !5402
  %9 = icmp eq i32 %8, 0, !dbg !5402
  br i1 %9, label %12, label %10, !dbg !5402

10:                                               ; preds = %2
  %11 = bitcast %"class.std::_Ref_count_obj2"* %6 to i8*, !dbg !5402
  call void @"??3@YAXPEAX@Z"(i8* %11) #17, !dbg !5402
  br label %12, !dbg !5402

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8, !dbg !5403
  ret i8* %13, !dbg !5403
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Get_deleter@_Ref_count_base@std@@UEBAPEAXAEBVtype_info@@@Z"(%"class.std::_Ref_count_base"* %0, %class.type_info* nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !dbg !5404 {
  %3 = alloca %class.type_info*, align 8
  %4 = alloca %"class.std::_Ref_count_base"*, align 8
  store %class.type_info* %1, %class.type_info** %3, align 8
  call void @llvm.dbg.declare(metadata %class.type_info** %3, metadata !5405, metadata !DIExpression()), !dbg !5406
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %4, metadata !5407, metadata !DIExpression()), !dbg !5409
  %5 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %4, align 8
  ret i8* null, !dbg !5410
}

declare dso_local void @_purecall() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_G_Ref_count_base@std@@UEAAPEAXI@Z"(%"class.std::_Ref_count_base"* %0, i32 %1) unnamed_addr #1 comdat align 2 !dbg !5411 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::_Ref_count_base"*, align 8
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5412, metadata !DIExpression()), !dbg !5413
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %5, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %5, metadata !5414, metadata !DIExpression()), !dbg !5413
  %6 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %5, align 8
  %7 = bitcast %"class.std::_Ref_count_base"* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @llvm.trap() #18, !dbg !5415
  unreachable, !dbg !5415
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #14

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@H@std@@YAXAEAH@Z"(i32* nonnull align 4 dereferenceable(4) %0) #1 comdat !dbg !5416 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !5419, metadata !DIExpression()), !dbg !5420
  %3 = load i32*, i32** %2, align 8, !dbg !5421
  ret void, !dbg !5422
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Ref_count_obj2@H@std@@UEAA@XZ"(%"class.std::_Ref_count_obj2"* %0) unnamed_addr #1 comdat align 2 !dbg !5423 {
  %2 = alloca %"class.std::_Ref_count_obj2"*, align 8
  store %"class.std::_Ref_count_obj2"* %0, %"class.std::_Ref_count_obj2"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_obj2"** %2, metadata !5424, metadata !DIExpression()), !dbg !5425
  %3 = load %"class.std::_Ref_count_obj2"*, %"class.std::_Ref_count_obj2"** %2, align 8
  %4 = bitcast %"class.std::_Ref_count_obj2"* %3 to i32 (...)***, !dbg !5426
  store i32 (...)** bitcast (i8** @"??_7?$_Ref_count_obj2@H@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8, !dbg !5426
  %5 = bitcast %"class.std::_Ref_count_obj2"* %3 to %"class.std::_Ref_count_base"*, !dbg !5427
  call void @"??1_Ref_count_base@std@@UEAA@XZ"(%"class.std::_Ref_count_base"* %5) #5, !dbg !5427
  ret void, !dbg !5429
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Ref_count_base@std@@UEAA@XZ"(%"class.std::_Ref_count_base"* %0) unnamed_addr #1 comdat align 2 !dbg !5430 {
  %2 = alloca %"class.std::_Ref_count_base"*, align 8
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %2, metadata !5431, metadata !DIExpression()), !dbg !5432
  %3 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %2, align 8
  ret void, !dbg !5433
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Decref@?$_Ptr_base@H@std@@IEAAXXZ"(%"class.std::_Ptr_base"* %0) #1 comdat align 2 !dbg !5434 {
  %2 = alloca %"class.std::_Ptr_base"*, align 8
  store %"class.std::_Ptr_base"* %0, %"class.std::_Ptr_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ptr_base"** %2, metadata !5435, metadata !DIExpression()), !dbg !5436
  %3 = load %"class.std::_Ptr_base"*, %"class.std::_Ptr_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 1, !dbg !5437
  %5 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %4, align 8, !dbg !5437
  %6 = icmp ne %"class.std::_Ref_count_base"* %5, null, !dbg !5437
  br i1 %6, label %7, label %10, !dbg !5439

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 1, !dbg !5440
  %9 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %8, align 8, !dbg !5440
  call void @"?_Decref@_Ref_count_base@std@@QEAAXXZ"(%"class.std::_Ref_count_base"* %9) #5, !dbg !5442
  br label %10, !dbg !5443

10:                                               ; preds = %7, %1
  ret void, !dbg !5444
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Decref@_Ref_count_base@std@@QEAAXXZ"(%"class.std::_Ref_count_base"* %0) #1 comdat align 2 !dbg !5445 {
  %2 = alloca %"class.std::_Ref_count_base"*, align 8
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %2, metadata !5446, metadata !DIExpression()), !dbg !5447
  %3 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ref_count_base", %"class.std::_Ref_count_base"* %3, i32 0, i32 1, !dbg !5448
  %5 = atomicrmw sub i32* %4, i32 1 seq_cst, !dbg !5448
  %6 = sub i32 %5, 1, !dbg !5448
  %7 = icmp eq i32 %6, 0, !dbg !5450
  br i1 %7, label %8, label %13, !dbg !5451

8:                                                ; preds = %1
  %9 = bitcast %"class.std::_Ref_count_base"* %3 to void (%"class.std::_Ref_count_base"*)***, !dbg !5452
  %10 = load void (%"class.std::_Ref_count_base"*)**, void (%"class.std::_Ref_count_base"*)*** %9, align 8, !dbg !5452
  %11 = getelementptr inbounds void (%"class.std::_Ref_count_base"*)*, void (%"class.std::_Ref_count_base"*)** %10, i64 0, !dbg !5452
  %12 = load void (%"class.std::_Ref_count_base"*)*, void (%"class.std::_Ref_count_base"*)** %11, align 8, !dbg !5452
  call void %12(%"class.std::_Ref_count_base"* %3) #5, !dbg !5452
  call void @"?_Decwref@_Ref_count_base@std@@QEAAXXZ"(%"class.std::_Ref_count_base"* %3) #5, !dbg !5454
  br label %13, !dbg !5455

13:                                               ; preds = %8, %1
  ret void, !dbg !5456
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Decwref@_Ref_count_base@std@@QEAAXXZ"(%"class.std::_Ref_count_base"* %0) #1 comdat align 2 !dbg !5457 {
  %2 = alloca %"class.std::_Ref_count_base"*, align 8
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %2, metadata !5458, metadata !DIExpression()), !dbg !5459
  %3 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ref_count_base", %"class.std::_Ref_count_base"* %3, i32 0, i32 2, !dbg !5460
  %5 = atomicrmw sub i32* %4, i32 1 seq_cst, !dbg !5460
  %6 = sub i32 %5, 1, !dbg !5460
  %7 = icmp eq i32 %6, 0, !dbg !5462
  br i1 %7, label %8, label %13, !dbg !5463

8:                                                ; preds = %1
  %9 = bitcast %"class.std::_Ref_count_base"* %3 to void (%"class.std::_Ref_count_base"*)***, !dbg !5464
  %10 = load void (%"class.std::_Ref_count_base"*)**, void (%"class.std::_Ref_count_base"*)*** %9, align 8, !dbg !5464
  %11 = getelementptr inbounds void (%"class.std::_Ref_count_base"*)*, void (%"class.std::_Ref_count_base"*)** %10, i64 1, !dbg !5464
  %12 = load void (%"class.std::_Ref_count_base"*)*, void (%"class.std::_Ref_count_base"*)** %11, align 8, !dbg !5464
  call void %12(%"class.std::_Ref_count_base"* %3) #5, !dbg !5464
  br label %13, !dbg !5466

13:                                               ; preds = %8, %1
  ret void, !dbg !5467
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Copy_construct_from@H@?$_Ptr_base@H@std@@IEAAXAEBV?$shared_ptr@H@1@@Z"(%"class.std::_Ptr_base"* %0, %"class.std::shared_ptr"* nonnull align 8 dereferenceable(16) %1) #1 comdat align 2 !dbg !5468 {
  %3 = alloca %"class.std::shared_ptr"*, align 8
  %4 = alloca %"class.std::_Ptr_base"*, align 8
  store %"class.std::shared_ptr"* %1, %"class.std::shared_ptr"** %3, align 8
  call void @llvm.dbg.declare(metadata %"class.std::shared_ptr"** %3, metadata !5473, metadata !DIExpression()), !dbg !5474
  store %"class.std::_Ptr_base"* %0, %"class.std::_Ptr_base"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ptr_base"** %4, metadata !5475, metadata !DIExpression()), !dbg !5476
  %5 = load %"class.std::_Ptr_base"*, %"class.std::_Ptr_base"** %4, align 8
  %6 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %3, align 8, !dbg !5477
  %7 = bitcast %"class.std::shared_ptr"* %6 to %"class.std::_Ptr_base"*, !dbg !5477
  call void @"?_Incref@?$_Ptr_base@H@std@@IEBAXXZ"(%"class.std::_Ptr_base"* %7) #5, !dbg !5478
  %8 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %3, align 8, !dbg !5479
  %9 = bitcast %"class.std::shared_ptr"* %8 to %"class.std::_Ptr_base"*, !dbg !5479
  %10 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %9, i32 0, i32 0, !dbg !5480
  %11 = load i32*, i32** %10, align 8, !dbg !5480
  %12 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %5, i32 0, i32 0, !dbg !5481
  store i32* %11, i32** %12, align 8, !dbg !5482
  %13 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %3, align 8, !dbg !5483
  %14 = bitcast %"class.std::shared_ptr"* %13 to %"class.std::_Ptr_base"*, !dbg !5483
  %15 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %14, i32 0, i32 1, !dbg !5484
  %16 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %15, align 8, !dbg !5484
  %17 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %5, i32 0, i32 1, !dbg !5485
  store %"class.std::_Ref_count_base"* %16, %"class.std::_Ref_count_base"** %17, align 8, !dbg !5486
  ret void, !dbg !5487
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Incref@?$_Ptr_base@H@std@@IEBAXXZ"(%"class.std::_Ptr_base"* %0) #1 comdat align 2 !dbg !5488 {
  %2 = alloca %"class.std::_Ptr_base"*, align 8
  store %"class.std::_Ptr_base"* %0, %"class.std::_Ptr_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ptr_base"** %2, metadata !5489, metadata !DIExpression()), !dbg !5490
  %3 = load %"class.std::_Ptr_base"*, %"class.std::_Ptr_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 1, !dbg !5491
  %5 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %4, align 8, !dbg !5491
  %6 = icmp ne %"class.std::_Ref_count_base"* %5, null, !dbg !5491
  br i1 %6, label %7, label %10, !dbg !5493

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 1, !dbg !5494
  %9 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %8, align 8, !dbg !5494
  call void @"?_Incref@_Ref_count_base@std@@QEAAXXZ"(%"class.std::_Ref_count_base"* %9) #5, !dbg !5496
  br label %10, !dbg !5497

10:                                               ; preds = %7, %1
  ret void, !dbg !5498
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Incref@_Ref_count_base@std@@QEAAXXZ"(%"class.std::_Ref_count_base"* %0) #1 comdat align 2 !dbg !5499 {
  %2 = alloca %"class.std::_Ref_count_base"*, align 8
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %2, metadata !5500, metadata !DIExpression()), !dbg !5501
  %3 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ref_count_base", %"class.std::_Ref_count_base"* %3, i32 0, i32 1, !dbg !5502
  %5 = atomicrmw add i32* %4, i32 1 seq_cst, !dbg !5502
  %6 = add i32 %5, 1, !dbg !5502
  ret void, !dbg !5503
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @"?get@?$_Ptr_base@H@std@@IEBAPEAHXZ"(%"class.std::_Ptr_base"* %0) #1 comdat align 2 !dbg !5504 {
  %2 = alloca %"class.std::_Ptr_base"*, align 8
  store %"class.std::_Ptr_base"* %0, %"class.std::_Ptr_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ptr_base"** %2, metadata !5505, metadata !DIExpression()), !dbg !5506
  %3 = load %"class.std::_Ptr_base"*, %"class.std::_Ptr_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ptr_base", %"class.std::_Ptr_base"* %3, i32 0, i32 0, !dbg !5507
  %5 = load i32*, i32** %4, align 8, !dbg !5507
  ret i32* %5, !dbg !5508
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?_Use_count@_Ref_count_base@std@@QEBAJXZ"(%"class.std::_Ref_count_base"* %0) #1 comdat align 2 !dbg !5509 {
  %2 = alloca %"class.std::_Ref_count_base"*, align 8
  store %"class.std::_Ref_count_base"* %0, %"class.std::_Ref_count_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Ref_count_base"** %2, metadata !5510, metadata !DIExpression()), !dbg !5511
  %3 = load %"class.std::_Ref_count_base"*, %"class.std::_Ref_count_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Ref_count_base", %"class.std::_Ref_count_base"* %3, i32 0, i32 1, !dbg !5512
  %5 = load i32, i32* %4, align 8, !dbg !5512
  ret i32 %5, !dbg !5513
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"struct.std::default_delete.4"* @"?_Get_first@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAAAEAU?$default_delete@H@2@XZ"(%"class.std::_Compressed_pair.3"* %0) #1 comdat align 2 !dbg !5514 {
  %2 = alloca %"class.std::_Compressed_pair.3"*, align 8
  store %"class.std::_Compressed_pair.3"* %0, %"class.std::_Compressed_pair.3"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::_Compressed_pair.3"** %2, metadata !5515, metadata !DIExpression()), !dbg !5516
  %3 = load %"class.std::_Compressed_pair.3"*, %"class.std::_Compressed_pair.3"** %2, align 8
  %4 = bitcast %"class.std::_Compressed_pair.3"* %3 to %"struct.std::default_delete.4"*, !dbg !5517
  ret %"struct.std::default_delete.4"* %4, !dbg !5518
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R?$default_delete@H@std@@QEBAXPEAH@Z"(%"struct.std::default_delete.4"* %0, i32* %1) #1 comdat align 2 !dbg !5519 {
  %3 = alloca i32*, align 8
  %4 = alloca %"struct.std::default_delete.4"*, align 8
  store i32* %1, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !5520, metadata !DIExpression()), !dbg !5521
  store %"struct.std::default_delete.4"* %0, %"struct.std::default_delete.4"** %4, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::default_delete.4"** %4, metadata !5522, metadata !DIExpression()), !dbg !5524
  %5 = load %"struct.std::default_delete.4"*, %"struct.std::default_delete.4"** %4, align 8
  %6 = load i32*, i32** %3, align 8, !dbg !5525
  %7 = icmp eq i32* %6, null, !dbg !5526
  br i1 %7, label %10, label %8, !dbg !5526

8:                                                ; preds = %2
  %9 = bitcast i32* %6 to i8*, !dbg !5526
  call void @"??3@YAXPEAX@Z"(i8* %9) #17, !dbg !5526
  br label %10, !dbg !5526

10:                                               ; preds = %8, %2
  ret void, !dbg !5527
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind willreturn writeonly }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline noreturn optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { allocsize(0) }

!llvm.dbg.cu = !{!25}
!llvm.linker.options = !{!2059, !2059, !2060, !2061, !2062, !2063, !2064}
!llvm.module.flags = !{!2065, !2066, !2067}
!llvm.ident = !{!2068}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_counter", linkageName: "?g_counter@expression@test@@3HA", scope: !2, file: !4, line: 15, type: !5, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "expression", scope: !3)
!3 = !DINamespace(name: "test", scope: null)
!4 = !DIFile(filename: "StlExprssionsTests.cpp", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "in_place", linkageName: "?in_place@std@@3Uin_place_t@1@B", scope: !8, file: !9, line: 618, type: !10, isLocal: false, isDefinition: true)
!8 = !DINamespace(name: "std", scope: null)
!9 = !DIFile(filename: "stl\\utility", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_place_t", scope: !8, file: !9, line: 615, size: 8, flags: DIFlagTypePassByValue, elements: !12, identifier: ".?AUin_place_t@std@@")
!12 = !{!13}
!13 = !DISubprogram(name: "in_place_t", scope: !11, file: !9, line: 616, type: !14, scopeLine: 616, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "_OptionsStorage", scope: !19, file: !20, line: 91, type: !24, isLocal: false, isDefinition: true)
!19 = distinct !DISubprogram(name: "__local_stdio_printf_options", scope: !20, file: !20, line: 89, type: !21, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!20 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_stdio_config.h", directory: "C:\\")
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !26, producer: "clang version 11.0.0 (https://github.com/ykfre/llvm-project.git eee67383dca48c5f93d255c2a61f5418265353fe)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !27, retainedTypes: !41, globals: !987, imports: !994, nameTableKind: None)
!26 = !DIFile(filename: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\StlExprssionsTests.cpp", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!27 = !{!28, !34}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_denorm_style", scope: !8, file: !29, line: 25, baseType: !5, size: 32, elements: !30, identifier: ".?AW4float_denorm_style@std@@")
!29 = !DIFile(filename: "stl\\limits", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "denorm_indeterminate", value: -1)
!32 = !DIEnumerator(name: "denorm_absent", value: 0)
!33 = !DIEnumerator(name: "denorm_present", value: 1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "float_round_style", scope: !8, file: !29, line: 32, baseType: !5, size: 32, elements: !35, identifier: ".?AW4float_round_style@std@@")
!35 = !{!36, !37, !38, !39, !40}
!36 = !DIEnumerator(name: "round_indeterminate", value: -1)
!37 = !DIEnumerator(name: "round_toward_zero", value: 0)
!38 = !DIEnumerator(name: "round_to_nearest", value: 1)
!39 = !DIEnumerator(name: "round_toward_infinity", value: 2)
!40 = !DIEnumerator(name: "round_toward_neg_infinity", value: 3)
!41 = !{!42, !140, !5, !964, !966, !967, !968, !165, !151, !969, !316, !972, !973, !975, !977, !984, !986, !142, !201}
!42 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "optional<int>", scope: !8, file: !43, line: 154, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !44, templateParams: !72, identifier: ".?AV?$optional@H@std@@")
!43 = !DIFile(filename: "stl\\optional", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!44 = !{!45, !84, !88, !98, !102, !105, !112, !116, !120, !124, !128, !132, !135, !136, !137, !138, !139}
!45 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !42, baseType: !46, extraData: i32 0)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "_SMF_control<_Optional_construct_base<int>, int>", scope: !8, file: !47, line: 146, baseType: !48)
!47 = !DIFile(filename: "stl\\xsmf_control.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_SMF_control_move_assign<std::_Optional_construct_base<int>, int>", scope: !8, file: !47, line: 136, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "conditional_t<conjunction_v<is_trivially_destructible<int>, is_trivially_move_constructible<int>, is_trivially_move_assignable<int> >, _SMF_control_copy_assign<std::_Optional_construct_base<int>, int>, conditional_t<conjunction_v<is_move_constructible<int>, is_move_assignable<int> >, _Non_trivial_move_assign<std::_Optional_construct_base<int>, int>, _Deleted_move_assign<std::_Optional_construct_base<int>, int> > >", scope: !8, file: !50, line: 68, baseType: !51)
!50 = !DIFile(filename: "stl\\xtr1common", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !52, file: !50, line: 59, baseType: !58)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::_Optional_construct_base<int>, std::_Non_trivial_move_assign<std::_Optional_construct_base<int>, int> >", scope: !8, file: !50, line: 58, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !54, identifier: ".?AU?$conditional@$00U?$_Optional_construct_base@H@std@@U?$_Non_trivial_move_assign@U?$_Optional_construct_base@H@std@@H@2@@std@@")
!53 = !{}
!54 = !{!55, !57, !82}
!55 = !DITemplateValueParameter(name: "_Test", type: !56, value: i1 true)
!56 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DITemplateTypeParameter(name: "_Ty1", type: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_construct_base<int>", scope: !8, file: !43, line: 109, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !59, templateParams: !72, identifier: ".?AU?$_Optional_construct_base@H@std@@")
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !58, baseType: !61, extraData: i32 0)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_destruct_base<int, true>", scope: !8, file: !43, line: 57, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !62, templateParams: !80, identifier: ".?AU?$_Optional_destruct_base@H$00@std@@")
!62 = !{!63, !74, !75, !79}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !43, line: 58, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !43, line: 58, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !65, identifier: ".?AT<unnamed-type-$S1>@?$_Optional_destruct_base@H$00@std@@")
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_Dummy", scope: !64, file: !43, line: 59, baseType: !67, size: 8)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_Value", scope: !64, file: !43, line: 60, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_const_t<int>", scope: !8, file: !50, line: 99, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !71, file: !50, line: 90, baseType: !5)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_const<int>", scope: !8, file: !50, line: 89, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !72, identifier: ".?AU?$remove_const@H@std@@")
!72 = !{!73}
!73 = !DITemplateTypeParameter(name: "_Ty", type: !5)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_Has_value", scope: !61, file: !43, line: 62, baseType: !56, size: 8, offset: 32)
!75 = !DISubprogram(name: "_Optional_destruct_base", scope: !61, file: !43, line: 64, type: !76, scopeLine: 64, flags: DIFlagPrototyped, spFlags: 0)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!79 = !DISubprogram(name: "reset", linkageName: "?reset@?$_Optional_destruct_base@H$00@std@@QEAAXXZ", scope: !61, file: !43, line: 70, type: !76, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!80 = !{!73, !81}
!81 = !DITemplateValueParameter(type: !56, value: i1 true)
!82 = !DITemplateTypeParameter(name: "_Ty2", type: !83)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Non_trivial_move_assign<std::_Optional_construct_base<int>, int>", scope: !8, file: !47, line: 107, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AU?$_Non_trivial_move_assign@U?$_Optional_construct_base@H@std@@H@std@@")
!84 = !DISubprogram(name: "optional", scope: !42, file: !43, line: 167, type: !85, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DISubprogram(name: "optional", scope: !42, file: !43, line: 168, type: !89, scopeLine: 168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !87, !91}
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nullopt_t", scope: !8, file: !43, line: 31, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !92, identifier: ".?AUnullopt_t@std@@")
!92 = !{!93}
!93 = !DISubprogram(name: "nullopt_t", scope: !91, file: !43, line: 33, type: !94, scopeLine: 33, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96, !97}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tag", scope: !91, file: !43, line: 32, size: 8, flags: DIFlagTypePassByValue, elements: !53, identifier: ".?AU_Tag@nullopt_t@std@@")
!98 = !DISubprogram(name: "operator=", linkageName: "??4?$optional@H@std@@QEAAAEAV01@Unullopt_t@1@@Z", scope: !42, file: !43, line: 256, type: !99, scopeLine: 256, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !87, !91}
!101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 64)
!102 = !DISubprogram(name: "swap", linkageName: "?swap@?$optional@H@std@@QEAAXAEAV12@@Z", scope: !42, file: !43, line: 316, type: !103, scopeLine: 316, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !87, !101}
!105 = !DISubprogram(name: "operator->", linkageName: "??C?$optional@H@std@@QEBAPEBHXZ", scope: !42, file: !43, line: 340, type: !106, scopeLine: 340, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!112 = !DISubprogram(name: "operator->", linkageName: "??C?$optional@H@std@@QEAAPEAHXZ", scope: !42, file: !43, line: 343, type: !113, scopeLine: 343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !87}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!116 = !DISubprogram(name: "operator*", linkageName: "??D?$optional@H@std@@QEGBAAEBHXZ", scope: !42, file: !43, line: 347, type: !117, scopeLine: 347, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!117 = !DISubroutineType(flags: DIFlagLValueReference, types: !118)
!118 = !{!119, !110}
!119 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 64)
!120 = !DISubprogram(name: "operator*", linkageName: "??D?$optional@H@std@@QEGAAAEAHXZ", scope: !42, file: !43, line: 350, type: !121, scopeLine: 350, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!121 = !DISubroutineType(flags: DIFlagLValueReference, types: !122)
!122 = !{!123, !87}
!123 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5, size: 64)
!124 = !DISubprogram(name: "operator*", linkageName: "??D?$optional@H@std@@QEHAA$$QEAHXZ", scope: !42, file: !43, line: 353, type: !125, scopeLine: 353, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!125 = !DISubroutineType(flags: DIFlagRValueReference, types: !126)
!126 = !{!127, !87}
!127 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5, size: 64)
!128 = !DISubprogram(name: "operator*", linkageName: "??D?$optional@H@std@@QEHBA$$QEBHXZ", scope: !42, file: !43, line: 356, type: !129, scopeLine: 356, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!129 = !DISubroutineType(flags: DIFlagRValueReference, types: !130)
!130 = !{!131, !110}
!131 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !109, size: 64)
!132 = !DISubprogram(name: "operator bool", linkageName: "??B?$optional@H@std@@QEBA_NXZ", scope: !42, file: !43, line: 360, type: !133, scopeLine: 360, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{!56, !110}
!135 = !DISubprogram(name: "has_value", linkageName: "?has_value@?$optional@H@std@@QEBA_NXZ", scope: !42, file: !43, line: 363, type: !133, scopeLine: 363, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!136 = !DISubprogram(name: "value", linkageName: "?value@?$optional@H@std@@QEGBAAEBHXZ", scope: !42, file: !43, line: 367, type: !117, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!137 = !DISubprogram(name: "value", linkageName: "?value@?$optional@H@std@@QEGAAAEAHXZ", scope: !42, file: !43, line: 374, type: !121, scopeLine: 374, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!138 = !DISubprogram(name: "value", linkageName: "?value@?$optional@H@std@@QEHAA$$QEAHXZ", scope: !42, file: !43, line: 381, type: !125, scopeLine: 381, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!139 = !DISubprogram(name: "value", linkageName: "?value@?$optional@H@std@@QEHBA$$QEBHXZ", scope: !42, file: !43, line: 388, type: !129, scopeLine: 388, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !8, file: !141, line: 4564, baseType: !142)
!141 = !DIFile(filename: "stl\\xstring", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!142 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !8, file: !141, line: 2205, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !143, templateParams: !963, identifier: ".?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@")
!143 = !{!144, !146, !147, !149, !153, !154, !155, !297, !303, !306, !309, !312, !345, !348, !352, !355, !358, !361, !375, !378, !382, !385, !394, !398, !402, !421, !439, !442, !443, !444, !447, !450, !451, !456, !459, !460, !461, !462, !471, !474, !475, !476, !479, !482, !485, !488, !491, !492, !493, !496, !497, !500, !503, !504, !507, !508, !509, !510, !511, !512, !515, !518, !521, !524, !527, !530, !533, !536, !539, !542, !545, !546, !549, !552, !555, !558, !561, !564, !567, !570, !573, !576, !580, !581, !582, !585, !588, !589, !590, !595, !600, !601, !602, !603, !604, !605, !606, !607, !613, !619, !620, !621, !825, !828, !829, !832, !835, !836, !837, !838, !839, !840, !843, !844, !845, !846, !847, !850, !853, !856, !859, !860, !865, !866, !869, !872, !875, !878, !881, !882, !883, !884, !885, !886, !887, !888, !889, !892, !893, !894, !895, !896, !897, !900, !901, !902, !903, !904, !905, !908, !911, !914, !917, !920, !923, !926, !929, !932, !935, !939, !942, !945, !946, !947, !948, !949, !950, !951, !958}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_BUF_SIZE", scope: !142, file: !141, line: 2242, baseType: !145, flags: DIFlagStaticMember, extraData: i64 16)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_ALLOC_MASK", scope: !142, file: !141, line: 2243, baseType: !145, flags: DIFlagStaticMember, extraData: i64 15)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_Can_memcpy_val", scope: !142, file: !141, line: 2255, baseType: !148, flags: DIFlagStaticMember)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_Memcpy_val_offset", scope: !142, file: !141, line: 2257, baseType: !150, flags: DIFlagStaticMember)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !24)
!152 = !DIFile(filename: "temp\\RelWithDebInfo\\lib\\clang\\11.0.0\\include\\stddef.h", directory: "C:\\temp2\\llvm-project")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_Memcpy_val_size", scope: !142, file: !141, line: 2258, baseType: !150, flags: DIFlagStaticMember)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !142, file: !141, line: 2732, baseType: !145, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_Mypair", scope: !142, file: !141, line: 4332, baseType: !156, size: 256)
!156 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Compressed_pair<std::allocator<char>, std::_String_val<std::_Simple_types<char> >, true>", scope: !8, file: !157, line: 1327, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !158, templateParams: !294, identifier: ".?AV?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@")
!157 = !DIFile(filename: "stl\\xmemory", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!158 = !{!159, !200, !284, !289}
!159 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !156, baseType: !160, extraData: i32 0)
!160 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !8, file: !157, line: 761, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !161, templateParams: !198, identifier: ".?AV?$allocator@D@std@@")
!161 = !{!162, !169, !175, !179, !183, !187, !190, !195}
!162 = !DISubprogram(name: "address", linkageName: "?address@?$allocator@D@std@@QEBAPEADAEAD@Z", scope: !160, file: !157, line: 787, type: !163, scopeLine: 787, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !166, !168}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !67, size: 64)
!169 = !DISubprogram(name: "address", linkageName: "?address@?$allocator@D@std@@QEBAPEBDAEBD@Z", scope: !160, file: !157, line: 791, type: !170, scopeLine: 791, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !166, !174}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!174 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !173, size: 64)
!175 = !DISubprogram(name: "allocator", scope: !160, file: !157, line: 795, type: !176, scopeLine: 795, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DISubprogram(name: "allocator", scope: !160, file: !157, line: 797, type: !180, scopeLine: 797, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !178, !182}
!182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !167, size: 64)
!183 = !DISubprogram(name: "deallocate", linkageName: "?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z", scope: !160, file: !157, line: 801, type: !184, scopeLine: 801, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !178, !186, !150}
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!187 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$allocator@D@std@@QEAAPEAD_K@Z", scope: !160, file: !157, line: 806, type: !188, scopeLine: 806, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{!165, !178, !150}
!190 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$allocator@D@std@@QEAAPEAD_KPEBX@Z", scope: !160, file: !157, line: 810, type: !191, scopeLine: 810, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!165, !178, !150, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!195 = !DISubprogram(name: "max_size", linkageName: "?max_size@?$allocator@D@std@@QEBA_KXZ", scope: !160, file: !157, line: 825, type: !196, scopeLine: 825, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!151, !166}
!198 = !{!199}
!199 = !DITemplateTypeParameter(name: "_Ty", type: !67)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_Myval2", scope: !156, file: !157, line: 1329, baseType: !201, size: 256, flags: DIFlagPublic)
!201 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_String_val<std::_Simple_types<char> >", scope: !8, file: !141, line: 2114, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !202, templateParams: !282, identifier: ".?AV?$_String_val@U?$_Simple_types@D@std@@@std@@")
!202 = !{!203, !224, !231, !232, !252, !253, !254, !258, !262, !269, !272, !275, !276, !279}
!203 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !201, baseType: !204, flags: DIFlagPublic, extraData: i32 0)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Container_base", scope: !8, file: !157, line: 1238, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Container_base0", scope: !8, file: !157, line: 1064, size: 8, flags: DIFlagTypePassByValue, elements: !206, identifier: ".?AU_Container_base0@std@@")
!206 = !{!207, !211, !215, !221}
!207 = !DISubprogram(name: "_Orphan_all", linkageName: "?_Orphan_all@_Container_base0@std@@QEAAXXZ", scope: !205, file: !157, line: 1065, type: !208, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!211 = !DISubprogram(name: "_Swap_proxy_and_iterators", linkageName: "?_Swap_proxy_and_iterators@_Container_base0@std@@QEAAXAEAU12@@Z", scope: !205, file: !157, line: 1066, type: !212, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !210, !214}
!214 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !205, size: 64)
!215 = !DISubprogram(name: "_Alloc_proxy", linkageName: "?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z", scope: !205, file: !157, line: 1067, type: !216, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !210, !218}
!218 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Fake_allocator", scope: !8, file: !157, line: 1062, size: 8, flags: DIFlagTypePassByValue, elements: !53, identifier: ".?AU_Fake_allocator@std@@")
!221 = !DISubprogram(name: "_Reload_proxy", linkageName: "?_Reload_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@0@Z", scope: !205, file: !157, line: 1068, type: !222, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !210, !218, !218}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_BUF_SIZE", scope: !201, file: !141, line: 2127, baseType: !225, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 16)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !201, file: !141, line: 2117, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !228, file: !157, line: 753, baseType: !151)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Simple_types<char>", scope: !8, file: !157, line: 750, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !229, identifier: ".?AU?$_Simple_types@D@std@@")
!229 = !{!230}
!230 = !DITemplateTypeParameter(name: "_Value_type", type: !67)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_ALLOC_MASK", scope: !201, file: !141, line: 2129, baseType: !225, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 15)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_Bx", scope: !201, file: !141, line: 2185, baseType: !233, size: 128, flags: DIFlagPublic)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Bxty", scope: !201, file: !141, line: 2177, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !234, identifier: ".?AT_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@")
!234 = !{!235, !241, !245, !247, !251}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_Buf", scope: !233, file: !141, line: 2182, baseType: !236, size: 128)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !239)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !201, file: !141, line: 2116, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !228, file: !157, line: 752, baseType: !67)
!239 = !{!240}
!240 = !DISubrange(count: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_Ptr", scope: !233, file: !141, line: 2183, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !201, file: !141, line: 2119, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !228, file: !157, line: 755, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_Alias", scope: !233, file: !141, line: 2184, baseType: !246, size: 128)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !239)
!247 = !DISubprogram(name: "_Bxty", scope: !233, file: !141, line: 2178, type: !248, scopeLine: 2178, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!251 = !DISubprogram(name: "~_Bxty", scope: !233, file: !141, line: 2180, type: !248, scopeLine: 2180, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_Mysize", scope: !201, file: !141, line: 2187, baseType: !226, size: 64, offset: 128, flags: DIFlagPublic)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_Myres", scope: !201, file: !141, line: 2188, baseType: !226, size: 64, offset: 192, flags: DIFlagPublic)
!254 = !DISubprogram(name: "_String_val", scope: !201, file: !141, line: 2124, type: !255, scopeLine: 2124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!258 = !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ", scope: !201, file: !141, line: 2134, type: !259, scopeLine: 2134, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !257}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!262 = !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ", scope: !201, file: !141, line: 2143, type: !263, scopeLine: 2143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!269 = !DISubprogram(name: "_Large_string_engaged", linkageName: "?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ", scope: !201, file: !141, line: 2152, type: !270, scopeLine: 2152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{!56, !267}
!272 = !DISubprogram(name: "_Check_offset", linkageName: "?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z", scope: !201, file: !141, line: 2156, type: !273, scopeLine: 2156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !267, !225}
!275 = !DISubprogram(name: "_Check_offset_exclusive", linkageName: "?_Check_offset_exclusive@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z", scope: !201, file: !141, line: 2162, type: !273, scopeLine: 2162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!276 = !DISubprogram(name: "_Xran", linkageName: "?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ", scope: !201, file: !141, line: 2168, type: !277, scopeLine: 2168, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember | DIFlagNoReturn, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{null}
!279 = !DISubprogram(name: "_Clamp_suffix_size", linkageName: "?_Clamp_suffix_size@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_K_K0@Z", scope: !201, file: !141, line: 2172, type: !280, scopeLine: 2172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!226, !267, !225, !225}
!282 = !{!283}
!283 = !DITemplateTypeParameter(name: "_Val_types", type: !228)
!284 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ", scope: !156, file: !157, line: 1343, type: !285, scopeLine: 1343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !160, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!289 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ", scope: !156, file: !157, line: 1347, type: !290, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!182, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!294 = !{!295, !296, !81}
!295 = !DITemplateTypeParameter(name: "_Ty1", type: !160)
!296 = !DITemplateTypeParameter(name: "_Ty2", type: !201)
!297 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2272, type: !298, scopeLine: 2272, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300, !301}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!303 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2280, type: !304, scopeLine: 2280, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !300, !301, !182}
!306 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2287, type: !307, scopeLine: 2287, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !300}
!309 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2292, type: !310, scopeLine: 2292, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !300, !182}
!312 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2297, type: !313, scopeLine: 2297, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !300, !301, !315, !182}
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !142, file: !141, line: 2228, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !318, file: !157, line: 664, baseType: !151)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Default_allocator_traits<std::allocator<char> >", scope: !8, file: !157, line: 655, size: 8, flags: DIFlagTypePassByValue, elements: !319, templateParams: !343, identifier: ".?AU?$_Default_allocator_traits@V?$allocator@D@std@@@std@@")
!319 = !{!320, !329, !333, !337, !340}
!320 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SAPEADAEAV?$allocator@D@2@_K@Z", scope: !318, file: !157, line: 678, type: !321, scopeLine: 678, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !287, !327}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !318, file: !157, line: 659, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !318, file: !157, line: 657, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !160, file: !157, line: 768, baseType: !67)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !157, line: 664, baseType: !151)
!329 = !DISubprogram(name: "allocate", linkageName: "?allocate@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SAPEADAEAV?$allocator@D@2@_KPEBX@Z", scope: !318, file: !157, line: 683, type: !330, scopeLine: 683, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!323, !287, !327, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !157, line: 662, baseType: !193)
!333 = !DISubprogram(name: "deallocate", linkageName: "?deallocate@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SAXAEAV?$allocator@D@2@QEAD_K@Z", scope: !318, file: !157, line: 687, type: !334, scopeLine: 687, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !287, !336, !327}
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!337 = !DISubprogram(name: "max_size", linkageName: "?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z", scope: !318, file: !157, line: 702, type: !338, scopeLine: 702, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{!317, !182}
!340 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z", scope: !318, file: !157, line: 706, type: !341, scopeLine: 706, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{!160, !182}
!343 = !{!344}
!344 = !DITemplateTypeParameter(name: "_Alloc", type: !160)
!345 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2306, type: !346, scopeLine: 2306, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !300, !301, !315, !315, !182}
!348 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2316, type: !349, scopeLine: 2316, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !300, !351, !315}
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!352 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2325, type: !353, scopeLine: 2325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !300, !351, !315, !182}
!355 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2335, type: !356, scopeLine: 2335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !300, !351}
!358 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2354, type: !359, scopeLine: 2354, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !300, !315, !173}
!361 = !DISubprogram(name: "_Construct", linkageName: "?_Construct@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXQEAD0Urandom_access_iterator_tag@2@@Z", scope: !142, file: !141, line: 2404, type: !362, scopeLine: 2404, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !300, !186, !186, !364}
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !8, file: !365, line: 238, size: 8, flags: DIFlagTypePassByValue, elements: !366, identifier: ".?AUrandom_access_iterator_tag@std@@")
!365 = !DIFile(filename: "stl\\xutility", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !364, baseType: !368, extraData: i32 0)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !8, file: !365, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !369, identifier: ".?AUbidirectional_iterator_tag@std@@")
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !368, baseType: !371, extraData: i32 0)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !8, file: !365, line: 234, size: 8, flags: DIFlagTypePassByValue, elements: !372, identifier: ".?AUforward_iterator_tag@std@@")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !371, baseType: !374, extraData: i32 0)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !8, file: !365, line: 230, size: 8, flags: DIFlagTypePassByValue, elements: !53, identifier: ".?AUinput_iterator_tag@std@@")
!375 = !DISubprogram(name: "_Construct", linkageName: "?_Construct@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXQEBD0Urandom_access_iterator_tag@2@@Z", scope: !142, file: !141, line: 2411, type: !376, scopeLine: 2411, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !300, !351, !351, !364}
!378 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2418, type: !379, scopeLine: 2418, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !300, !381}
!381 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !142, size: 64)
!382 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2423, type: !383, scopeLine: 2423, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !300, !381, !182}
!385 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2440, type: !386, scopeLine: 2440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !300, !388, !301, !351, !315, !351, !315}
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_String_constructor_concat_tag", scope: !8, file: !141, line: 2195, size: 8, flags: DIFlagTypePassByValue, elements: !389, identifier: ".?AU_String_constructor_concat_tag@std@@")
!389 = !{!390}
!390 = !DISubprogram(name: "_String_constructor_concat_tag", scope: !388, file: !141, line: 2197, type: !391, scopeLine: 2197, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!394 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2468, type: !395, scopeLine: 2468, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !300, !388, !397, !397}
!397 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !142, size: 64)
!398 = !DISubprogram(name: "_Move_assign", linkageName: "?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z", scope: !142, file: !141, line: 2558, type: !399, scopeLine: 2558, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !300, !397, !401}
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Equal_allocators", scope: !8, file: !157, line: 721, size: 8, flags: DIFlagTypePassByValue, elements: !53, identifier: ".?AU_Equal_allocators@std@@")
!402 = !DISubprogram(name: "_Move_assign", linkageName: "?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z", scope: !142, file: !141, line: 2564, type: !403, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !300, !397, !405}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Propagate_allocators", scope: !8, file: !157, line: 722, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !8, file: !50, line: 41, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_constant<true>", scope: !8, file: !50, line: 39, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !8, file: !50, line: 22, size: 8, flags: DIFlagTypePassByValue, elements: !409, templateParams: !418, identifier: ".?AU?$integral_constant@_N$00@std@@")
!409 = !{!410, !411, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !408, file: !50, line: 23, baseType: !148, flags: DIFlagStaticMember, extraData: i1 true)
!411 = !DISubprogram(name: "operator bool", linkageName: "??B?$integral_constant@_N$00@std@@QEBA_NXZ", scope: !408, file: !50, line: 28, type: !412, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !408, file: !50, line: 25, baseType: !56)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!417 = !DISubprogram(name: "operator()", linkageName: "??R?$integral_constant@_N$00@std@@QEBA_NXZ", scope: !408, file: !50, line: 32, type: !412, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!418 = !{!419, !420}
!419 = !DITemplateTypeParameter(name: "_Ty", type: !56)
!420 = !DITemplateValueParameter(name: "_Val", type: !56, value: i1 true)
!421 = !DISubprogram(name: "_Move_assign", linkageName: "?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$0A@@2@@Z", scope: !142, file: !141, line: 2577, type: !422, scopeLine: 2577, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !300, !397, !424}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "_No_propagate_allocators", scope: !8, file: !157, line: 723, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !8, file: !50, line: 42, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_constant<false>", scope: !8, file: !50, line: 39, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !8, file: !50, line: 22, size: 8, flags: DIFlagTypePassByValue, elements: !428, templateParams: !437, identifier: ".?AU?$integral_constant@_N$0A@@std@@")
!428 = !{!429, !430, !436}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !427, file: !50, line: 23, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!430 = !DISubprogram(name: "operator bool", linkageName: "??B?$integral_constant@_N$0A@@std@@QEBA_NXZ", scope: !427, file: !50, line: 28, type: !431, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !427, file: !50, line: 25, baseType: !56)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!436 = !DISubprogram(name: "operator()", linkageName: "??R?$integral_constant@_N$0A@@std@@QEBA_NXZ", scope: !427, file: !50, line: 32, type: !431, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!437 = !{!419, !438}
!438 = !DITemplateValueParameter(name: "_Val", type: !56, value: i1 false)
!439 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z", scope: !142, file: !141, line: 2586, type: !440, scopeLine: 2586, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!397, !300, !381}
!442 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@$$QEAV12@@Z", scope: !142, file: !141, line: 2594, type: !440, scopeLine: 2594, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!443 = !DISubprogram(name: "_Memcpy_val_from", linkageName: "?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !142, file: !141, line: 2600, type: !298, scopeLine: 2600, flags: DIFlagPrototyped, spFlags: 0)
!444 = !DISubprogram(name: "_Take_contents", linkageName: "?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z", scope: !142, file: !141, line: 2609, type: !445, scopeLine: 2609, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !300, !397, !406}
!447 = !DISubprogram(name: "_Take_contents", linkageName: "?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$0A@@2@@Z", scope: !142, file: !141, line: 2628, type: !448, scopeLine: 2628, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !300, !397, !425}
!450 = !DISubprogram(name: "_Construct_lv_contents", linkageName: "?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !142, file: !141, line: 2650, type: !298, scopeLine: 2650, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DISubprogram(name: "basic_string", scope: !142, file: !141, line: 2676, type: !452, scopeLine: 2676, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !300, !454, !182}
!454 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !8, file: !455, line: 23, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$initializer_list@D@std@@")
!455 = !DIFile(filename: "stl\\initializer_list", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!456 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@V?$initializer_list@D@1@@Z", scope: !142, file: !141, line: 2685, type: !457, scopeLine: 2685, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{!397, !300, !454}
!459 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@V?$initializer_list@D@1@@Z", scope: !142, file: !141, line: 2689, type: !457, scopeLine: 2689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!460 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$initializer_list@D@2@@Z", scope: !142, file: !141, line: 2693, type: !457, scopeLine: 2693, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!461 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$initializer_list@D@2@@Z", scope: !142, file: !141, line: 2697, type: !457, scopeLine: 2697, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!462 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$initializer_list@D@2@@Z", scope: !142, file: !141, line: 2701, type: !463, scopeLine: 2701, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!465, !300, !467, !470}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !142, file: !141, line: 2235, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_class_type, name: "_String_iterator<std::_String_val<std::_Simple_types<char> > >", scope: !8, file: !141, line: 1986, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@")
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !142, file: !141, line: 2236, baseType: !469)
!469 = !DICompositeType(tag: DW_TAG_class_type, name: "_String_const_iterator<std::_String_val<std::_Simple_types<char> > >", scope: !8, file: !141, line: 1758, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@")
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!471 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0V?$initializer_list@D@2@@Z", scope: !142, file: !141, line: 2710, type: !472, scopeLine: 2710, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{!397, !300, !467, !467, !470}
!474 = !DISubprogram(name: "~basic_string", scope: !142, file: !141, line: 2722, type: !307, scopeLine: 2722, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!475 = !DISubprogram(name: "_Copy_assign_val_from_small", linkageName: "?_Copy_assign_val_from_small@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !142, file: !141, line: 2735, type: !298, scopeLine: 2735, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubprogram(name: "_Copy_assign", linkageName: "?_Copy_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@U?$integral_constant@_N$0A@@2@@Z", scope: !142, file: !141, line: 2748, type: !477, scopeLine: 2748, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !300, !301, !425}
!479 = !DISubprogram(name: "_Copy_assign", linkageName: "?_Copy_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@U?$integral_constant@_N$00@2@@Z", scope: !142, file: !141, line: 2753, type: !480, scopeLine: 2753, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !300, !301, !406}
!482 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@AEBV01@@Z", scope: !142, file: !141, line: 2784, type: !483, scopeLine: 2784, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!397, !300, !301}
!485 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z", scope: !142, file: !141, line: 2799, type: !486, scopeLine: 2799, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!486 = !DISubroutineType(types: !487)
!487 = !{!397, !300, !351}
!488 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@D@Z", scope: !142, file: !141, line: 2803, type: !489, scopeLine: 2803, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!397, !300, !173}
!491 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@AEBV01@@Z", scope: !142, file: !141, line: 2811, type: !483, scopeLine: 2811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!492 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z", scope: !142, file: !141, line: 2822, type: !486, scopeLine: 2822, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!493 = !DISubprogram(name: "operator+=", linkageName: "??Y?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@D@Z", scope: !142, file: !141, line: 2826, type: !494, scopeLine: 2826, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{!397, !300, !67}
!496 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z", scope: !142, file: !141, line: 2831, type: !483, scopeLine: 2831, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!497 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@_K_K@Z", scope: !142, file: !141, line: 2835, type: !498, scopeLine: 2835, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!397, !300, !301, !315, !316}
!500 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z", scope: !142, file: !141, line: 2857, type: !501, scopeLine: 2857, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!397, !300, !351, !315}
!503 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z", scope: !142, file: !141, line: 2879, type: !486, scopeLine: 2879, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!504 = !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z", scope: !142, file: !141, line: 2883, type: !505, scopeLine: 2883, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!397, !300, !315, !173}
!507 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z", scope: !142, file: !141, line: 2937, type: !483, scopeLine: 2937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!508 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@_K_K@Z", scope: !142, file: !141, line: 2942, type: !498, scopeLine: 2942, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z", scope: !142, file: !141, line: 2964, type: !501, scopeLine: 2964, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!510 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z", scope: !142, file: !141, line: 2983, type: !486, scopeLine: 2983, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!511 = !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z", scope: !142, file: !141, line: 2987, type: !505, scopeLine: 2987, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!512 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KAEBV12@@Z", scope: !142, file: !141, line: 3050, type: !513, scopeLine: 3050, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!397, !300, !315, !301}
!515 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KAEBV12@0_K@Z", scope: !142, file: !141, line: 3054, type: !516, scopeLine: 3054, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{!397, !300, !315, !301, !315, !316}
!518 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD0@Z", scope: !142, file: !141, line: 3077, type: !519, scopeLine: 3077, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!397, !300, !315, !351, !315}
!521 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD@Z", scope: !142, file: !141, line: 3116, type: !522, scopeLine: 3116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!397, !300, !315, !351}
!524 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z", scope: !142, file: !141, line: 3120, type: !525, scopeLine: 3120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!397, !300, !315, !315, !173}
!527 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@D@Z", scope: !142, file: !141, line: 3144, type: !528, scopeLine: 3144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!465, !300, !467, !173}
!530 = !DISubprogram(name: "insert", linkageName: "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@_KD@Z", scope: !142, file: !141, line: 3153, type: !531, scopeLine: 3153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!465, !300, !467, !315, !173}
!533 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K@Z", scope: !142, file: !141, line: 3209, type: !534, scopeLine: 3209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!397, !300, !315}
!536 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_K@Z", scope: !142, file: !141, line: 3215, type: !537, scopeLine: 3215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{!397, !300, !315, !316}
!539 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@@Z", scope: !142, file: !141, line: 3227, type: !540, scopeLine: 3227, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!465, !300, !467}
!542 = !DISubprogram(name: "erase", linkageName: "?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0@Z", scope: !142, file: !141, line: 3236, type: !543, scopeLine: 3236, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!465, !300, !467, !467}
!545 = !DISubprogram(name: "clear", linkageName: "?clear@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !142, file: !141, line: 3246, type: !307, scopeLine: 3246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!546 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0AEBV12@@Z", scope: !142, file: !141, line: 3250, type: !547, scopeLine: 3250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{!397, !300, !315, !315, !301}
!549 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_KAEBV12@01@Z", scope: !142, file: !141, line: 3255, type: !550, scopeLine: 3255, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!397, !300, !315, !316, !301, !315, !316}
!552 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_KQEBD0@Z", scope: !142, file: !141, line: 3280, type: !553, scopeLine: 3280, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!397, !300, !315, !316, !351, !315}
!555 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0QEBD@Z", scope: !142, file: !141, line: 3340, type: !556, scopeLine: 3340, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{!397, !300, !315, !315, !351}
!558 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K_K0D@Z", scope: !142, file: !141, line: 3345, type: !559, scopeLine: 3345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!397, !300, !315, !316, !315, !173}
!561 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0AEBV12@@Z", scope: !142, file: !141, line: 3377, type: !562, scopeLine: 3377, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{!397, !300, !467, !467, !301}
!564 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0QEBD_K@Z", scope: !142, file: !141, line: 3400, type: !565, scopeLine: 3400, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!397, !300, !467, !467, !351, !315}
!567 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0QEBD@Z", scope: !142, file: !141, line: 3411, type: !568, scopeLine: 3411, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!397, !300, !467, !467, !351}
!570 = !DISubprogram(name: "replace", linkageName: "?replace@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@0_KD@Z", scope: !142, file: !141, line: 3421, type: !571, scopeLine: 3421, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!397, !300, !467, !467, !315, !173}
!573 = !DISubprogram(name: "begin", linkageName: "?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3485, type: !574, scopeLine: 3485, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!465, !300}
!576 = !DISubprogram(name: "begin", linkageName: "?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3489, type: !577, scopeLine: 3489, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{!468, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!580 = !DISubprogram(name: "end", linkageName: "?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3493, type: !574, scopeLine: 3493, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!581 = !DISubprogram(name: "end", linkageName: "?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3499, type: !577, scopeLine: 3499, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!582 = !DISubprogram(name: "_Unchecked_begin", linkageName: "?_Unchecked_begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAPEADXZ", scope: !142, file: !141, line: 3505, type: !583, scopeLine: 3505, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{!165, !300}
!585 = !DISubprogram(name: "_Unchecked_begin", linkageName: "?_Unchecked_begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !142, file: !141, line: 3509, type: !586, scopeLine: 3509, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!586 = !DISubroutineType(types: !587)
!587 = !{!172, !579}
!588 = !DISubprogram(name: "_Unchecked_end", linkageName: "?_Unchecked_end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAPEADXZ", scope: !142, file: !141, line: 3513, type: !583, scopeLine: 3513, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!589 = !DISubprogram(name: "_Unchecked_end", linkageName: "?_Unchecked_end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !142, file: !141, line: 3517, type: !586, scopeLine: 3517, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!590 = !DISubprogram(name: "rbegin", linkageName: "?rbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$reverse_iterator@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3521, type: !591, scopeLine: 3521, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!591 = !DISubroutineType(types: !592)
!592 = !{!593, !300}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !142, file: !141, line: 2238, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_String_iterator<std::_String_val<std::_Simple_types<char> > > >", scope: !8, file: !365, line: 1808, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$reverse_iterator@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@")
!595 = !DISubprogram(name: "rbegin", linkageName: "?rbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3525, type: !596, scopeLine: 3525, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{!598, !579}
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !142, file: !141, line: 2239, baseType: !599)
!599 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_String_const_iterator<std::_String_val<std::_Simple_types<char> > > >", scope: !8, file: !365, line: 1808, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@")
!600 = !DISubprogram(name: "rend", linkageName: "?rend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$reverse_iterator@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3529, type: !591, scopeLine: 3529, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!601 = !DISubprogram(name: "rend", linkageName: "?rend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3533, type: !596, scopeLine: 3533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!602 = !DISubprogram(name: "cbegin", linkageName: "?cbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3537, type: !577, scopeLine: 3537, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!603 = !DISubprogram(name: "cend", linkageName: "?cend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3541, type: !577, scopeLine: 3541, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!604 = !DISubprogram(name: "crbegin", linkageName: "?crbegin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3545, type: !596, scopeLine: 3545, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!605 = !DISubprogram(name: "crend", linkageName: "?crend@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$reverse_iterator@V?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@2@XZ", scope: !142, file: !141, line: 3549, type: !596, scopeLine: 3549, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!606 = !DISubprogram(name: "shrink_to_fit", linkageName: "?shrink_to_fit@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !142, file: !141, line: 3553, type: !307, scopeLine: 3553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!607 = !DISubprogram(name: "at", linkageName: "?at@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z", scope: !142, file: !141, line: 3576, type: !608, scopeLine: 3576, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!608 = !DISubroutineType(types: !609)
!609 = !{!610, !300, !315}
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !142, file: !141, line: 2232, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !142, file: !141, line: 2227, baseType: !67)
!613 = !DISubprogram(name: "at", linkageName: "?at@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z", scope: !142, file: !141, line: 3581, type: !614, scopeLine: 3581, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !579, !315}
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !142, file: !141, line: 2233, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!619 = !DISubprogram(name: "operator[]", linkageName: "??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z", scope: !142, file: !141, line: 3586, type: !608, scopeLine: 3586, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!620 = !DISubprogram(name: "operator[]", linkageName: "??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z", scope: !142, file: !141, line: 3593, type: !614, scopeLine: 3593, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!621 = !DISubprogram(name: "operator basic_string_view", linkageName: "??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ", scope: !142, file: !141, line: 3601, type: !622, scopeLine: 3601, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !579}
!624 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !8, file: !141, line: 1149, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !625, templateParams: !770, identifier: ".?AV?$basic_string_view@DU?$char_traits@D@std@@@std@@")
!625 = !{!626, !627, !629, !631, !635, !640, !644, !648, !652, !658, !659, !660, !661, !666, !667, !668, !669, !672, !673, !676, !677, !680, !681, !682, !686, !687, !690, !691, !694, !695, !698, !702, !705, !708, !711, !714, !717, !720, !723, !726, !729, !732, !735, !738, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !765, !766, !769}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !624, file: !141, line: 1168, baseType: !145, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_Mydata", scope: !624, file: !141, line: 1567, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !624, file: !141, line: 1158, baseType: !172)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_Mysize", scope: !624, file: !141, line: 1568, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !141, line: 1165, baseType: !151)
!631 = !DISubprogram(name: "basic_string_view", scope: !624, file: !141, line: 1170, type: !632, scopeLine: 1170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!635 = !DISubprogram(name: "basic_string_view", scope: !624, file: !141, line: 1172, type: !636, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !634, !638}
!638 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!640 = !DISubprogram(name: "operator=", linkageName: "??4?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAAAEAV01@AEBV01@@Z", scope: !624, file: !141, line: 1173, type: !641, scopeLine: 1173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!643, !634, !638}
!643 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !624, size: 64)
!644 = !DISubprogram(name: "basic_string_view", scope: !624, file: !141, line: 1175, type: !645, scopeLine: 1175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !634, !647}
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!648 = !DISubprogram(name: "basic_string_view", scope: !624, file: !141, line: 1178, type: !649, scopeLine: 1178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !634, !647, !651}
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!652 = !DISubprogram(name: "begin", linkageName: "?begin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ", scope: !624, file: !141, line: 1186, type: !653, scopeLine: 1186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!655, !657}
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !624, file: !141, line: 1161, baseType: !656)
!656 = !DICompositeType(tag: DW_TAG_class_type, name: "_String_view_iterator<std::char_traits<char> >", scope: !8, file: !141, line: 894, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$_String_view_iterator@U?$char_traits@D@std@@@std@@")
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!658 = !DISubprogram(name: "end", linkageName: "?end@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ", scope: !624, file: !141, line: 1194, type: !653, scopeLine: 1194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!659 = !DISubprogram(name: "cbegin", linkageName: "?cbegin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ", scope: !624, file: !141, line: 1202, type: !653, scopeLine: 1202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!660 = !DISubprogram(name: "cend", linkageName: "?cend@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ", scope: !624, file: !141, line: 1206, type: !653, scopeLine: 1206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!661 = !DISubprogram(name: "rbegin", linkageName: "?rbegin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$reverse_iterator@V?$_String_view_iterator@U?$char_traits@D@std@@@std@@@2@XZ", scope: !624, file: !141, line: 1210, type: !662, scopeLine: 1210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{!664, !657}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !624, file: !141, line: 1163, baseType: !665)
!665 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_String_view_iterator<std::char_traits<char> > >", scope: !8, file: !365, line: 1808, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AV?$reverse_iterator@V?$_String_view_iterator@U?$char_traits@D@std@@@std@@@std@@")
!666 = !DISubprogram(name: "rend", linkageName: "?rend@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$reverse_iterator@V?$_String_view_iterator@U?$char_traits@D@std@@@std@@@2@XZ", scope: !624, file: !141, line: 1214, type: !662, scopeLine: 1214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!667 = !DISubprogram(name: "crbegin", linkageName: "?crbegin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$reverse_iterator@V?$_String_view_iterator@U?$char_traits@D@std@@@std@@@2@XZ", scope: !624, file: !141, line: 1218, type: !662, scopeLine: 1218, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!668 = !DISubprogram(name: "crend", linkageName: "?crend@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$reverse_iterator@V?$_String_view_iterator@U?$char_traits@D@std@@@std@@@2@XZ", scope: !624, file: !141, line: 1222, type: !662, scopeLine: 1222, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!669 = !DISubprogram(name: "_Unchecked_begin", linkageName: "?_Unchecked_begin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ", scope: !624, file: !141, line: 1226, type: !670, scopeLine: 1226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!628, !657}
!672 = !DISubprogram(name: "_Unchecked_end", linkageName: "?_Unchecked_end@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ", scope: !624, file: !141, line: 1230, type: !670, scopeLine: 1230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!673 = !DISubprogram(name: "size", linkageName: "?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ", scope: !624, file: !141, line: 1234, type: !674, scopeLine: 1234, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{!630, !657}
!676 = !DISubprogram(name: "length", linkageName: "?length@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ", scope: !624, file: !141, line: 1238, type: !674, scopeLine: 1238, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!677 = !DISubprogram(name: "empty", linkageName: "?empty@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_NXZ", scope: !624, file: !141, line: 1242, type: !678, scopeLine: 1242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!56, !657}
!680 = !DISubprogram(name: "data", linkageName: "?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ", scope: !624, file: !141, line: 1246, type: !670, scopeLine: 1246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!681 = !DISubprogram(name: "max_size", linkageName: "?max_size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ", scope: !624, file: !141, line: 1250, type: !674, scopeLine: 1250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!682 = !DISubprogram(name: "operator[]", linkageName: "??A?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBD_K@Z", scope: !624, file: !141, line: 1256, type: !683, scopeLine: 1256, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!685, !657, !651}
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !624, file: !141, line: 1160, baseType: !174)
!686 = !DISubprogram(name: "at", linkageName: "?at@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBD_K@Z", scope: !624, file: !141, line: 1263, type: !683, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!687 = !DISubprogram(name: "front", linkageName: "?front@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBDXZ", scope: !624, file: !141, line: 1269, type: !688, scopeLine: 1269, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!685, !657}
!690 = !DISubprogram(name: "back", linkageName: "?back@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBDXZ", scope: !624, file: !141, line: 1276, type: !688, scopeLine: 1276, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!691 = !DISubprogram(name: "remove_prefix", linkageName: "?remove_prefix@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAAX_K@Z", scope: !624, file: !141, line: 1283, type: !692, scopeLine: 1283, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !634, !651}
!694 = !DISubprogram(name: "remove_suffix", linkageName: "?remove_suffix@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAAX_K@Z", scope: !624, file: !141, line: 1291, type: !692, scopeLine: 1291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!695 = !DISubprogram(name: "swap", linkageName: "?swap@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAAXAEAV12@@Z", scope: !624, file: !141, line: 1298, type: !696, scopeLine: 1298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !634, !643}
!698 = !DISubprogram(name: "copy", linkageName: "?copy@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEAD_K_K@Z", scope: !624, file: !141, line: 1304, type: !699, scopeLine: 1304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{!701, !657, !186, !630, !651}
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !624, file: !141, line: 1165, baseType: !151)
!702 = !DISubprogram(name: "_Copy_s", linkageName: "?_Copy_s@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEAD_K_K1@Z", scope: !624, file: !141, line: 1312, type: !703, scopeLine: 1312, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!703 = !DISubroutineType(types: !704)
!704 = !{!701, !657, !186, !651, !630, !651}
!705 = !DISubprogram(name: "substr", linkageName: "?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z", scope: !624, file: !141, line: 1321, type: !706, scopeLine: 1321, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{!624, !657, !651, !630}
!708 = !DISubprogram(name: "_Equal", linkageName: "?_Equal@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_NV12@@Z", scope: !624, file: !141, line: 1328, type: !709, scopeLine: 1328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!56, !657, !639}
!711 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAHV12@@Z", scope: !624, file: !141, line: 1332, type: !712, scopeLine: 1332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!5, !657, !639}
!714 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0V12@@Z", scope: !624, file: !141, line: 1336, type: !715, scopeLine: 1336, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!5, !657, !651, !651, !639}
!717 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0V12@00@Z", scope: !624, file: !141, line: 1341, type: !718, scopeLine: 1341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!5, !657, !651, !651, !639, !651, !651}
!720 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAHQEBD@Z", scope: !624, file: !141, line: 1347, type: !721, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!721 = !DISubroutineType(types: !722)
!722 = !{!5, !657, !351}
!723 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0QEBD@Z", scope: !624, file: !141, line: 1351, type: !724, scopeLine: 1351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!5, !657, !651, !651, !351}
!726 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0QEBD0@Z", scope: !624, file: !141, line: 1356, type: !727, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!5, !657, !651, !651, !351, !651}
!729 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KV12@_K@Z", scope: !624, file: !141, line: 1396, type: !730, scopeLine: 1396, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!701, !657, !639, !651}
!732 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KD_K@Z", scope: !624, file: !141, line: 1401, type: !733, scopeLine: 1401, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!733 = !DISubroutineType(types: !734)
!734 = !{!701, !657, !173, !651}
!735 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K1@Z", scope: !624, file: !141, line: 1406, type: !736, scopeLine: 1406, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!736 = !DISubroutineType(types: !737)
!737 = !{!701, !657, !351, !651, !651}
!738 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K@Z", scope: !624, file: !141, line: 1412, type: !739, scopeLine: 1412, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{!701, !657, !351, !651}
!741 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KV12@_K@Z", scope: !624, file: !141, line: 1418, type: !730, scopeLine: 1418, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!742 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KD_K@Z", scope: !624, file: !141, line: 1423, type: !733, scopeLine: 1423, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!743 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K1@Z", scope: !624, file: !141, line: 1428, type: !736, scopeLine: 1428, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!744 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K@Z", scope: !624, file: !141, line: 1434, type: !739, scopeLine: 1434, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!745 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KV12@_K@Z", scope: !624, file: !141, line: 1440, type: !730, scopeLine: 1440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!746 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KD_K@Z", scope: !624, file: !141, line: 1446, type: !733, scopeLine: 1446, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!747 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K1@Z", scope: !624, file: !141, line: 1451, type: !736, scopeLine: 1451, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!748 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K@Z", scope: !624, file: !141, line: 1458, type: !739, scopeLine: 1458, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!749 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KV12@_K@Z", scope: !624, file: !141, line: 1465, type: !730, scopeLine: 1465, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!750 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KD_K@Z", scope: !624, file: !141, line: 1471, type: !733, scopeLine: 1471, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!751 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K1@Z", scope: !624, file: !141, line: 1476, type: !736, scopeLine: 1476, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!752 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K@Z", scope: !624, file: !141, line: 1483, type: !739, scopeLine: 1483, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!753 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KV12@_K@Z", scope: !624, file: !141, line: 1490, type: !730, scopeLine: 1490, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!754 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KD_K@Z", scope: !624, file: !141, line: 1496, type: !733, scopeLine: 1496, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!755 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K1@Z", scope: !624, file: !141, line: 1501, type: !736, scopeLine: 1501, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!756 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K@Z", scope: !624, file: !141, line: 1508, type: !739, scopeLine: 1508, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!757 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KV12@_K@Z", scope: !624, file: !141, line: 1515, type: !730, scopeLine: 1515, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!758 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KD_K@Z", scope: !624, file: !141, line: 1521, type: !733, scopeLine: 1521, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!759 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K1@Z", scope: !624, file: !141, line: 1526, type: !736, scopeLine: 1526, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!760 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KQEBD_K@Z", scope: !624, file: !141, line: 1533, type: !739, scopeLine: 1533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!761 = !DISubprogram(name: "_Starts_with", linkageName: "?_Starts_with@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_NV12@@Z", scope: !624, file: !141, line: 1540, type: !709, scopeLine: 1540, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!762 = !DISubprogram(name: "_Check_offset", linkageName: "?_Check_offset@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBAX_K@Z", scope: !624, file: !141, line: 1545, type: !763, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !657, !651}
!765 = !DISubprogram(name: "_Check_offset_exclusive", linkageName: "?_Check_offset_exclusive@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBAX_K@Z", scope: !624, file: !141, line: 1551, type: !763, scopeLine: 1551, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DISubprogram(name: "_Clamp_suffix_size", linkageName: "?_Clamp_suffix_size@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBA_K_K0@Z", scope: !624, file: !141, line: 1558, type: !767, scopeLine: 1558, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DISubroutineType(types: !768)
!768 = !{!701, !657, !651, !651}
!769 = !DISubprogram(name: "_Xran", linkageName: "?_Xran@?$basic_string_view@DU?$char_traits@D@std@@@std@@CAXXZ", scope: !624, file: !141, line: 1563, type: !277, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagStaticMember | DIFlagNoReturn, spFlags: 0)
!770 = !{!771, !772}
!771 = !DITemplateTypeParameter(name: "_Elem", type: !67)
!772 = !DITemplateTypeParameter(name: "_Traits", type: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !8, file: !141, line: 409, size: 8, flags: DIFlagTypePassByValue, elements: !774, templateParams: !824, identifier: ".?AU?$char_traits@D@std@@")
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !773, baseType: !776, extraData: i32 0)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Narrow_char_traits<char, int>", scope: !8, file: !141, line: 281, size: 8, flags: DIFlagTypePassByValue, elements: !777, templateParams: !822, identifier: ".?AU?$_Narrow_char_traits@DH@std@@")
!777 = !{!778, !781, !784, !787, !790, !793, !794, !797, !800, !803, !804, !810, !813, !816, !819}
!778 = !DISubprogram(name: "compare", linkageName: "?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z", scope: !776, file: !141, line: 288, type: !779, scopeLine: 288, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!779 = !DISubroutineType(types: !780)
!780 = !{!5, !351, !351, !150}
!781 = !DISubprogram(name: "length", linkageName: "?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z", scope: !776, file: !141, line: 305, type: !782, scopeLine: 305, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!782 = !DISubroutineType(types: !783)
!783 = !{!151, !351}
!784 = !DISubprogram(name: "copy", linkageName: "?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !776, file: !141, line: 325, type: !785, scopeLine: 325, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!165, !186, !351, !150}
!787 = !DISubprogram(name: "_Copy_s", linkageName: "?_Copy_s@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KQEBD1@Z", scope: !776, file: !141, line: 331, type: !788, scopeLine: 331, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{!165, !186, !150, !351, !150}
!790 = !DISubprogram(name: "find", linkageName: "?find@?$_Narrow_char_traits@DH@std@@SAPEBDQEBD_KAEBD@Z", scope: !776, file: !141, line: 339, type: !791, scopeLine: 339, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!172, !351, !150, !174}
!793 = !DISubprogram(name: "move", linkageName: "?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !776, file: !141, line: 360, type: !785, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!794 = !DISubprogram(name: "assign", linkageName: "?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z", scope: !776, file: !141, line: 366, type: !795, scopeLine: 366, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!165, !186, !150, !173}
!797 = !DISubprogram(name: "assign", linkageName: "?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z", scope: !776, file: !141, line: 372, type: !798, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !168, !174}
!800 = !DISubprogram(name: "eq", linkageName: "?eq@?$_Narrow_char_traits@DH@std@@SA?B_NAEBD0@Z", scope: !776, file: !141, line: 376, type: !801, scopeLine: 376, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!148, !174, !174}
!803 = !DISubprogram(name: "lt", linkageName: "?lt@?$_Narrow_char_traits@DH@std@@SA?B_NAEBD0@Z", scope: !776, file: !141, line: 380, type: !801, scopeLine: 380, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!804 = !DISubprogram(name: "to_char_type", linkageName: "?to_char_type@?$_Narrow_char_traits@DH@std@@SA?BDAEBH@Z", scope: !776, file: !141, line: 384, type: !805, scopeLine: 384, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!173, !807}
!807 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !776, file: !141, line: 283, baseType: !5)
!810 = !DISubprogram(name: "to_int_type", linkageName: "?to_int_type@?$_Narrow_char_traits@DH@std@@SA?BHAEBD@Z", scope: !776, file: !141, line: 388, type: !811, scopeLine: 388, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!808, !174}
!813 = !DISubprogram(name: "eq_int_type", linkageName: "?eq_int_type@?$_Narrow_char_traits@DH@std@@SA?B_NAEBH0@Z", scope: !776, file: !141, line: 392, type: !814, scopeLine: 392, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!148, !807, !807}
!816 = !DISubprogram(name: "not_eof", linkageName: "?not_eof@?$_Narrow_char_traits@DH@std@@SA?BHAEBH@Z", scope: !776, file: !141, line: 396, type: !817, scopeLine: 396, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!808, !807}
!819 = !DISubprogram(name: "eof", linkageName: "?eof@?$_Narrow_char_traits@DH@std@@SA?BHXZ", scope: !776, file: !141, line: 400, type: !820, scopeLine: 400, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!808}
!822 = !{!771, !823}
!823 = !DITemplateTypeParameter(name: "_Int_type", type: !5)
!824 = !{!771}
!825 = !DISubprogram(name: "push_back", linkageName: "?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z", scope: !142, file: !141, line: 3607, type: !826, scopeLine: 3607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !300, !173}
!828 = !DISubprogram(name: "pop_back", linkageName: "?pop_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !142, file: !141, line: 3627, type: !307, scopeLine: 3627, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!829 = !DISubprogram(name: "front", linkageName: "?front@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEADXZ", scope: !142, file: !141, line: 3635, type: !830, scopeLine: 3635, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!830 = !DISubroutineType(types: !831)
!831 = !{!610, !300}
!832 = !DISubprogram(name: "front", linkageName: "?front@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBDXZ", scope: !142, file: !141, line: 3643, type: !833, scopeLine: 3643, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{!616, !579}
!835 = !DISubprogram(name: "back", linkageName: "?back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEADXZ", scope: !142, file: !141, line: 3651, type: !830, scopeLine: 3651, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!836 = !DISubprogram(name: "back", linkageName: "?back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBDXZ", scope: !142, file: !141, line: 3659, type: !833, scopeLine: 3659, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!837 = !DISubprogram(name: "c_str", linkageName: "?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !142, file: !141, line: 3667, type: !586, scopeLine: 3667, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!838 = !DISubprogram(name: "data", linkageName: "?data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ", scope: !142, file: !141, line: 3671, type: !586, scopeLine: 3671, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!839 = !DISubprogram(name: "data", linkageName: "?data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAPEADXZ", scope: !142, file: !141, line: 3676, type: !583, scopeLine: 3676, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!840 = !DISubprogram(name: "length", linkageName: "?length@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !142, file: !141, line: 3681, type: !841, scopeLine: 3681, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!316, !579}
!843 = !DISubprogram(name: "size", linkageName: "?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !142, file: !141, line: 3685, type: !841, scopeLine: 3685, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!844 = !DISubprogram(name: "max_size", linkageName: "?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !142, file: !141, line: 3689, type: !841, scopeLine: 3689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!845 = !DISubprogram(name: "resize", linkageName: "?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z", scope: !142, file: !141, line: 3698, type: !359, scopeLine: 3698, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!846 = !DISubprogram(name: "capacity", linkageName: "?capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !142, file: !141, line: 3708, type: !841, scopeLine: 3708, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!847 = !DISubprogram(name: "reserve", linkageName: "?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z", scope: !142, file: !141, line: 3733, type: !848, scopeLine: 3733, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !300, !315}
!850 = !DISubprogram(name: "empty", linkageName: "?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ", scope: !142, file: !141, line: 3763, type: !851, scopeLine: 3763, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!851 = !DISubroutineType(types: !852)
!852 = !{!56, !579}
!853 = !DISubprogram(name: "copy", linkageName: "?copy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEAD_K_K@Z", scope: !142, file: !141, line: 3767, type: !854, scopeLine: 3767, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!854 = !DISubroutineType(types: !855)
!855 = !{!316, !579, !186, !316, !315}
!856 = !DISubprogram(name: "_Copy_s", linkageName: "?_Copy_s@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEAD_K_K1@Z", scope: !142, file: !141, line: 3775, type: !857, scopeLine: 3775, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!857 = !DISubroutineType(types: !858)
!858 = !{!316, !579, !186, !315, !316, !315}
!859 = !DISubprogram(name: "_Swap_data", linkageName: "?_Swap_data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@U?$integral_constant@_N$00@2@@Z", scope: !142, file: !141, line: 3784, type: !445, scopeLine: 3784, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!860 = !DISubprogram(name: "_Swap_bx_large_with_small", linkageName: "?_Swap_bx_large_with_small@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV?$_String_val@U?$_Simple_types@D@std@@@2@0@Z", scope: !142, file: !141, line: 3796, type: !861, scopeLine: 3796, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !300, !863, !863}
!863 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Scary_val", scope: !142, file: !141, line: 2212, baseType: !201)
!865 = !DISubprogram(name: "_Swap_data", linkageName: "?_Swap_data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@U?$integral_constant@_N$0A@@2@@Z", scope: !142, file: !141, line: 3804, type: !448, scopeLine: 3804, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!866 = !DISubprogram(name: "swap", linkageName: "?swap@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z", scope: !142, file: !141, line: 3831, type: !867, scopeLine: 3831, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !300, !397}
!869 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !142, file: !141, line: 3865, type: !870, scopeLine: 3865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!870 = !DISubroutineType(types: !871)
!871 = !{!316, !579, !301, !315}
!872 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !142, file: !141, line: 3871, type: !873, scopeLine: 3871, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{!316, !579, !351, !315, !315}
!875 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !142, file: !141, line: 3878, type: !876, scopeLine: 3878, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!876 = !DISubroutineType(types: !877)
!877 = !{!316, !579, !351, !315}
!878 = !DISubprogram(name: "find", linkageName: "?find@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !142, file: !141, line: 3885, type: !879, scopeLine: 3885, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{!316, !579, !173, !315}
!881 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !142, file: !141, line: 3901, type: !870, scopeLine: 3901, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!882 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !142, file: !141, line: 3907, type: !873, scopeLine: 3907, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!883 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !142, file: !141, line: 3914, type: !876, scopeLine: 3914, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!884 = !DISubprogram(name: "rfind", linkageName: "?rfind@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !142, file: !141, line: 3921, type: !879, scopeLine: 3921, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!885 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !142, file: !141, line: 3937, type: !870, scopeLine: 3937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!886 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !142, file: !141, line: 3944, type: !873, scopeLine: 3944, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!887 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !142, file: !141, line: 3951, type: !876, scopeLine: 3951, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!888 = !DISubprogram(name: "find_first_of", linkageName: "?find_first_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !142, file: !141, line: 3958, type: !879, scopeLine: 3958, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!889 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !142, file: !141, line: 3974, type: !890, scopeLine: 3974, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!890 = !DISubroutineType(types: !891)
!891 = !{!316, !579, !301, !316}
!892 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !142, file: !141, line: 3981, type: !873, scopeLine: 3981, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!893 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !142, file: !141, line: 3988, type: !876, scopeLine: 3988, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!894 = !DISubprogram(name: "find_last_of", linkageName: "?find_last_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !142, file: !141, line: 3995, type: !879, scopeLine: 3995, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!895 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !142, file: !141, line: 4012, type: !870, scopeLine: 4012, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!896 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !142, file: !141, line: 4019, type: !873, scopeLine: 4019, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!897 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !142, file: !141, line: 4026, type: !898, scopeLine: 4026, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!898 = !DISubroutineType(types: !899)
!899 = !{!316, !579, !351, !316}
!900 = !DISubprogram(name: "find_first_not_of", linkageName: "?find_first_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !142, file: !141, line: 4033, type: !879, scopeLine: 4033, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!901 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KAEBV12@_K@Z", scope: !142, file: !141, line: 4051, type: !870, scopeLine: 4051, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!902 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K1@Z", scope: !142, file: !141, line: 4058, type: !873, scopeLine: 4058, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!903 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KQEBD_K@Z", scope: !142, file: !141, line: 4065, type: !876, scopeLine: 4065, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!904 = !DISubprogram(name: "find_last_not_of", linkageName: "?find_last_not_of@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KD_K@Z", scope: !142, file: !141, line: 4072, type: !879, scopeLine: 4072, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!905 = !DISubprogram(name: "_Starts_with", linkageName: "?_Starts_with@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z", scope: !142, file: !141, line: 4080, type: !906, scopeLine: 4080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{!56, !579, !639}
!908 = !DISubprogram(name: "substr", linkageName: "?substr@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV12@_K0@Z", scope: !142, file: !141, line: 4085, type: !909, scopeLine: 4085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!909 = !DISubroutineType(types: !910)
!910 = !{!142, !579, !315, !315}
!911 = !DISubprogram(name: "_Equal", linkageName: "?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NAEBV12@@Z", scope: !142, file: !141, line: 4090, type: !912, scopeLine: 4090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!912 = !DISubroutineType(types: !913)
!913 = !{!56, !579, !301}
!914 = !DISubprogram(name: "_Equal", linkageName: "?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z", scope: !142, file: !141, line: 4095, type: !915, scopeLine: 4095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!915 = !DISubroutineType(types: !916)
!916 = !{!56, !579, !351}
!917 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAHAEBV12@@Z", scope: !142, file: !141, line: 4128, type: !918, scopeLine: 4128, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!918 = !DISubroutineType(types: !919)
!919 = !{!5, !579, !301}
!920 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0AEBV12@@Z", scope: !142, file: !141, line: 4133, type: !921, scopeLine: 4133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!921 = !DISubroutineType(types: !922)
!922 = !{!5, !579, !316, !316, !301}
!923 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0AEBV12@00@Z", scope: !142, file: !141, line: 4140, type: !924, scopeLine: 4140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{!5, !579, !315, !315, !301, !315, !315}
!926 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAHQEBD@Z", scope: !142, file: !141, line: 4149, type: !927, scopeLine: 4149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{!5, !579, !351}
!929 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0QEBD@Z", scope: !142, file: !141, line: 4154, type: !930, scopeLine: 4154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!930 = !DISubroutineType(types: !931)
!931 = !{!5, !579, !315, !315, !351}
!932 = !DISubprogram(name: "compare", linkageName: "?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAH_K0QEBD0@Z", scope: !142, file: !141, line: 4161, type: !933, scopeLine: 4161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!933 = !DISubroutineType(types: !934)
!934 = !{!5, !579, !315, !315, !351, !315}
!935 = !DISubprogram(name: "get_allocator", linkageName: "?get_allocator@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$allocator@D@2@XZ", scope: !142, file: !141, line: 4194, type: !936, scopeLine: 4194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{!938, !579}
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !142, file: !141, line: 2225, baseType: !160)
!939 = !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z", scope: !142, file: !141, line: 4199, type: !940, scopeLine: 4199, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{!316, !315, !315, !315}
!942 = !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z", scope: !142, file: !141, line: 4213, type: !943, scopeLine: 4213, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DISubroutineType(types: !944)
!944 = !{!316, !579, !315}
!945 = !DISubprogram(name: "_Become_small", linkageName: "?_Become_small@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !142, file: !141, line: 4275, type: !307, scopeLine: 4275, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DISubprogram(name: "_Eos", linkageName: "?_Eos@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAX_K@Z", scope: !142, file: !141, line: 4288, type: !848, scopeLine: 4288, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DISubprogram(name: "_Tidy_init", linkageName: "?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !142, file: !141, line: 4292, type: !307, scopeLine: 4292, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DISubprogram(name: "_Tidy_deallocate", linkageName: "?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !142, file: !141, line: 4299, type: !307, scopeLine: 4299, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DISubprogram(name: "_Orphan_all", linkageName: "?_Orphan_all@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXXZ", scope: !142, file: !141, line: 4315, type: !307, scopeLine: 4315, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!950 = !DISubprogram(name: "_Swap_proxy_and_iterators", linkageName: "?_Swap_proxy_and_iterators@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z", scope: !142, file: !141, line: 4320, type: !867, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ", scope: !142, file: !141, line: 4324, type: !952, scopeLine: 4324, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DISubroutineType(types: !953)
!953 = !{!954, !300}
!954 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Alty", scope: !142, file: !141, line: 2209, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Rebind_alloc_t<std::allocator<char>, char>", scope: !8, file: !157, line: 731, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !318, file: !157, line: 673, baseType: !160)
!958 = !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ", scope: !142, file: !141, line: 4328, type: !959, scopeLine: 4328, flags: DIFlagPrototyped, spFlags: 0)
!959 = !DISubroutineType(types: !960)
!960 = !{!961, !579}
!961 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!963 = !{!771, !772, !344}
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !965, line: 72, baseType: !165)
!965 = !DIFile(filename: "stl\\vadefs.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !965, line: 61, baseType: !24)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_constant<_Can_memcpy_val>", scope: !8, file: !50, line: 39, baseType: !408)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Choose_pocma<std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alty>", scope: !8, file: !157, line: 726, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "conditional_t<allocator_traits<allocator<char> >::is_always_equal::value, std::_Equal_allocators, typename allocator_traits<allocator<char> >::propagate_on_container_move_assignment::type>", scope: !8, file: !50, line: 68, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !980, file: !50, line: 59, baseType: !401)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::_Equal_allocators, std::integral_constant<bool, true> >", scope: !8, file: !50, line: 58, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !981, identifier: ".?AU?$conditional@$00U_Equal_allocators@std@@U?$integral_constant@_N$00@2@@std@@")
!981 = !{!55, !982, !983}
!982 = !DITemplateTypeParameter(name: "_Ty1", type: !401)
!983 = !DITemplateTypeParameter(name: "_Ty2", type: !408)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !986)
!986 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!987 = !{!0, !6, !17, !988, !990, !992}
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!989 = distinct !DIGlobalVariable(name: "_Big_allocation_threshold", scope: !8, file: !157, line: 92, type: !150, isLocal: true, isDefinition: true)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression(DW_OP_constu, 39, DW_OP_stack_value))
!991 = distinct !DIGlobalVariable(name: "_Non_user_size", scope: !8, file: !157, line: 102, type: !150, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!993 = distinct !DIGlobalVariable(name: "_Big_allocation_alignment", scope: !8, file: !157, line: 93, type: !150, isLocal: true, isDefinition: true)
!994 = !{!995, !998, !1002, !1003, !1006, !1008, !1012, !1018, !1020, !1025, !1030, !1035, !1039, !1043, !1052, !1059, !1069, !1073, !1077, !1081, !1085, !1089, !1093, !1099, !1103, !1107, !1111, !1115, !1120, !1125, !1129, !1134, !1140, !1144, !1145, !1149, !1151, !1155, !1159, !1163, !1168, !1172, !1176, !1180, !1182, !1184, !1186, !1190, !1195, !1196, !1201, !1204, !1206, !1208, !1210, !1213, !1215, !1217, !1219, !1221, !1223, !1225, !1227, !1229, !1231, !1233, !1235, !1237, !1239, !1241, !1243, !1245, !1247, !1249, !1251, !1253, !1255, !1256, !1261, !1269, !1270, !1273, !1274, !1279, !1283, !1285, !1287, !1289, !1291, !1296, !1300, !1304, !1309, !1313, !1317, !1321, !1325, !1327, !1331, !1337, !1341, !1345, !1347, !1349, !1353, !1355, !1359, !1363, !1365, !1367, !1371, !1373, !1375, !1379, !1383, !1387, !1391, !1395, !1399, !1401, !1405, !1409, !1413, !1417, !1421, !1423, !1425, !1429, !1431, !1433, !1434, !1437, !1439, !1444, !1448, !1452, !1456, !1460, !1464, !1469, !1471, !1473, !1477, !1482, !1486, !1491, !1497, !1499, !1503, !1508, !1512, !1516, !1520, !1524, !1528, !1532, !1536, !1538, !1543, !1549, !1554, !1558, !1562, !1564, !1566, !1570, !1574, !1578, !1582, !1584, !1586, !1588, !1590, !1594, !1598, !1600, !1602, !1606, !1610, !1614, !1618, !1622, !1624, !1626, !1632, !1634, !1638, !1640, !1644, !1648, !1652, !1656, !1658, !1663, !1668, !1672, !1674, !1676, !1681, !1685, !1687, !1689, !1691, !1695, !1699, !1703, !1707, !1711, !1713, !1717, !1719, !1721, !1723, !1725, !1729, !1732, !1734, !1739, !1743, !1745, !1747, !1751, !1753, !1755, !1757, !1759, !1761, !1763, !1765, !1769, !1773, !1775, !1777, !1782, !1784, !1786, !1788, !1790, !1792, !1794, !1796, !1798, !1800, !1804, !1806, !1808, !1810, !1812, !1814, !1816, !1818, !1822, !1826, !1828, !1830, !1832, !1834, !1836, !1838, !1840, !1842, !1844, !1846, !1848, !1850, !1852, !1854, !1856, !1858, !1860, !1862, !1864, !1866, !1868, !1872, !1874, !1876, !1878, !1880, !1884, !1888, !1890, !1892, !1894, !1896, !1898, !1902, !1904, !1906, !1908, !1910, !1912, !1916, !1918, !1922, !1924, !1926, !1930, !1934, !1936, !1938, !1940, !1942, !1944, !1946, !1948, !1950, !1952, !1954, !1958, !1960, !1962, !1964, !1966, !1970, !1974, !1976, !1978, !1980, !1982, !1984, !1988, !1990, !1992, !1994, !1996, !1998, !2002, !2004, !2008, !2010, !2012, !2016, !2018, !2020, !2022, !2026, !2029, !2033, !2035, !2037, !2039, !2041, !2043, !2045, !2047, !2049, !2051, !2053, !2055, !2057}
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !25, entity: !996, file: !152, line: 94)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !8, file: !152, line: 93, baseType: !997)
!997 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !999, file: !1001, line: 23)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !152, line: 35, baseType: !1000)
!1000 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1001 = !DIFile(filename: "stl\\cstddef", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !151, file: !1001, line: 24)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !25, entity: !1004, file: !1001, line: 95)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", scope: !8, file: !1001, line: 25, baseType: !1005)
!1005 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !151, file: !1007, line: 36)
!1007 = !DIFile(filename: "stl\\cstdlib", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1009, file: !1007, line: 37)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1010, line: 279, baseType: !1011)
!1010 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\stdlib.h", directory: "C:\\")
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !1010, line: 275, flags: DIFlagFwdDecl, identifier: ".?AU_div_t@@")
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1013, file: !1007, line: 38)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1010, line: 285, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !1010, line: 281, size: 64, flags: DIFlagTypePassByValue, elements: !1015, identifier: ".?AU_ldiv_t@@")
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1014, file: !1010, line: 283, baseType: !986, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1014, file: !1010, line: 284, baseType: !986, size: 32, offset: 32)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1019, file: !1007, line: 39)
!1019 = !DISubprogram(name: "abort", scope: !1010, file: !1010, line: 60, type: !277, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1021, file: !1007, line: 40)
!1021 = !DISubprogram(name: "abs", linkageName: "?abs@@YAOO@Z", scope: !1007, file: !1007, line: 31, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1024, !1024}
!1024 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1026, file: !1007, line: 41)
!1026 = !DISubprogram(name: "atexit", scope: !1010, file: !1010, line: 144, type: !1027, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!5, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1031, file: !1007, line: 42)
!1031 = !DISubprogram(name: "atof", scope: !1032, file: !1032, line: 490, type: !1033, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_math.h", directory: "C:\\")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!1005, !172}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1036, file: !1007, line: 43)
!1036 = !DISubprogram(name: "atoi", scope: !1010, file: !1010, line: 451, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!5, !172}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1040, file: !1007, line: 44)
!1040 = !DISubprogram(name: "atol", scope: !1010, file: !1010, line: 452, type: !1041, flags: DIFlagPrototyped, spFlags: 0)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!986, !172}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1044, file: !1007, line: 45)
!1044 = !DISubprogram(name: "bsearch", scope: !1045, file: !1045, line: 52, type: !1046, flags: DIFlagPrototyped, spFlags: 0)
!1045 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_search.h", directory: "C:\\")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!968, !193, !193, !151, !151, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "_CoreCrtNonSecureSearchSortCompareFunction", file: !1045, line: 24, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!5, !193, !193}
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1053, file: !1007, line: 46)
!1053 = !DISubprogram(name: "calloc", scope: !1054, file: !1054, line: 66, type: !1055, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_malloc.h", directory: "C:\\")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!968, !1057, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1058, line: 193, baseType: !24)
!1058 = !DIFile(filename: "stl\\vcruntime.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1060, file: !1007, line: 47)
!1060 = !DISubprogram(name: "div", linkageName: "?div@@YA?AU_lldiv_t@@_J0@Z", scope: !1010, file: !1010, line: 378, type: !1061, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!1063, !1068, !1068}
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1010, line: 291, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lldiv_t", file: !1010, line: 287, size: 128, flags: DIFlagTypePassByValue, elements: !1065, identifier: ".?AU_lldiv_t@@")
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1064, file: !1010, line: 289, baseType: !1000, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1064, file: !1010, line: 290, baseType: !1000, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1070, file: !1007, line: 48)
!1070 = !DISubprogram(name: "exit", scope: !1010, file: !1010, line: 56, type: !1071, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !5}
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1074, file: !1007, line: 49)
!1074 = !DISubprogram(name: "free", scope: !1054, file: !1054, line: 89, type: !1075, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !968}
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1078, file: !1007, line: 50)
!1078 = !DISubprogram(name: "labs", scope: !1032, file: !1032, line: 465, type: !1079, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!986, !986}
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1082, file: !1007, line: 51)
!1082 = !DISubprogram(name: "ldiv", scope: !1010, file: !1010, line: 303, type: !1083, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1013, !986, !986}
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1086, file: !1007, line: 52)
!1086 = !DISubprogram(name: "malloc", scope: !1054, file: !1054, line: 101, type: !1087, flags: DIFlagPrototyped, spFlags: 0)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!968, !1057}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1090, file: !1007, line: 53)
!1090 = !DISubprogram(name: "mblen", scope: !1010, file: !1010, line: 852, type: !1091, flags: DIFlagPrototyped, spFlags: 0)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!5, !172, !151}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1094, file: !1007, line: 54)
!1094 = !DISubprogram(name: "mbstowcs", scope: !1010, file: !1010, line: 924, type: !1095, flags: DIFlagPrototyped, spFlags: 0)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!151, !1097, !172, !151}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIBasicType(name: "wchar_t", size: 16, encoding: DW_ATE_unsigned)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1100, file: !1007, line: 55)
!1100 = !DISubprogram(name: "mbtowc", scope: !1010, file: !1010, line: 893, type: !1101, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!5, !1097, !172, !151}
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1104, file: !1007, line: 56)
!1104 = !DISubprogram(name: "qsort", scope: !1045, file: !1045, line: 60, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !968, !151, !151, !1048}
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1108, file: !1007, line: 57)
!1108 = !DISubprogram(name: "rand", scope: !1010, file: !1010, line: 352, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!5}
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1112, file: !1007, line: 58)
!1112 = !DISubprogram(name: "realloc", scope: !1054, file: !1054, line: 126, type: !1113, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!968, !968, !1057}
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1116, file: !1007, line: 59)
!1116 = !DISubprogram(name: "srand", scope: !1010, file: !1010, line: 350, type: !1117, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1119}
!1119 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1121, file: !1007, line: 60)
!1121 = !DISubprogram(name: "strtod", scope: !1010, file: !1010, line: 502, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1005, !172, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1126, file: !1007, line: 61)
!1126 = !DISubprogram(name: "strtol", scope: !1010, file: !1010, line: 528, type: !1127, flags: DIFlagPrototyped, spFlags: 0)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!986, !172, !1124, !5}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1130, file: !1007, line: 62)
!1130 = !DISubprogram(name: "strtoul", scope: !1010, file: !1010, line: 558, type: !1131, flags: DIFlagPrototyped, spFlags: 0)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1133, !172, !1124, !5}
!1133 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1135, file: !1007, line: 63)
!1135 = !DISubprogram(name: "wcstombs", scope: !1010, file: !1010, line: 1012, type: !1136, flags: DIFlagPrototyped, spFlags: 0)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!151, !165, !1138, !151}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1141, file: !1007, line: 64)
!1141 = !DISubprogram(name: "wctomb", scope: !1010, file: !1010, line: 963, type: !1142, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!5, !165, !1098}
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1063, file: !1007, line: 66)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1146, file: !1007, line: 69)
!1146 = !DISubprogram(name: "getenv", scope: !1010, file: !1010, line: 1184, type: !1147, flags: DIFlagPrototyped, spFlags: 0)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!165, !172}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1150, file: !1007, line: 70)
!1150 = !DISubprogram(name: "system", scope: !1010, file: !1010, line: 1211, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1152, file: !1007, line: 73)
!1152 = !DISubprogram(name: "atoll", scope: !1010, file: !1010, line: 453, type: !1153, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1000, !172}
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1156, file: !1007, line: 74)
!1156 = !DISubprogram(name: "llabs", scope: !1032, file: !1032, line: 466, type: !1157, flags: DIFlagPrototyped, spFlags: 0)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1000, !1000}
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1160, file: !1007, line: 75)
!1160 = !DISubprogram(name: "lldiv", scope: !1010, file: !1010, line: 304, type: !1161, flags: DIFlagPrototyped, spFlags: 0)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1063, !1000, !1000}
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1164, file: !1007, line: 76)
!1164 = !DISubprogram(name: "strtof", scope: !1010, file: !1010, line: 489, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1167, !172, !1124}
!1167 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1169, file: !1007, line: 77)
!1169 = !DISubprogram(name: "strtold", scope: !1010, file: !1010, line: 515, type: !1170, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1024, !172, !1124}
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1173, file: !1007, line: 78)
!1173 = !DISubprogram(name: "strtoll", scope: !1010, file: !1010, line: 543, type: !1174, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!1000, !172, !1124, !5}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1177, file: !1007, line: 79)
!1177 = !DISubprogram(name: "strtoull", scope: !1010, file: !1010, line: 573, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!24, !172, !1124, !5}
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1181, file: !1007, line: 81)
!1181 = !DISubprogram(name: "_Exit", scope: !1010, file: !1010, line: 58, type: !1071, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1183, file: !1007, line: 82)
!1183 = !DISubprogram(name: "at_quick_exit", scope: !1010, file: !1010, line: 148, type: !1027, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1185, file: !1007, line: 83)
!1185 = !DISubprogram(name: "quick_exit", scope: !1010, file: !1010, line: 59, type: !1071, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1187, file: !1189, line: 37)
!1187 = !DISubprogram(name: "terminate", scope: !1188, file: !1188, line: 33, type: !277, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1188 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_terminate.h", directory: "C:\\")
!1189 = !DIFile(filename: "stl\\exception", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1191, file: !1189, line: 40)
!1191 = !DISubprogram(name: "set_terminate", scope: !1188, file: !1188, line: 37, type: !1192, flags: DIFlagPrototyped, spFlags: 0)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1194, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "terminate_handler", file: !1188, line: 22, baseType: !1029)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1194, file: !1189, line: 41)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1197, file: !1200, line: 22)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1198, line: 18, baseType: !1199)
!1198 = !DIFile(filename: "stl\\stdint.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1199 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1200 = !DIFile(filename: "stl\\cstdint", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1202, file: !1200, line: 23)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1198, line: 19, baseType: !1203)
!1203 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1205, file: !1200, line: 24)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1198, line: 20, baseType: !5)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1207, file: !1200, line: 25)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1198, line: 21, baseType: !1000)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1209, file: !1200, line: 26)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1198, line: 22, baseType: !974)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1211, file: !1200, line: 27)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1198, line: 23, baseType: !1212)
!1212 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1214, file: !1200, line: 28)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1198, line: 24, baseType: !1119)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1216, file: !1200, line: 29)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1198, line: 25, baseType: !24)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1218, file: !1200, line: 31)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1198, line: 27, baseType: !1199)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1220, file: !1200, line: 32)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1198, line: 28, baseType: !1203)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1222, file: !1200, line: 33)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1198, line: 29, baseType: !5)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1224, file: !1200, line: 34)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1198, line: 30, baseType: !1000)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1226, file: !1200, line: 35)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1198, line: 31, baseType: !974)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1228, file: !1200, line: 36)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1198, line: 32, baseType: !1212)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1230, file: !1200, line: 37)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1198, line: 33, baseType: !1119)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1232, file: !1200, line: 38)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1198, line: 34, baseType: !24)
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1234, file: !1200, line: 40)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1198, line: 36, baseType: !1199)
!1235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1236, file: !1200, line: 41)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1198, line: 37, baseType: !5)
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1238, file: !1200, line: 42)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1198, line: 38, baseType: !5)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1240, file: !1200, line: 43)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1198, line: 39, baseType: !1000)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1242, file: !1200, line: 44)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1198, line: 40, baseType: !974)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1244, file: !1200, line: 45)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1198, line: 41, baseType: !1119)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1246, file: !1200, line: 46)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1198, line: 42, baseType: !1119)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1248, file: !1200, line: 47)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1198, line: 43, baseType: !24)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1250, file: !1200, line: 49)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1198, line: 45, baseType: !1000)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1252, file: !1200, line: 50)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1058, line: 195, baseType: !1000)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1254, file: !1200, line: 51)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1198, line: 46, baseType: !24)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !967, file: !1200, line: 52)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1257, file: !1260, line: 37)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 31, baseType: !1259)
!1258 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wstdio.h", directory: "C:\\")
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_iobuf", file: !1258, line: 28, flags: DIFlagFwdDecl, identifier: ".?AU_iobuf@@")
!1260 = !DIFile(filename: "stl\\cstdio", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1262, file: !1260, line: 38)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Mbstatet", file: !1263, line: 615, baseType: !1264)
!1263 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt.h", directory: "C:\\")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Mbstatet", file: !1263, line: 611, size: 64, flags: DIFlagTypePassByValue, elements: !1265, identifier: ".?AU_Mbstatet@@")
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_Wchar", scope: !1264, file: !1263, line: 613, baseType: !1133, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_Byte", scope: !1264, file: !1263, line: 614, baseType: !1212, size: 16, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_State", scope: !1264, file: !1263, line: 614, baseType: !1212, size: 16, offset: 48)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !151, file: !1260, line: 40)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1271, file: !1260, line: 41)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1272, line: 73, baseType: !1000)
!1272 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\stdio.h", directory: "C:\\")
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1257, file: !1260, line: 42)
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1275, file: !1260, line: 43)
!1275 = !DISubprogram(name: "clearerr", scope: !1272, file: !1272, line: 146, type: !1276, flags: DIFlagPrototyped, spFlags: 0)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1280, file: !1260, line: 44)
!1280 = !DISubprogram(name: "fclose", scope: !1272, file: !1272, line: 152, type: !1281, flags: DIFlagPrototyped, spFlags: 0)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!5, !1278}
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1284, file: !1260, line: 45)
!1284 = !DISubprogram(name: "feof", scope: !1272, file: !1272, line: 166, type: !1281, flags: DIFlagPrototyped, spFlags: 0)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1286, file: !1260, line: 46)
!1286 = !DISubprogram(name: "ferror", scope: !1272, file: !1272, line: 171, type: !1281, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1288, file: !1260, line: 47)
!1288 = !DISubprogram(name: "fflush", scope: !1272, file: !1272, line: 176, type: !1281, flags: DIFlagPrototyped, spFlags: 0)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1290, file: !1260, line: 48)
!1290 = !DISubprogram(name: "fgetc", scope: !1272, file: !1272, line: 182, type: !1281, flags: DIFlagPrototyped, spFlags: 0)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1292, file: !1260, line: 49)
!1292 = !DISubprogram(name: "fgetpos", scope: !1272, file: !1272, line: 191, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!5, !1278, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1297, file: !1260, line: 50)
!1297 = !DISubprogram(name: "fgets", scope: !1272, file: !1272, line: 198, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!165, !165, !5, !1278}
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1301, file: !1260, line: 51)
!1301 = !DISubprogram(name: "fopen", scope: !1272, file: !1272, line: 213, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1278, !172, !172}
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1305, file: !1260, line: 52)
!1305 = !DISubprogram(name: "fprintf", scope: !1272, file: !1272, line: 830, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!5, !1308, !351, null}
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1310, file: !1260, line: 53)
!1310 = !DISubprogram(name: "fputc", scope: !1272, file: !1272, line: 221, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!5, !5, !1278}
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1314, file: !1260, line: 54)
!1314 = !DISubprogram(name: "fputs", scope: !1272, file: !1272, line: 233, type: !1315, flags: DIFlagPrototyped, spFlags: 0)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!5, !172, !1278}
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1318, file: !1260, line: 55)
!1318 = !DISubprogram(name: "fread", scope: !1272, file: !1272, line: 239, type: !1319, flags: DIFlagPrototyped, spFlags: 0)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!151, !968, !151, !151, !1278}
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1322, file: !1260, line: 56)
!1322 = !DISubprogram(name: "freopen", scope: !1272, file: !1272, line: 248, type: !1323, flags: DIFlagPrototyped, spFlags: 0)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!1278, !172, !172, !1278}
!1325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1326, file: !1260, line: 57)
!1326 = !DISubprogram(name: "fscanf", scope: !1272, file: !1272, line: 1199, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1328, file: !1260, line: 58)
!1328 = !DISubprogram(name: "fseek", scope: !1272, file: !1272, line: 270, type: !1329, flags: DIFlagPrototyped, spFlags: 0)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!5, !1278, !986, !5}
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1332, file: !1260, line: 59)
!1332 = !DISubprogram(name: "fsetpos", scope: !1272, file: !1272, line: 263, type: !1333, flags: DIFlagPrototyped, spFlags: 0)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!5, !1278, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1338, file: !1260, line: 60)
!1338 = !DISubprogram(name: "ftell", scope: !1272, file: !1272, line: 286, type: !1339, flags: DIFlagPrototyped, spFlags: 0)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!986, !1278}
!1341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1342, file: !1260, line: 61)
!1342 = !DISubprogram(name: "fwrite", scope: !1272, file: !1272, line: 297, type: !1343, flags: DIFlagPrototyped, spFlags: 0)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!151, !193, !151, !151, !1278}
!1345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1346, file: !1260, line: 62)
!1346 = !DISubprogram(name: "getc", scope: !1272, file: !1272, line: 306, type: !1281, flags: DIFlagPrototyped, spFlags: 0)
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1348, file: !1260, line: 63)
!1348 = !DISubprogram(name: "getchar", scope: !1272, file: !1272, line: 311, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1350, file: !1260, line: 64)
!1350 = !DISubprogram(name: "perror", scope: !1272, file: !1272, line: 325, type: !1351, flags: DIFlagPrototyped, spFlags: 0)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !172}
!1353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1354, file: !1260, line: 65)
!1354 = !DISubprogram(name: "putc", scope: !1272, file: !1272, line: 347, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1356, file: !1260, line: 66)
!1356 = !DISubprogram(name: "putchar", scope: !1272, file: !1272, line: 353, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!5, !5}
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1360, file: !1260, line: 67)
!1360 = distinct !DISubprogram(name: "printf", scope: !1272, file: !1272, line: 950, type: !1361, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!5, !351, null}
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1364, file: !1260, line: 68)
!1364 = !DISubprogram(name: "puts", scope: !1272, file: !1272, line: 358, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1366, file: !1260, line: 69)
!1366 = !DISubprogram(name: "remove", scope: !1272, file: !1272, line: 369, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1368, file: !1260, line: 70)
!1368 = !DISubprogram(name: "rename", scope: !1272, file: !1272, line: 374, type: !1369, flags: DIFlagPrototyped, spFlags: 0)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!5, !172, !172}
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1372, file: !1260, line: 71)
!1372 = !DISubprogram(name: "rewind", scope: !1272, file: !1272, line: 392, type: !1276, flags: DIFlagPrototyped, spFlags: 0)
!1373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1374, file: !1260, line: 72)
!1374 = !DISubprogram(name: "scanf", scope: !1272, file: !1272, line: 1276, type: !1361, flags: DIFlagPrototyped, spFlags: 0)
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1376, file: !1260, line: 73)
!1376 = !DISubprogram(name: "setbuf", scope: !1272, file: !1272, line: 400, type: !1377, flags: DIFlagPrototyped, spFlags: 0)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1278, !165}
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1380, file: !1260, line: 74)
!1380 = !DISubprogram(name: "setvbuf", scope: !1272, file: !1272, line: 412, type: !1381, flags: DIFlagPrototyped, spFlags: 0)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!5, !1278, !165, !5, !151}
!1383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1384, file: !1260, line: 75)
!1384 = !DISubprogram(name: "sprintf", scope: !1272, file: !1272, line: 1783, type: !1385, flags: DIFlagPrototyped, spFlags: 0)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!5, !165, !172, null}
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1388, file: !1260, line: 76)
!1388 = !DISubprogram(name: "sscanf", scope: !1272, file: !1272, line: 2240, type: !1389, flags: DIFlagPrototyped, spFlags: 0)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!5, !351, !351, null}
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1392, file: !1260, line: 77)
!1392 = !DISubprogram(name: "tmpfile", scope: !1272, file: !1272, line: 435, type: !1393, flags: DIFlagPrototyped, spFlags: 0)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1278}
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1396, file: !1260, line: 78)
!1396 = !DISubprogram(name: "tmpnam", scope: !1272, file: !1272, line: 443, type: !1397, flags: DIFlagPrototyped, spFlags: 0)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!165, !165}
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1400, file: !1260, line: 79)
!1400 = !DISubprogram(name: "ungetc", scope: !1272, file: !1272, line: 451, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1402, file: !1260, line: 80)
!1402 = !DISubprogram(name: "vfprintf", scope: !1272, file: !1272, line: 650, type: !1403, flags: DIFlagPrototyped, spFlags: 0)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!5, !1308, !351, !964}
!1405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1406, file: !1260, line: 81)
!1406 = !DISubprogram(name: "vprintf", scope: !1272, file: !1272, line: 740, type: !1407, flags: DIFlagPrototyped, spFlags: 0)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!5, !351, !964}
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1410, file: !1260, line: 82)
!1410 = !DISubprogram(name: "vsprintf", scope: !1272, file: !1272, line: 1783, type: !1411, flags: DIFlagPrototyped, spFlags: 0)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!5, !165, !172, !964}
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1414, file: !1260, line: 84)
!1414 = !DISubprogram(name: "snprintf", scope: !1272, file: !1272, line: 1919, type: !1415, flags: DIFlagPrototyped, spFlags: 0)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!5, !186, !150, !351, null}
!1417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1418, file: !1260, line: 85)
!1418 = !DISubprogram(name: "vsnprintf", scope: !1272, file: !1272, line: 1429, type: !1419, flags: DIFlagPrototyped, spFlags: 0)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!5, !186, !150, !351, !964}
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1422, file: !1260, line: 86)
!1422 = !DISubprogram(name: "vfscanf", scope: !1272, file: !1272, line: 1072, type: !1403, flags: DIFlagPrototyped, spFlags: 0)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1424, file: !1260, line: 87)
!1424 = !DISubprogram(name: "vscanf", scope: !1272, file: !1272, line: 1136, type: !1407, flags: DIFlagPrototyped, spFlags: 0)
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1426, file: !1260, line: 88)
!1426 = !DISubprogram(name: "vsscanf", scope: !1272, file: !1272, line: 2160, type: !1427, flags: DIFlagPrototyped, spFlags: 0)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!5, !351, !351, !964}
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1262, file: !1430, line: 28)
!1430 = !DIFile(filename: "stl\\cwchar", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1432, file: !1430, line: 30)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1263, line: 617, baseType: !1262)
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !151, file: !1430, line: 31)
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1435, file: !1430, line: 32)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1436, line: 26, flags: DIFlagFwdDecl, identifier: ".?AUtm@@")
!1436 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wtime.h", directory: "C:\\")
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1438, file: !1430, line: 33)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1263, line: 591, baseType: !1212)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1440, file: !1430, line: 35)
!1440 = !DISubprogram(name: "btowc", scope: !1441, file: !1441, line: 62, type: !1442, flags: DIFlagPrototyped, spFlags: 0)
!1441 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\wchar.h", directory: "C:\\")
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1438, !5}
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1445, file: !1430, line: 36)
!1445 = !DISubprogram(name: "fgetwc", scope: !1258, file: !1258, line: 51, type: !1446, flags: DIFlagPrototyped, spFlags: 0)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1438, !1278}
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1449, file: !1430, line: 37)
!1449 = !DISubprogram(name: "fgetws", scope: !1258, file: !1258, line: 79, type: !1450, flags: DIFlagPrototyped, spFlags: 0)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!1097, !1097, !5, !1278}
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1453, file: !1430, line: 38)
!1453 = !DISubprogram(name: "fputwc", scope: !1258, file: !1258, line: 59, type: !1454, flags: DIFlagPrototyped, spFlags: 0)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1438, !1098, !1278}
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1457, file: !1430, line: 39)
!1457 = !DISubprogram(name: "fputws", scope: !1258, file: !1258, line: 86, type: !1458, flags: DIFlagPrototyped, spFlags: 0)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!5, !1138, !1278}
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1461, file: !1430, line: 40)
!1461 = !DISubprogram(name: "fwide", scope: !1441, file: !1441, line: 184, type: !1462, flags: DIFlagPrototyped, spFlags: 0)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!5, !1278, !5}
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1465, file: !1430, line: 41)
!1465 = !DISubprogram(name: "fwprintf", scope: !1258, file: !1258, line: 494, type: !1466, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!5, !1308, !1468, null}
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1470, file: !1430, line: 42)
!1470 = !DISubprogram(name: "fwscanf", scope: !1258, file: !1258, line: 856, type: !1466, flags: DIFlagPrototyped, spFlags: 0)
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1472, file: !1430, line: 43)
!1472 = !DISubprogram(name: "getwc", scope: !1258, file: !1258, line: 69, type: !1446, flags: DIFlagPrototyped, spFlags: 0)
!1473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1474, file: !1430, line: 44)
!1474 = !DISubprogram(name: "getwchar", scope: !1258, file: !1258, line: 74, type: !1475, flags: DIFlagPrototyped, spFlags: 0)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1438}
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1478, file: !1430, line: 45)
!1478 = !DISubprogram(name: "mbrlen", scope: !1441, file: !1441, line: 66, type: !1479, flags: DIFlagPrototyped, spFlags: 0)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!151, !172, !151, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1483, file: !1430, line: 46)
!1483 = !DISubprogram(name: "mbrtowc", scope: !1441, file: !1441, line: 72, type: !1484, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!151, !1097, !172, !151, !1481}
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1487, file: !1430, line: 47)
!1487 = !DISubprogram(name: "mbsrtowcs", scope: !1441, file: !1441, line: 99, type: !1488, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!151, !1097, !1490, !151, !1481}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1492, file: !1430, line: 48)
!1492 = !DISubprogram(name: "mbsinit", scope: !1441, file: !1441, line: 193, type: !1493, flags: DIFlagPrototyped, spFlags: 0)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!5, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1498, file: !1430, line: 49)
!1498 = !DISubprogram(name: "putwc", scope: !1258, file: !1258, line: 105, type: !1454, flags: DIFlagPrototyped, spFlags: 0)
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1500, file: !1430, line: 50)
!1500 = !DISubprogram(name: "putwchar", scope: !1258, file: !1258, line: 111, type: !1501, flags: DIFlagPrototyped, spFlags: 0)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1438, !1098}
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1504, file: !1430, line: 51)
!1504 = !DISubprogram(name: "swprintf", linkageName: "?swprintf@@YAHQEA_WQEB_WZZ", scope: !1258, file: !1258, line: 1803, type: !1505, flags: DIFlagPrototyped, spFlags: 0)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!5, !1507, !1468, null}
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1097)
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1509, file: !1430, line: 52)
!1509 = !DISubprogram(name: "swscanf", scope: !1258, file: !1258, line: 2018, type: !1510, flags: DIFlagPrototyped, spFlags: 0)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!5, !1468, !1468, null}
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1513, file: !1430, line: 53)
!1513 = !DISubprogram(name: "ungetwc", scope: !1258, file: !1258, line: 121, type: !1514, flags: DIFlagPrototyped, spFlags: 0)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1438, !1438, !1278}
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1517, file: !1430, line: 54)
!1517 = !DISubprogram(name: "vfwprintf", scope: !1258, file: !1258, line: 314, type: !1518, flags: DIFlagPrototyped, spFlags: 0)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!5, !1308, !1468, !964}
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1521, file: !1430, line: 55)
!1521 = !DISubprogram(name: "vswprintf", linkageName: "?vswprintf@@YAHQEA_WQEB_WPEAD@Z", scope: !1258, file: !1258, line: 1817, type: !1522, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!5, !1507, !1468, !964}
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1525, file: !1430, line: 56)
!1525 = !DISubprogram(name: "vwprintf", scope: !1258, file: !1258, line: 404, type: !1526, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!5, !1468, !964}
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1529, file: !1430, line: 57)
!1529 = !DISubprogram(name: "wcrtomb", scope: !1441, file: !1441, line: 125, type: !1530, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!151, !165, !1098, !1481}
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1533, file: !1430, line: 58)
!1533 = !DISubprogram(name: "wprintf", scope: !1258, file: !1258, line: 608, type: !1534, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!5, !1468, null}
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1537, file: !1430, line: 59)
!1537 = !DISubprogram(name: "wscanf", scope: !1258, file: !1258, line: 933, type: !1534, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1539, file: !1430, line: 60)
!1539 = !DISubprogram(name: "wcsrtombs", scope: !1441, file: !1441, line: 152, type: !1540, flags: DIFlagPrototyped, spFlags: 0)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!151, !165, !1542, !151, !1481}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1544, file: !1430, line: 61)
!1544 = !DISubprogram(name: "wcstol", scope: !1545, file: !1545, line: 134, type: !1546, flags: DIFlagPrototyped, spFlags: 0)
!1545 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wstdlib.h", directory: "C:\\")
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!986, !1138, !1548, !5}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1550, file: !1430, line: 62)
!1550 = !DISubprogram(name: "wcscat", scope: !1551, file: !1551, line: 100, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1551 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_wstring.h", directory: "C:\\")
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1097, !1097, !1138}
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1555, file: !1430, line: 63)
!1555 = !DISubprogram(name: "wcschr", linkageName: "?wcschr@@YAPEA_WPEA_W_W@Z", scope: !1551, file: !1551, line: 529, type: !1556, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1097, !1097, !1098}
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1559, file: !1430, line: 64)
!1559 = !DISubprogram(name: "wcscmp", scope: !1551, file: !1551, line: 108, type: !1560, flags: DIFlagPrototyped, spFlags: 0)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!5, !1138, !1138}
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1563, file: !1430, line: 65)
!1563 = !DISubprogram(name: "wcscoll", scope: !1551, file: !1551, line: 462, type: !1560, flags: DIFlagPrototyped, spFlags: 0)
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1565, file: !1430, line: 66)
!1565 = !DISubprogram(name: "wcscpy", scope: !1551, file: !1551, line: 119, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1567, file: !1430, line: 67)
!1567 = !DISubprogram(name: "wcscspn", scope: !1551, file: !1551, line: 126, type: !1568, flags: DIFlagPrototyped, spFlags: 0)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1057, !1138, !1138}
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1571, file: !1430, line: 68)
!1571 = !DISubprogram(name: "wcslen", scope: !1551, file: !1551, line: 132, type: !1572, flags: DIFlagPrototyped, spFlags: 0)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1057, !1138}
!1574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1575, file: !1430, line: 69)
!1575 = !DISubprogram(name: "wcsncat", scope: !1551, file: !1551, line: 178, type: !1576, flags: DIFlagPrototyped, spFlags: 0)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1097, !1097, !1138, !1057}
!1578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1579, file: !1430, line: 70)
!1579 = !DISubprogram(name: "wcsncmp", scope: !1551, file: !1551, line: 187, type: !1580, flags: DIFlagPrototyped, spFlags: 0)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!5, !1138, !1138, !1057}
!1582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1583, file: !1430, line: 71)
!1583 = !DISubprogram(name: "wcsncpy", scope: !1551, file: !1551, line: 200, type: !1576, flags: DIFlagPrototyped, spFlags: 0)
!1584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1585, file: !1430, line: 72)
!1585 = !DISubprogram(name: "wcspbrk", linkageName: "?wcspbrk@@YAPEA_WPEA_WPEB_W@Z", scope: !1551, file: !1551, line: 535, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1587, file: !1430, line: 73)
!1587 = !DISubprogram(name: "wcsrchr", linkageName: "?wcsrchr@@YAPEA_WPEA_W_W@Z", scope: !1551, file: !1551, line: 541, type: !1556, flags: DIFlagPrototyped, spFlags: 0)
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1589, file: !1430, line: 74)
!1589 = !DISubprogram(name: "wcsspn", scope: !1551, file: !1551, line: 215, type: !1568, flags: DIFlagPrototyped, spFlags: 0)
!1590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1591, file: !1430, line: 75)
!1591 = !DISubprogram(name: "wcstod", scope: !1545, file: !1545, line: 121, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1005, !1138, !1548}
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1595, file: !1430, line: 76)
!1595 = !DISubprogram(name: "wcstoul", scope: !1545, file: !1545, line: 164, type: !1596, flags: DIFlagPrototyped, spFlags: 0)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1133, !1138, !1548, !5}
!1598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1599, file: !1430, line: 77)
!1599 = !DISubprogram(name: "wcsstr", linkageName: "?wcsstr@@YAPEA_WPEA_WPEB_W@Z", scope: !1551, file: !1551, line: 548, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1601, file: !1430, line: 78)
!1601 = !DISubprogram(name: "wcstok", linkageName: "?wcstok@@YAPEA_WPEA_WPEB_W@Z", scope: !1551, file: !1551, line: 253, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1603, file: !1430, line: 79)
!1603 = !DISubprogram(name: "wcsxfrm", scope: !1551, file: !1551, line: 446, type: !1604, flags: DIFlagPrototyped, spFlags: 0)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1057, !1097, !1138, !1057}
!1606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1607, file: !1430, line: 80)
!1607 = !DISubprogram(name: "wctob", scope: !1441, file: !1441, line: 160, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!5, !1438}
!1610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1611, file: !1430, line: 81)
!1611 = !DISubprogram(name: "wmemchr", linkageName: "?wmemchr@@YAPEA_WPEA_W_W_K@Z", scope: !1441, file: !1441, line: 268, type: !1612, flags: DIFlagPrototyped, spFlags: 0)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1097, !1097, !1098, !151}
!1614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1615, file: !1430, line: 82)
!1615 = !DISubprogram(name: "wmemcmp", scope: !1441, file: !1441, line: 213, type: !1616, flags: DIFlagPrototyped, spFlags: 0)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!5, !1138, !1138, !151}
!1618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1619, file: !1430, line: 83)
!1619 = !DISubprogram(name: "wmemcpy", scope: !1441, file: !1441, line: 229, type: !1620, flags: DIFlagPrototyped, spFlags: 0)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1097, !1097, !1138, !151}
!1622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1623, file: !1430, line: 84)
!1623 = !DISubprogram(name: "wmemmove", scope: !1441, file: !1441, line: 240, type: !1620, flags: DIFlagPrototyped, spFlags: 0)
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1625, file: !1430, line: 85)
!1625 = !DISubprogram(name: "wmemset", scope: !1441, file: !1441, line: 252, type: !1612, flags: DIFlagPrototyped, spFlags: 0)
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1627, file: !1430, line: 86)
!1627 = !DISubprogram(name: "wcsftime", scope: !1436, file: !1436, line: 69, type: !1628, flags: DIFlagPrototyped, spFlags: 0)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!151, !1097, !151, !1138, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1633, file: !1430, line: 88)
!1633 = !DISubprogram(name: "vfwscanf", scope: !1258, file: !1258, line: 731, type: !1518, flags: DIFlagPrototyped, spFlags: 0)
!1634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1635, file: !1430, line: 89)
!1635 = !DISubprogram(name: "vswscanf", scope: !1258, file: !1258, line: 1900, type: !1636, flags: DIFlagPrototyped, spFlags: 0)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!5, !1138, !1138, !964}
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1639, file: !1430, line: 90)
!1639 = !DISubprogram(name: "vwscanf", scope: !1258, file: !1258, line: 793, type: !1526, flags: DIFlagPrototyped, spFlags: 0)
!1640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1641, file: !1430, line: 91)
!1641 = !DISubprogram(name: "wcstof", scope: !1545, file: !1545, line: 207, type: !1642, flags: DIFlagPrototyped, spFlags: 0)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1167, !1138, !1548}
!1644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1645, file: !1430, line: 92)
!1645 = !DISubprogram(name: "wcstold", scope: !1545, file: !1545, line: 194, type: !1646, flags: DIFlagPrototyped, spFlags: 0)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1024, !1138, !1548}
!1648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1649, file: !1430, line: 93)
!1649 = !DISubprogram(name: "wcstoll", scope: !1545, file: !1545, line: 149, type: !1650, flags: DIFlagPrototyped, spFlags: 0)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1000, !1138, !1548, !5}
!1652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1653, file: !1430, line: 94)
!1653 = !DISubprogram(name: "wcstoull", scope: !1545, file: !1545, line: 179, type: !1654, flags: DIFlagPrototyped, spFlags: 0)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!24, !1138, !1548, !5}
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !151, file: !1657, line: 25)
!1657 = !DIFile(filename: "stl\\cstring", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1659, file: !1657, line: 26)
!1659 = !DISubprogram(name: "memchr", linkageName: "?memchr@@YAPEAXPEAXH_K@Z", scope: !1660, file: !1660, line: 104, type: !1661, flags: DIFlagPrototyped, spFlags: 0)
!1660 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\corecrt_memory.h", directory: "C:\\")
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!968, !968, !5, !1057}
!1663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1664, file: !1657, line: 27)
!1664 = !DISubprogram(name: "memcmp", scope: !1665, file: !1665, line: 29, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1665 = !DIFile(filename: "stl\\vcruntime_string.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!5, !193, !193, !1057}
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1669, file: !1657, line: 28)
!1669 = !DISubprogram(name: "memcpy", scope: !1665, file: !1665, line: 43, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!968, !968, !193, !1057}
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1673, file: !1657, line: 29)
!1673 = !DISubprogram(name: "memmove", scope: !1665, file: !1665, line: 50, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1675, file: !1657, line: 30)
!1675 = !DISubprogram(name: "memset", scope: !1665, file: !1665, line: 63, type: !1661, flags: DIFlagPrototyped, spFlags: 0)
!1676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1677, file: !1657, line: 31)
!1677 = !DISubprogram(name: "strcat", scope: !1678, file: !1678, line: 91, type: !1679, flags: DIFlagPrototyped, spFlags: 0)
!1678 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\string.h", directory: "C:\\")
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!165, !165, !172}
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1682, file: !1657, line: 32)
!1682 = !DISubprogram(name: "strchr", linkageName: "?strchr@@YAPEADQEADH@Z", scope: !1678, file: !1678, line: 500, type: !1683, flags: DIFlagPrototyped, spFlags: 0)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!165, !186, !109}
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1686, file: !1657, line: 33)
!1686 = !DISubprogram(name: "strcmp", scope: !1678, file: !1678, line: 100, type: !1369, flags: DIFlagPrototyped, spFlags: 0)
!1687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1688, file: !1657, line: 34)
!1688 = !DISubprogram(name: "strcoll", scope: !1678, file: !1678, line: 112, type: !1369, flags: DIFlagPrototyped, spFlags: 0)
!1689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1690, file: !1657, line: 35)
!1690 = !DISubprogram(name: "strcpy", scope: !1678, file: !1678, line: 130, type: !1679, flags: DIFlagPrototyped, spFlags: 0)
!1691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1692, file: !1657, line: 36)
!1692 = !DISubprogram(name: "strcspn", scope: !1678, file: !1678, line: 137, type: !1693, flags: DIFlagPrototyped, spFlags: 0)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1057, !172, !172}
!1695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1696, file: !1657, line: 37)
!1696 = !DISubprogram(name: "strerror", scope: !1678, file: !1678, line: 178, type: !1697, flags: DIFlagPrototyped, spFlags: 0)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!165, !5}
!1699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1700, file: !1657, line: 38)
!1700 = !DISubprogram(name: "strlen", scope: !1678, file: !1678, line: 215, type: !1701, flags: DIFlagPrototyped, spFlags: 0)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1057, !172}
!1703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1704, file: !1657, line: 39)
!1704 = !DISubprogram(name: "strncat", scope: !1678, file: !1678, line: 262, type: !1705, flags: DIFlagPrototyped, spFlags: 0)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!165, !165, !172, !1057}
!1707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1708, file: !1657, line: 40)
!1708 = !DISubprogram(name: "strncmp", scope: !1678, file: !1678, line: 271, type: !1709, flags: DIFlagPrototyped, spFlags: 0)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!5, !172, !172, !1057}
!1711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1712, file: !1657, line: 41)
!1712 = !DISubprogram(name: "strncpy", scope: !1678, file: !1678, line: 334, type: !1705, flags: DIFlagPrototyped, spFlags: 0)
!1713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1714, file: !1657, line: 42)
!1714 = !DISubprogram(name: "strpbrk", linkageName: "?strpbrk@@YAPEADQEADQEBD@Z", scope: !1678, file: !1678, line: 506, type: !1715, flags: DIFlagPrototyped, spFlags: 0)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!165, !186, !351}
!1717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1718, file: !1657, line: 43)
!1718 = !DISubprogram(name: "strrchr", linkageName: "?strrchr@@YAPEADQEADH@Z", scope: !1678, file: !1678, line: 512, type: !1683, flags: DIFlagPrototyped, spFlags: 0)
!1719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1720, file: !1657, line: 44)
!1720 = !DISubprogram(name: "strspn", scope: !1678, file: !1678, line: 430, type: !1693, flags: DIFlagPrototyped, spFlags: 0)
!1721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1722, file: !1657, line: 45)
!1722 = !DISubprogram(name: "strstr", linkageName: "?strstr@@YAPEADQEADQEBD@Z", scope: !1678, file: !1678, line: 518, type: !1715, flags: DIFlagPrototyped, spFlags: 0)
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1724, file: !1657, line: 46)
!1724 = !DISubprogram(name: "strtok", scope: !1678, file: !1678, line: 436, type: !1679, flags: DIFlagPrototyped, spFlags: 0)
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1726, file: !1657, line: 47)
!1726 = !DISubprogram(name: "strxfrm", scope: !1678, file: !1678, line: 479, type: !1727, flags: DIFlagPrototyped, spFlags: 0)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1057, !165, !172, !1057}
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1730, file: !1731, line: 119)
!1730 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", file: !1731, line: 69, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AVtype_info@@")
!1731 = !DIFile(filename: "stl\\vcruntime_typeinfo.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1021, file: !1733, line: 684)
!1733 = !DIFile(filename: "stl\\cmath", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!1734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1735, file: !1733, line: 700)
!1735 = !DISubprogram(name: "modf", linkageName: "?modf@@YAOOPEAO@Z", scope: !1733, file: !1733, line: 422, type: !1736, flags: DIFlagPrototyped, spFlags: 0)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1024, !1024, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1740, file: !1733, line: 708)
!1740 = !DISubprogram(name: "acosf", scope: !1032, file: !1032, line: 609, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1167, !1167}
!1743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1744, file: !1733, line: 709)
!1744 = !DISubprogram(name: "asinf", scope: !1032, file: !1032, line: 610, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1746, file: !1733, line: 710)
!1746 = !DISubprogram(name: "atanf", scope: !1032, file: !1032, line: 612, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1748, file: !1733, line: 711)
!1748 = !DISubprogram(name: "atan2f", scope: !1032, file: !1032, line: 611, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1167, !1167, !1167}
!1751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1752, file: !1733, line: 712)
!1752 = !DISubprogram(name: "ceilf", scope: !1032, file: !1032, line: 613, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1754, file: !1733, line: 713)
!1754 = !DISubprogram(name: "cosf", scope: !1032, file: !1032, line: 614, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1756, file: !1733, line: 714)
!1756 = !DISubprogram(name: "coshf", scope: !1032, file: !1032, line: 615, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1758, file: !1733, line: 715)
!1758 = !DISubprogram(name: "expf", scope: !1032, file: !1032, line: 616, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1760, file: !1733, line: 716)
!1760 = !DISubprogram(name: "fabsf", scope: !1032, file: !1032, line: 668, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1762, file: !1733, line: 717)
!1762 = !DISubprogram(name: "floorf", scope: !1032, file: !1032, line: 677, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1764, file: !1733, line: 718)
!1764 = !DISubprogram(name: "fmodf", scope: !1032, file: !1032, line: 678, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1766, file: !1733, line: 719)
!1766 = !DISubprogram(name: "frexpf", scope: !1032, file: !1032, line: 694, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1167, !1167, !115}
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1770, file: !1733, line: 720)
!1770 = !DISubprogram(name: "ldexpf", scope: !1032, file: !1032, line: 704, type: !1771, flags: DIFlagPrototyped, spFlags: 0)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1167, !1167, !5}
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1774, file: !1733, line: 721)
!1774 = !DISubprogram(name: "logf", scope: !1032, file: !1032, line: 712, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1776, file: !1733, line: 722)
!1776 = !DISubprogram(name: "log10f", scope: !1032, file: !1032, line: 711, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1778, file: !1733, line: 723)
!1778 = !DISubprogram(name: "modff", scope: !1032, file: !1032, line: 713, type: !1779, flags: DIFlagPrototyped, spFlags: 0)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1167, !1167, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1783, file: !1733, line: 724)
!1783 = !DISubprogram(name: "powf", scope: !1032, file: !1032, line: 714, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1785, file: !1733, line: 725)
!1785 = !DISubprogram(name: "sinf", scope: !1032, file: !1032, line: 715, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1787, file: !1733, line: 726)
!1787 = !DISubprogram(name: "sinhf", scope: !1032, file: !1032, line: 716, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1789, file: !1733, line: 727)
!1789 = !DISubprogram(name: "sqrtf", scope: !1032, file: !1032, line: 717, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1791, file: !1733, line: 728)
!1791 = !DISubprogram(name: "tanf", scope: !1032, file: !1032, line: 718, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1793, file: !1733, line: 729)
!1793 = !DISubprogram(name: "tanhf", scope: !1032, file: !1032, line: 719, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1795, file: !1733, line: 731)
!1795 = !DISubprogram(name: "acosl", scope: !1032, file: !1032, line: 775, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1797, file: !1733, line: 732)
!1797 = !DISubprogram(name: "asinl", scope: !1032, file: !1032, line: 782, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1799, file: !1733, line: 733)
!1799 = !DISubprogram(name: "atanl", scope: !1032, file: !1032, line: 794, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1801, file: !1733, line: 734)
!1801 = !DISubprogram(name: "atan2l", scope: !1032, file: !1032, line: 787, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1024, !1024, !1024}
!1804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1805, file: !1733, line: 735)
!1805 = !DISubprogram(name: "ceill", scope: !1032, file: !1032, line: 801, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1807, file: !1733, line: 736)
!1807 = !DISubprogram(name: "cosl", scope: !1032, file: !1032, line: 823, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1809, file: !1733, line: 737)
!1809 = !DISubprogram(name: "coshl", scope: !1032, file: !1032, line: 818, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1811, file: !1733, line: 738)
!1811 = !DISubprogram(name: "expl", scope: !1032, file: !1032, line: 831, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1813, file: !1733, line: 739)
!1813 = !DISubprogram(name: "fabsl", scope: !1032, file: !1032, line: 839, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1815, file: !1733, line: 740)
!1815 = !DISubprogram(name: "floorl", scope: !1032, file: !1032, line: 846, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1817, file: !1733, line: 741)
!1817 = !DISubprogram(name: "fmodl", scope: !1032, file: !1032, line: 855, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1819, file: !1733, line: 742)
!1819 = !DISubprogram(name: "frexpl", scope: !1032, file: !1032, line: 860, type: !1820, flags: DIFlagPrototyped, spFlags: 0)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!1024, !1024, !115}
!1822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1823, file: !1733, line: 743)
!1823 = !DISubprogram(name: "ldexpl", scope: !1032, file: !1032, line: 877, type: !1824, flags: DIFlagPrototyped, spFlags: 0)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!1024, !1024, !5}
!1826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1827, file: !1733, line: 744)
!1827 = !DISubprogram(name: "logl", scope: !1032, file: !1032, line: 886, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1829, file: !1733, line: 745)
!1829 = !DISubprogram(name: "log10l", scope: !1032, file: !1032, line: 891, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1831, file: !1733, line: 746)
!1831 = !DISubprogram(name: "modfl", scope: !1032, file: !1032, line: 902, type: !1736, flags: DIFlagPrototyped, spFlags: 0)
!1832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1833, file: !1733, line: 747)
!1833 = !DISubprogram(name: "powl", scope: !1032, file: !1032, line: 915, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1835, file: !1733, line: 748)
!1835 = !DISubprogram(name: "sinl", scope: !1032, file: !1032, line: 932, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1837, file: !1733, line: 749)
!1837 = !DISubprogram(name: "sinhl", scope: !1032, file: !1032, line: 927, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1839, file: !1733, line: 750)
!1839 = !DISubprogram(name: "sqrtl", scope: !1032, file: !1032, line: 937, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1841, file: !1733, line: 751)
!1841 = !DISubprogram(name: "tanl", scope: !1032, file: !1032, line: 947, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1843, file: !1733, line: 752)
!1843 = !DISubprogram(name: "tanhl", scope: !1032, file: !1032, line: 942, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1845, file: !1733, line: 754)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1032, line: 59, baseType: !1167)
!1846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1847, file: !1733, line: 755)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1032, line: 60, baseType: !1005)
!1848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1849, file: !1733, line: 786)
!1849 = !DISubprogram(name: "nan", scope: !1032, file: !1032, line: 524, type: !1033, flags: DIFlagPrototyped, spFlags: 0)
!1850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1851, file: !1733, line: 793)
!1851 = !DISubprogram(name: "acoshf", scope: !1032, file: !1032, line: 543, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1853, file: !1733, line: 794)
!1853 = !DISubprogram(name: "asinhf", scope: !1032, file: !1032, line: 544, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1855, file: !1733, line: 795)
!1855 = !DISubprogram(name: "atanhf", scope: !1032, file: !1032, line: 545, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1857, file: !1733, line: 796)
!1857 = !DISubprogram(name: "cbrtf", scope: !1032, file: !1032, line: 546, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1859, file: !1733, line: 797)
!1859 = !DISubprogram(name: "erff", scope: !1032, file: !1032, line: 550, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1861, file: !1733, line: 798)
!1861 = !DISubprogram(name: "erfcf", scope: !1032, file: !1032, line: 551, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1863, file: !1733, line: 799)
!1863 = !DISubprogram(name: "expm1f", scope: !1032, file: !1032, line: 552, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1865, file: !1733, line: 800)
!1865 = !DISubprogram(name: "exp2f", scope: !1032, file: !1032, line: 553, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1867, file: !1733, line: 801)
!1867 = !DISubprogram(name: "hypotf", scope: !1032, file: !1032, line: 699, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1869, file: !1733, line: 802)
!1869 = !DISubprogram(name: "ilogbf", scope: !1032, file: !1032, line: 559, type: !1870, flags: DIFlagPrototyped, spFlags: 0)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!5, !1167}
!1872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1873, file: !1733, line: 803)
!1873 = !DISubprogram(name: "lgammaf", scope: !1032, file: !1032, line: 560, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1875, file: !1733, line: 804)
!1875 = !DISubprogram(name: "log1pf", scope: !1032, file: !1032, line: 563, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1877, file: !1733, line: 805)
!1877 = !DISubprogram(name: "log2f", scope: !1032, file: !1032, line: 564, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1879, file: !1733, line: 806)
!1879 = !DISubprogram(name: "logbf", scope: !1032, file: !1032, line: 565, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1881, file: !1733, line: 807)
!1881 = !DISubprogram(name: "llrintf", scope: !1032, file: !1032, line: 561, type: !1882, flags: DIFlagPrototyped, spFlags: 0)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1000, !1167}
!1884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1885, file: !1733, line: 808)
!1885 = !DISubprogram(name: "lrintf", scope: !1032, file: !1032, line: 566, type: !1886, flags: DIFlagPrototyped, spFlags: 0)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!986, !1167}
!1888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1889, file: !1733, line: 809)
!1889 = !DISubprogram(name: "nearbyintf", scope: !1032, file: !1032, line: 569, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1891, file: !1733, line: 810)
!1891 = !DISubprogram(name: "rintf", scope: !1032, file: !1032, line: 574, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1893, file: !1733, line: 811)
!1893 = !DISubprogram(name: "llroundf", scope: !1032, file: !1032, line: 562, type: !1882, flags: DIFlagPrototyped, spFlags: 0)
!1894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1895, file: !1733, line: 812)
!1895 = !DISubprogram(name: "lroundf", scope: !1032, file: !1032, line: 567, type: !1886, flags: DIFlagPrototyped, spFlags: 0)
!1896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1897, file: !1733, line: 813)
!1897 = !DISubprogram(name: "fdimf", scope: !1032, file: !1032, line: 554, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1899, file: !1733, line: 814)
!1899 = !DISubprogram(name: "fmaf", scope: !1032, file: !1032, line: 555, type: !1900, flags: DIFlagPrototyped, spFlags: 0)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1167, !1167, !1167, !1167}
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1903, file: !1733, line: 815)
!1903 = !DISubprogram(name: "fmaxf", scope: !1032, file: !1032, line: 556, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1905, file: !1733, line: 816)
!1905 = !DISubprogram(name: "fminf", scope: !1032, file: !1032, line: 557, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1907, file: !1733, line: 817)
!1907 = !DISubprogram(name: "roundf", scope: !1032, file: !1032, line: 575, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1909, file: !1733, line: 818)
!1909 = !DISubprogram(name: "truncf", scope: !1032, file: !1032, line: 579, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1911, file: !1733, line: 819)
!1911 = !DISubprogram(name: "remainderf", scope: !1032, file: !1032, line: 572, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1913, file: !1733, line: 820)
!1913 = !DISubprogram(name: "remquof", scope: !1032, file: !1032, line: 573, type: !1914, flags: DIFlagPrototyped, spFlags: 0)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1167, !1167, !1167, !115}
!1916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1917, file: !1733, line: 821)
!1917 = !DISubprogram(name: "copysignf", scope: !1032, file: !1032, line: 548, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1919, file: !1733, line: 822)
!1919 = !DISubprogram(name: "nanf", scope: !1032, file: !1032, line: 568, type: !1920, flags: DIFlagPrototyped, spFlags: 0)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1167, !172}
!1922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1923, file: !1733, line: 823)
!1923 = !DISubprogram(name: "nextafterf", scope: !1032, file: !1032, line: 570, type: !1749, flags: DIFlagPrototyped, spFlags: 0)
!1924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1925, file: !1733, line: 824)
!1925 = !DISubprogram(name: "scalbnf", scope: !1032, file: !1032, line: 577, type: !1771, flags: DIFlagPrototyped, spFlags: 0)
!1926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1927, file: !1733, line: 825)
!1927 = !DISubprogram(name: "scalblnf", scope: !1032, file: !1032, line: 576, type: !1928, flags: DIFlagPrototyped, spFlags: 0)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1167, !1167, !986}
!1930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1931, file: !1733, line: 826)
!1931 = !DISubprogram(name: "nexttowardf", scope: !1032, file: !1032, line: 571, type: !1932, flags: DIFlagPrototyped, spFlags: 0)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1167, !1167, !1024}
!1934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1935, file: !1733, line: 827)
!1935 = !DISubprogram(name: "tgammaf", scope: !1032, file: !1032, line: 578, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1937, file: !1733, line: 829)
!1937 = !DISubprogram(name: "acoshl", scope: !1032, file: !1032, line: 773, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1939, file: !1733, line: 830)
!1939 = !DISubprogram(name: "asinhl", scope: !1032, file: !1032, line: 780, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1941, file: !1733, line: 831)
!1941 = !DISubprogram(name: "atanhl", scope: !1032, file: !1032, line: 792, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1943, file: !1733, line: 832)
!1943 = !DISubprogram(name: "cbrtl", scope: !1032, file: !1032, line: 799, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1945, file: !1733, line: 833)
!1945 = !DISubprogram(name: "erfl", scope: !1032, file: !1032, line: 828, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1947, file: !1733, line: 834)
!1947 = !DISubprogram(name: "erfcl", scope: !1032, file: !1032, line: 829, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1949, file: !1733, line: 835)
!1949 = !DISubprogram(name: "expm1l", scope: !1032, file: !1032, line: 837, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1951, file: !1733, line: 836)
!1951 = !DISubprogram(name: "exp2l", scope: !1032, file: !1032, line: 836, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1953, file: !1733, line: 837)
!1953 = !DISubprogram(name: "hypotl", scope: !1032, file: !1032, line: 872, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1955, file: !1733, line: 838)
!1955 = !DISubprogram(name: "ilogbl", scope: !1032, file: !1032, line: 865, type: !1956, flags: DIFlagPrototyped, spFlags: 0)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!5, !1024}
!1958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1959, file: !1733, line: 839)
!1959 = !DISubprogram(name: "lgammal", scope: !1032, file: !1032, line: 882, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1961, file: !1733, line: 840)
!1961 = !DISubprogram(name: "log1pl", scope: !1032, file: !1032, line: 896, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1963, file: !1733, line: 841)
!1963 = !DISubprogram(name: "log2l", scope: !1032, file: !1032, line: 897, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1965, file: !1733, line: 842)
!1965 = !DISubprogram(name: "logbl", scope: !1032, file: !1032, line: 898, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1967, file: !1733, line: 843)
!1967 = !DISubprogram(name: "llrintl", scope: !1032, file: !1032, line: 883, type: !1968, flags: DIFlagPrototyped, spFlags: 0)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1000, !1024}
!1970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1971, file: !1733, line: 844)
!1971 = !DISubprogram(name: "lrintl", scope: !1032, file: !1032, line: 899, type: !1972, flags: DIFlagPrototyped, spFlags: 0)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!986, !1024}
!1974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1975, file: !1733, line: 845)
!1975 = !DISubprogram(name: "nearbyintl", scope: !1032, file: !1032, line: 911, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1977, file: !1733, line: 846)
!1977 = !DISubprogram(name: "rintl", scope: !1032, file: !1032, line: 922, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1979, file: !1733, line: 847)
!1979 = !DISubprogram(name: "llroundl", scope: !1032, file: !1032, line: 884, type: !1968, flags: DIFlagPrototyped, spFlags: 0)
!1980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1981, file: !1733, line: 848)
!1981 = !DISubprogram(name: "lroundl", scope: !1032, file: !1032, line: 900, type: !1972, flags: DIFlagPrototyped, spFlags: 0)
!1982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1983, file: !1733, line: 849)
!1983 = !DISubprogram(name: "fdiml", scope: !1032, file: !1032, line: 844, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1985, file: !1733, line: 850)
!1985 = !DISubprogram(name: "fmal", scope: !1032, file: !1032, line: 851, type: !1986, flags: DIFlagPrototyped, spFlags: 0)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!1024, !1024, !1024, !1024}
!1988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1989, file: !1733, line: 851)
!1989 = !DISubprogram(name: "fmaxl", scope: !1032, file: !1032, line: 852, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1991, file: !1733, line: 852)
!1991 = !DISubprogram(name: "fminl", scope: !1032, file: !1032, line: 853, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1993, file: !1733, line: 853)
!1993 = !DISubprogram(name: "roundl", scope: !1032, file: !1032, line: 923, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1995, file: !1733, line: 854)
!1995 = !DISubprogram(name: "truncl", scope: !1032, file: !1032, line: 953, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1997, file: !1733, line: 855)
!1997 = !DISubprogram(name: "remainderl", scope: !1032, file: !1032, line: 920, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!1998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1999, file: !1733, line: 856)
!1999 = !DISubprogram(name: "remquol", scope: !1032, file: !1032, line: 921, type: !2000, flags: DIFlagPrototyped, spFlags: 0)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!1024, !1024, !1024, !115}
!2002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2003, file: !1733, line: 857)
!2003 = !DISubprogram(name: "copysignl", scope: !1032, file: !1032, line: 811, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!2004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2005, file: !1733, line: 858)
!2005 = !DISubprogram(name: "nanl", scope: !1032, file: !1032, line: 910, type: !2006, flags: DIFlagPrototyped, spFlags: 0)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1024, !172}
!2008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2009, file: !1733, line: 859)
!2009 = !DISubprogram(name: "nextafterl", scope: !1032, file: !1032, line: 912, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!2010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2011, file: !1733, line: 860)
!2011 = !DISubprogram(name: "scalbnl", scope: !1032, file: !1032, line: 925, type: !1824, flags: DIFlagPrototyped, spFlags: 0)
!2012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2013, file: !1733, line: 861)
!2013 = !DISubprogram(name: "scalblnl", scope: !1032, file: !1032, line: 924, type: !2014, flags: DIFlagPrototyped, spFlags: 0)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!1024, !1024, !986}
!2016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2017, file: !1733, line: 862)
!2017 = !DISubprogram(name: "nexttowardl", scope: !1032, file: !1032, line: 913, type: !1802, flags: DIFlagPrototyped, spFlags: 0)
!2018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2019, file: !1733, line: 863)
!2019 = !DISubprogram(name: "tgammal", scope: !1032, file: !1032, line: 952, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!2020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2021, file: !1733, line: 865)
!2021 = !DISubprogram(name: "fpclassify", linkageName: "?fpclassify@@YAHO@Z", scope: !1032, file: !1032, line: 298, type: !1956, flags: DIFlagPrototyped, spFlags: 0)
!2022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2023, file: !1733, line: 866)
!2023 = !DISubprogram(name: "signbit", linkageName: "?signbit@@YA_NO@Z", scope: !1032, file: !1032, line: 313, type: !2024, flags: DIFlagPrototyped, spFlags: 0)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!56, !1024}
!2026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2027, entity: !151, file: !2028, line: 34)
!2027 = !DINamespace(name: "stdext", scope: null)
!2028 = !DIFile(filename: "stl\\xhash", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!2029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2030, file: !2032, line: 38)
!2030 = !DISubprogram(name: "isalnum", scope: !2031, file: !2031, line: 53, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2031 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\Include\\10.0.19041.0\\ucrt\\ctype.h", directory: "C:\\")
!2032 = !DIFile(filename: "stl\\cctype", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!2033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2034, file: !2032, line: 39)
!2034 = !DISubprogram(name: "isalpha", scope: !2031, file: !2031, line: 31, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2036, file: !2032, line: 40)
!2036 = !DISubprogram(name: "iscntrl", scope: !2031, file: !2031, line: 59, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2038, file: !2032, line: 41)
!2038 = !DISubprogram(name: "isdigit", scope: !2031, file: !2031, line: 39, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2040, file: !2032, line: 42)
!2040 = !DISubprogram(name: "isgraph", scope: !2031, file: !2031, line: 57, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2042, file: !2032, line: 43)
!2042 = !DISubprogram(name: "islower", scope: !2031, file: !2031, line: 35, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2044, file: !2032, line: 44)
!2044 = !DISubprogram(name: "isprint", scope: !2031, file: !2031, line: 55, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2046, file: !2032, line: 45)
!2046 = !DISubprogram(name: "ispunct", scope: !2031, file: !2031, line: 49, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2048, file: !2032, line: 46)
!2048 = !DISubprogram(name: "isspace", scope: !2031, file: !2031, line: 46, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2050, file: !2032, line: 47)
!2050 = !DISubprogram(name: "isupper", scope: !2031, file: !2031, line: 33, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2052, file: !2032, line: 48)
!2052 = !DISubprogram(name: "isxdigit", scope: !2031, file: !2031, line: 42, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2054, file: !2032, line: 49)
!2054 = !DISubprogram(name: "tolower", scope: !2031, file: !2031, line: 66, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2056, file: !2032, line: 50)
!2056 = !DISubprogram(name: "toupper", scope: !2031, file: !2031, line: 63, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !2058, file: !2032, line: 52)
!2058 = !DISubprogram(name: "isblank", scope: !2031, file: !2031, line: 51, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!2059 = !{!"/DEFAULTLIB:uuid.lib"}
!2060 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!2061 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!2062 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!2063 = !{!"/DEFAULTLIB:libcpmt.lib"}
!2064 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!2065 = !{i32 2, !"Debug Info Version", i32 3}
!2066 = !{i32 1, !"wchar_size", i32 2}
!2067 = !{i32 7, !"PIC Level", i32 2}
!2068 = !{!"clang version 11.0.0 (https://github.com/ykfre/llvm-project.git eee67383dca48c5f93d255c2a61f5418265353fe)"}
!2069 = distinct !DISubprogram(name: "retFunc", linkageName: "?retFunc@@YA?AV?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@XZ", scope: !4, file: !4, line: 9, type: !2070, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!2072}
!2072 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<ClassWithDestructor, std::default_delete<ClassWithDestructor> >", scope: !8, file: !2073, line: 988, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2074, templateParams: !2186, identifier: ".?AV?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@")
!2073 = !DIFile(filename: "stl\\memory", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!2074 = !{!2075, !2133, !2138, !2141, !2144, !2147, !2152, !2161, !2169, !2170, !2173, !2176, !2179, !2183}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_Mypair", scope: !2072, file: !2073, line: 1124, baseType: !2076, size: 64, flags: DIFlagPublic)
!2076 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Compressed_pair<std::default_delete<ClassWithDestructor>, ClassWithDestructor *, true>", scope: !8, file: !157, line: 1327, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2077, templateParams: !2130, identifier: ".?AV?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@")
!2077 = !{!2078, !2118, !2119, !2124}
!2078 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2076, baseType: !2079, extraData: i32 0)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<ClassWithDestructor>", scope: !8, file: !2073, line: 955, size: 8, flags: DIFlagTypePassByValue, elements: !2080, templateParams: !2116, identifier: ".?AU?$default_delete@VClassWithDestructor@@@std@@")
!2080 = !{!2081, !2085}
!2081 = !DISubprogram(name: "default_delete", scope: !2079, file: !2073, line: 956, type: !2082, scopeLine: 956, flags: DIFlagPrototyped, spFlags: 0)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2084}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2085 = !DISubprogram(name: "operator()", linkageName: "??R?$default_delete@VClassWithDestructor@@@std@@QEBAXPEAVClassWithDestructor@@@Z", scope: !2079, file: !2073, line: 961, type: !2086, scopeLine: 961, flags: DIFlagPrototyped, spFlags: 0)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2088, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ClassWithDestructor", file: !2092, line: 13, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2093, identifier: ".?AVClassWithDestructor@@")
!2092 = !DIFile(filename: "ExpressionTestsClasses.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!2093 = !{!2094, !2095, !2099, !2104, !2108, !2112, !2113}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "m_r", scope: !2091, file: !2092, line: 21, baseType: !5, size: 32, flags: DIFlagPublic)
!2095 = !DISubprogram(name: "ClassWithDestructor", scope: !2091, file: !2092, line: 15, type: !2096, scopeLine: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !2098, !5}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2099 = !DISubprogram(name: "ClassWithDestructor", scope: !2091, file: !2092, line: 16, type: !2100, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !2098, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2104 = !DISubprogram(name: "operator=", linkageName: "??4ClassWithDestructor@@QEAAAEAV0@AEBV0@@Z", scope: !2091, file: !2092, line: 17, type: !2105, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!2107, !2098, !2102}
!2107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2091, size: 64)
!2108 = !DISubprogram(name: "operator==", linkageName: "??8ClassWithDestructor@@QEBA_NAEBV0@@Z", scope: !2091, file: !2092, line: 18, type: !2109, scopeLine: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!56, !2111, !2102}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2112 = !DISubprogram(name: "operator!=", linkageName: "??9ClassWithDestructor@@QEBA_NAEBV0@@Z", scope: !2091, file: !2092, line: 19, type: !2109, scopeLine: 19, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2113 = !DISubprogram(name: "~ClassWithDestructor", scope: !2091, file: !2092, line: 20, type: !2114, scopeLine: 20, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !2098}
!2116 = !{!2117}
!2117 = !DITemplateTypeParameter(name: "_Ty", type: !2091)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_Myval2", scope: !2076, file: !157, line: 1329, baseType: !2090, size: 64, flags: DIFlagPublic)
!2119 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAAAEAU?$default_delete@VClassWithDestructor@@@2@XZ", scope: !2076, file: !157, line: 1343, type: !2120, scopeLine: 1343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2079, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2124 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEBAAEBU?$default_delete@VClassWithDestructor@@@2@XZ", scope: !2076, file: !157, line: 1347, type: !2125, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2089, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2076)
!2130 = !{!2131, !2132, !81}
!2131 = !DITemplateTypeParameter(name: "_Ty1", type: !2079)
!2132 = !DITemplateTypeParameter(name: "_Ty2", type: !2090)
!2133 = !DISubprogram(name: "operator=", linkageName: "??4?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAAAEAV01@$$T@Z", scope: !2072, file: !2073, line: 1002, type: !2134, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !2137, !996}
!2136 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2072, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2138 = !DISubprogram(name: "swap", linkageName: "?swap@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAAXAEAV12@@Z", scope: !2072, file: !2073, line: 1080, type: !2139, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2137, !2136}
!2141 = !DISubprogram(name: "~unique_ptr", scope: !2072, file: !2073, line: 1085, type: !2142, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !2137}
!2144 = !DISubprogram(name: "get_deleter", linkageName: "?get_deleter@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAAAEAU?$default_delete@VClassWithDestructor@@@2@XZ", scope: !2072, file: !2073, line: 1091, type: !2145, scopeLine: 1091, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!2122, !2137}
!2147 = !DISubprogram(name: "get_deleter", linkageName: "?get_deleter@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEBAAEBU?$default_delete@VClassWithDestructor@@@2@XZ", scope: !2072, file: !2073, line: 1093, type: !2148, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!2127, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2152 = !DISubprogram(name: "operator*", linkageName: "??D?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEBAAEAVClassWithDestructor@@XZ", scope: !2072, file: !2073, line: 1097, type: !2153, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2155, !2150}
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "add_lvalue_reference_t<ClassWithDestructor>", scope: !8, file: !2156, line: 213, baseType: !2157)
!2156 = !DIFile(filename: "stl\\type_traits", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Lvalue", scope: !2158, file: !2156, line: 202, baseType: !2107)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Add_reference<ClassWithDestructor, void>", scope: !8, file: !2156, line: 201, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !2159, identifier: ".?AU?$_Add_reference@VClassWithDestructor@@X@std@@")
!2159 = !{!2117, !2160}
!2160 = !DITemplateTypeParameter(type: null, defaulted: true)
!2161 = !DISubprogram(name: "operator->", linkageName: "??C?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEBAPEAVClassWithDestructor@@XZ", scope: !2072, file: !2073, line: 1102, type: !2162, scopeLine: 1102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2164, !2150}
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2072, file: !2073, line: 990, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2166, file: !2073, line: 939, baseType: !2090)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Get_deleter_pointer_type<ClassWithDestructor, std::default_delete<ClassWithDestructor>, void>", scope: !8, file: !2073, line: 938, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !2167, identifier: ".?AU?$_Get_deleter_pointer_type@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@X@std@@")
!2167 = !{!2117, !2168, !2160}
!2168 = !DITemplateTypeParameter(name: "_Dx_noref", type: !2079)
!2169 = !DISubprogram(name: "get", linkageName: "?get@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEBAPEAVClassWithDestructor@@XZ", scope: !2072, file: !2073, line: 1104, type: !2162, scopeLine: 1104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2170 = !DISubprogram(name: "operator bool", linkageName: "??B?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEBA_NXZ", scope: !2072, file: !2073, line: 1106, type: !2171, scopeLine: 1106, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!56, !2150}
!2173 = !DISubprogram(name: "release", linkageName: "?release@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAAPEAVClassWithDestructor@@XZ", scope: !2072, file: !2073, line: 1110, type: !2174, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!2164, !2137}
!2176 = !DISubprogram(name: "reset", linkageName: "?reset@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAAXPEAVClassWithDestructor@@@Z", scope: !2072, file: !2073, line: 1114, type: !2177, scopeLine: 1114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !2137, !2164}
!2179 = !DISubprogram(name: "unique_ptr", scope: !2072, file: !2073, line: 1121, type: !2180, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2137, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2151, size: 64)
!2183 = !DISubprogram(name: "operator=", linkageName: "??4?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAAAEAV01@AEBV01@@Z", scope: !2072, file: !2073, line: 1122, type: !2184, scopeLine: 1122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!2136, !2137, !2182}
!2186 = !{!2117, !2187}
!2187 = !DITemplateTypeParameter(name: "_Dx", type: !2079)
!2188 = !DILocation(line: 10, column: 10, scope: !2069)
!2189 = !DILocation(line: 10, column: 3, scope: !2069)
!2190 = distinct !DISubprogram(name: "unique_ptr<std::default_delete<ClassWithDestructor>, 0>", linkageName: "??$?0U?$default_delete@VClassWithDestructor@@@std@@$0A@@?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ", scope: !2072, file: !2073, line: 996, type: !2142, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2192, declaration: !2191, retainedNodes: !53)
!2191 = !DISubprogram(name: "unique_ptr<std::default_delete<ClassWithDestructor>, 0>", scope: !2072, file: !2073, line: 996, type: !2142, scopeLine: 996, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2192)
!2192 = !{!2193, !2194}
!2193 = !DITemplateTypeParameter(name: "_Dx2", type: !2079)
!2194 = !DITemplateValueParameter(type: !5, value: i32 0)
!2195 = !DILocalVariable(name: "this", arg: 1, scope: !2190, type: !2196, flags: DIFlagArtificial | DIFlagObjectPointer)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2197 = !DILocation(line: 0, scope: !2190)
!2198 = !DILocation(line: 996, column: 37, scope: !2190)
!2199 = !DILocation(line: 996, column: 76, scope: !2190)
!2200 = distinct !DISubprogram(name: "returnOptional", linkageName: "?returnOptional@expression@test@@YA?AV?$optional@H@std@@XZ", scope: !2, file: !4, line: 17, type: !2201, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!42}
!2203 = !DILocation(line: 17, column: 65, scope: !2200)
!2204 = !DILocation(line: 17, column: 46, scope: !2200)
!2205 = !DILocation(line: 17, column: 39, scope: !2200)
!2206 = distinct !DISubprogram(name: "optional<int, 0>", linkageName: "??$?0H$0A@@?$optional@H@std@@QEAA@$$QEAH@Z", scope: !42, file: !43, line: 184, type: !2207, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2210, declaration: !2209, retainedNodes: !53)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !87, !127}
!2209 = !DISubprogram(name: "optional<int, 0>", scope: !42, file: !43, line: 184, type: !2207, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2210)
!2210 = !{!2211, !2194}
!2211 = !DITemplateTypeParameter(name: "_Ty2", type: !5)
!2212 = !DILocalVariable(name: "_Right", arg: 2, scope: !2206, file: !43, line: 184, type: !127)
!2213 = !DILocation(line: 184, column: 70, scope: !2206)
!2214 = !DILocalVariable(name: "this", arg: 1, scope: !2206, type: !2215, flags: DIFlagArtificial | DIFlagObjectPointer)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2216 = !DILocation(line: 0, scope: !2206)
!2217 = !DILocation(line: 185, column: 57, scope: !2206)
!2218 = !DILocation(line: 185, column: 48, scope: !2206)
!2219 = !DILocation(line: 185, column: 29, scope: !2206)
!2220 = !DILocation(line: 185, column: 11, scope: !2206)
!2221 = !DILocation(line: 185, column: 58, scope: !2206)
!2222 = distinct !DISubprogram(name: "optionalObjectTest", linkageName: "?optionalObjectTest@expression@test@@YAXXZ", scope: !2, file: !4, line: 18, type: !277, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!2223 = !DILocalVariable(name: "a", scope: !2222, file: !4, line: 19, type: !42)
!2224 = !DILocation(line: 19, column: 22, scope: !2222)
!2225 = !DILocation(line: 19, column: 26, scope: !2222)
!2226 = !DILocation(line: 20, column: 7, scope: !2222)
!2227 = !DILocation(line: 20, column: 5, scope: !2222)
!2228 = !DILocation(line: 21, column: 5, scope: !2222)
!2229 = !DILocalVariable(name: "expr", scope: !2222, file: !4, line: 23, type: !140)
!2230 = !DILocation(line: 23, column: 15, scope: !2222)
!2231 = !DILocation(line: 23, column: 22, scope: !2222)
!2232 = !DILocation(line: 23, column: 3, scope: !2222)
!2233 = !DILocation(line: 34, column: 3, scope: !2222)
!2234 = distinct !{!2234, !2233, !2233}
!2235 = !DILocation(line: 35, column: 3, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2222, file: !4, line: 35, column: 3)
!2237 = !DILocation(line: 35, column: 3, scope: !2222)
!2238 = !DILocation(line: 35, column: 3, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !4, line: 35, column: 3)
!2240 = !DILocalVariable(name: "expr2", scope: !2222, file: !4, line: 36, type: !140)
!2241 = !DILocation(line: 36, column: 15, scope: !2222)
!2242 = !DILocation(line: 36, column: 23, scope: !2222)
!2243 = !DILocation(line: 36, column: 3, scope: !2222)
!2244 = !DILocation(line: 39, column: 3, scope: !2222)
!2245 = distinct !{!2245, !2244, !2244}
!2246 = !DILocation(line: 40, column: 3, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2222, file: !4, line: 40, column: 3)
!2248 = !DILocation(line: 40, column: 3, scope: !2222)
!2249 = !DILocation(line: 40, column: 3, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !4, line: 40, column: 3)
!2251 = !DILocation(line: 41, column: 1, scope: !2222)
!2252 = distinct !DISubprogram(name: "value", linkageName: "?value@?$optional@H@std@@QEGAAAEAHXZ", scope: !42, file: !43, line: 374, type: !121, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !137, retainedNodes: !53)
!2253 = !DILocalVariable(name: "this", arg: 1, scope: !2252, type: !2215, flags: DIFlagArtificial | DIFlagObjectPointer)
!2254 = !DILocation(line: 0, scope: !2252)
!2255 = !DILocation(line: 375, column: 20, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !43, line: 375, column: 13)
!2257 = !DILocation(line: 375, column: 13, scope: !2252)
!2258 = !DILocation(line: 376, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !43, line: 375, column: 32)
!2260 = !DILocation(line: 379, column: 22, scope: !2252)
!2261 = !DILocation(line: 379, column: 9, scope: !2252)
!2262 = distinct !DISubprogram(name: "basic_string", linkageName: "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z", scope: !142, file: !141, line: 2335, type: !356, scopeLine: 2335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !355, retainedNodes: !53)
!2263 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !2262, file: !141, line: 2335, type: !351)
!2264 = !DILocation(line: 2335, column: 44, scope: !2262)
!2265 = !DILocalVariable(name: "this", arg: 1, scope: !2262, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!2267 = !DILocation(line: 0, scope: !2262)
!2268 = !DILocation(line: 2335, column: 52, scope: !2262)
!2269 = !DILocalVariable(name: "_Alproxy", scope: !2270, file: !141, line: 2336, type: !2271)
!2270 = distinct !DILexicalBlock(scope: !2262, file: !141, line: 2335, column: 90)
!2271 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !220, size: 64)
!2272 = !DILocation(line: 2336, column: 16, scope: !2270)
!2273 = !DILocalVariable(name: "_Proxy", scope: !2270, file: !141, line: 2337, type: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Container_proxy_ptr<std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alty>", scope: !8, file: !157, line: 1310, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Fake_proxy_ptr_impl", scope: !8, file: !157, line: 1252, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2276, identifier: ".?AU_Fake_proxy_ptr_impl@std@@")
!2276 = !{!2277, !2283, !2287, !2296, !2301, !2305}
!2277 = !DISubprogram(name: "_Fake_proxy_ptr_impl", scope: !2275, file: !157, line: 1253, type: !2278, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2281 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2283 = !DISubprogram(name: "operator=", linkageName: "??4_Fake_proxy_ptr_impl@std@@QEAAAEAU01@AEBU01@@Z", scope: !2275, file: !157, line: 1254, type: !2284, scopeLine: 1254, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!2286, !2280, !2281}
!2286 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2275, size: 64)
!2287 = !DISubprogram(name: "_Fake_proxy_ptr_impl", scope: !2275, file: !157, line: 1255, type: !2288, scopeLine: 1255, flags: DIFlagPrototyped, spFlags: 0)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !2280, !218, !2290}
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Leave_proxy_unbound", scope: !8, file: !157, line: 1248, size: 8, flags: DIFlagTypePassByValue, elements: !2291, identifier: ".?AU_Leave_proxy_unbound@std@@")
!2291 = !{!2292}
!2292 = !DISubprogram(name: "_Leave_proxy_unbound", scope: !2290, file: !157, line: 1249, type: !2293, scopeLine: 1249, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2296 = !DISubprogram(name: "_Fake_proxy_ptr_impl", scope: !2275, file: !157, line: 1256, type: !2297, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: 0)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2280, !218, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!2301 = !DISubprogram(name: "_Bind", linkageName: "?_Bind@_Fake_proxy_ptr_impl@std@@QEAAXAEBU_Fake_allocator@2@PEAU_Container_base0@2@@Z", scope: !2275, file: !157, line: 1258, type: !2302, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: 0)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2280, !218, !2304}
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2305 = !DISubprogram(name: "_Release", linkageName: "?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ", scope: !2275, file: !157, line: 1259, type: !2306, scopeLine: 1259, flags: DIFlagPrototyped, spFlags: 0)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2280}
!2308 = !DILocation(line: 2337, column: 37, scope: !2270)
!2309 = !DILocation(line: 2337, column: 54, scope: !2270)
!2310 = !DILocation(line: 2337, column: 62, scope: !2270)
!2311 = !DILocation(line: 2337, column: 44, scope: !2270)
!2312 = !DILocation(line: 2338, column: 9, scope: !2270)
!2313 = !DILocation(line: 2339, column: 16, scope: !2270)
!2314 = !DILocation(line: 2339, column: 9, scope: !2270)
!2315 = !DILocation(line: 2340, column: 16, scope: !2270)
!2316 = !DILocation(line: 2341, column: 5, scope: !2262)
!2317 = !DILocation(line: 2341, column: 5, scope: !2270)
!2318 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", linkageName: "??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@QEBD@Z", scope: !8, file: !141, line: 4456, type: !2319, scopeLine: 4457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !963, retainedNodes: !53)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!142, !381, !351}
!2321 = !DILocalVariable(name: "_Right", arg: 2, scope: !2318, file: !141, line: 4457, type: !351)
!2322 = !DILocation(line: 4457, column: 77, scope: !2318)
!2323 = !DILocalVariable(name: "_Left", arg: 1, scope: !2318, file: !141, line: 4457, type: !381)
!2324 = !DILocation(line: 4457, column: 44, scope: !2318)
!2325 = !DILocation(line: 4458, column: 22, scope: !2318)
!2326 = !DILocation(line: 4458, column: 35, scope: !2318)
!2327 = !DILocation(line: 4458, column: 28, scope: !2318)
!2328 = !DILocation(line: 4458, column: 12, scope: !2318)
!2329 = !DILocation(line: 4458, column: 5, scope: !2318)
!2330 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", linkageName: "??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAV10@0@Z", scope: !8, file: !141, line: 4431, type: !2331, scopeLine: 4432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !963, retainedNodes: !53)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!142, !381, !381}
!2333 = !DILocalVariable(name: "_Right", arg: 2, scope: !2330, file: !141, line: 4432, type: !381)
!2334 = !DILocation(line: 4432, column: 90, scope: !2330)
!2335 = !DILocalVariable(name: "_Left", arg: 1, scope: !2330, file: !141, line: 4432, type: !381)
!2336 = !DILocation(line: 4432, column: 44, scope: !2330)
!2337 = !DILocation(line: 4440, column: 47, scope: !2330)
!2338 = !DILocation(line: 4440, column: 54, scope: !2330)
!2339 = !DILocation(line: 4440, column: 12, scope: !2330)
!2340 = !DILocation(line: 4440, column: 5, scope: !2330)
!2341 = distinct !DISubprogram(name: "basic_string", linkageName: "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z", scope: !142, file: !141, line: 2272, type: !298, scopeLine: 2273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !297, retainedNodes: !53)
!2342 = !DILocalVariable(name: "_Right", arg: 2, scope: !2341, file: !141, line: 2272, type: !301)
!2343 = !DILocation(line: 2272, column: 38, scope: !2341)
!2344 = !DILocalVariable(name: "this", arg: 1, scope: !2341, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!2345 = !DILocation(line: 0, scope: !2341)
!2346 = !DILocation(line: 2273, column: 11, scope: !2341)
!2347 = !DILocation(line: 2273, column: 100, scope: !2341)
!2348 = !DILocation(line: 2273, column: 107, scope: !2341)
!2349 = !DILocation(line: 2273, column: 48, scope: !2341)
!2350 = !DILocalVariable(name: "_Alproxy", scope: !2351, file: !141, line: 2274, type: !2271)
!2351 = distinct !DILexicalBlock(scope: !2341, file: !141, line: 2273, column: 118)
!2352 = !DILocation(line: 2274, column: 16, scope: !2351)
!2353 = !DILocalVariable(name: "_Proxy", scope: !2351, file: !141, line: 2275, type: !2274)
!2354 = !DILocation(line: 2275, column: 37, scope: !2351)
!2355 = !DILocation(line: 2275, column: 54, scope: !2351)
!2356 = !DILocation(line: 2275, column: 62, scope: !2351)
!2357 = !DILocation(line: 2275, column: 44, scope: !2351)
!2358 = !DILocation(line: 2276, column: 32, scope: !2351)
!2359 = !DILocation(line: 2276, column: 9, scope: !2351)
!2360 = !DILocation(line: 2277, column: 16, scope: !2351)
!2361 = !DILocation(line: 2278, column: 5, scope: !2341)
!2362 = !DILocation(line: 2278, column: 5, scope: !2351)
!2363 = distinct !DISubprogram(name: "operator=", linkageName: "??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z", scope: !142, file: !141, line: 2586, type: !440, scopeLine: 2586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !439, retainedNodes: !53)
!2364 = !DILocalVariable(name: "_Right", arg: 2, scope: !2363, file: !141, line: 2586, type: !381)
!2365 = !DILocation(line: 2586, column: 44, scope: !2363)
!2366 = !DILocalVariable(name: "this", arg: 1, scope: !2363, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!2367 = !DILocation(line: 0, scope: !2363)
!2368 = !DILocation(line: 2587, column: 36, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2363, file: !141, line: 2587, column: 13)
!2370 = !DILocation(line: 2587, column: 21, scope: !2369)
!2371 = !DILocation(line: 2587, column: 18, scope: !2369)
!2372 = !DILocation(line: 2587, column: 13, scope: !2363)
!2373 = !DILocation(line: 2588, column: 26, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2369, file: !141, line: 2587, column: 45)
!2375 = !DILocation(line: 2588, column: 13, scope: !2374)
!2376 = !DILocation(line: 2589, column: 9, scope: !2374)
!2377 = !DILocation(line: 2591, column: 9, scope: !2363)
!2378 = distinct !DISubprogram(name: "~basic_string", linkageName: "??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ", scope: !142, file: !141, line: 2722, type: !307, scopeLine: 2722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !474, retainedNodes: !53)
!2379 = !DILocalVariable(name: "this", arg: 1, scope: !2378, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!2380 = !DILocation(line: 0, scope: !2378)
!2381 = !DILocation(line: 2723, column: 9, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !141, line: 2722, column: 30)
!2383 = !DILocation(line: 2730, column: 5, scope: !2382)
!2384 = !DILocation(line: 2730, column: 5, scope: !2378)
!2385 = distinct !DISubprogram(name: "operator==<int, int>", linkageName: "??$?8HH@std@@YA_NAEBV?$optional@H@0@0@Z", scope: !8, file: !43, line: 434, type: !2386, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2389, retainedNodes: !53)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!56, !2388, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !111, size: 64)
!2389 = !{!2390, !2211}
!2390 = !DITemplateTypeParameter(name: "_Ty1", type: !5)
!2391 = !DILocalVariable(name: "_Right", arg: 2, scope: !2385, file: !43, line: 434, type: !2388)
!2392 = !DILocation(line: 434, column: 79, scope: !2385)
!2393 = !DILocalVariable(name: "_Left", arg: 1, scope: !2385, file: !43, line: 434, type: !2388)
!2394 = !DILocation(line: 434, column: 50, scope: !2385)
!2395 = !DILocalVariable(name: "_Left_has_value", scope: !2385, file: !43, line: 435, type: !148)
!2396 = !DILocation(line: 435, column: 16, scope: !2385)
!2397 = !DILocation(line: 435, column: 34, scope: !2385)
!2398 = !DILocation(line: 435, column: 40, scope: !2385)
!2399 = !DILocation(line: 436, column: 12, scope: !2385)
!2400 = !DILocation(line: 436, column: 31, scope: !2385)
!2401 = !DILocation(line: 436, column: 38, scope: !2385)
!2402 = !DILocation(line: 436, column: 28, scope: !2385)
!2403 = !DILocation(line: 436, column: 50, scope: !2385)
!2404 = !DILocation(line: 436, column: 55, scope: !2385)
!2405 = !DILocation(line: 436, column: 71, scope: !2385)
!2406 = !DILocation(line: 436, column: 75, scope: !2385)
!2407 = !DILocation(line: 436, column: 74, scope: !2385)
!2408 = !DILocation(line: 436, column: 85, scope: !2385)
!2409 = !DILocation(line: 436, column: 84, scope: !2385)
!2410 = !DILocation(line: 436, column: 81, scope: !2385)
!2411 = !DILocation(line: 0, scope: !2385)
!2412 = !DILocation(line: 436, column: 5, scope: !2385)
!2413 = distinct !DISubprogram(name: "expectedTest", linkageName: "?expectedTest@expression@test@@YAXXZ", scope: !2, file: !4, line: 43, type: !277, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!2414 = !DILocalVariable(name: "fs", scope: !2413, file: !4, line: 44, type: !2415)
!2415 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "expected<int, int>", scope: !2417, file: !2416, line: 1229, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2418, templateParams: !2530, identifier: ".?AV?$expected@HH@tl@@")
!2416 = !DIFile(filename: "stl\\expected.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!2417 = !DINamespace(name: "tl", scope: null)
!2418 = !{!2419, !2532, !2558, !2581, !2615, !2619, !2624, !2628, !2632, !2635, !2638, !2641, !2645, !2649, !2653, !2656, !2660, !2664, !2665, !2666, !2671, !2675, !2679, !2680, !2681, !2684, !2685, !2688, !2691, !2694}
!2419 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2415, baseType: !2420, extraData: i32 0)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_move_assign_base<int, int, true>", scope: !2421, file: !2416, line: 1024, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2422, templateParams: !2531, identifier: ".?AU?$expected_move_assign_base@HH$00@detail@tl@@")
!2421 = !DINamespace(name: "detail", scope: !2417)
!2422 = !{!2423}
!2423 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2420, baseType: !2424, extraData: i32 0)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_copy_assign_base<int, int, true>", scope: !2421, file: !2416, line: 990, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2425, templateParams: !2531, identifier: ".?AU?$expected_copy_assign_base@HH$00@detail@tl@@")
!2425 = !{!2426}
!2426 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2424, baseType: !2427, extraData: i32 0)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_move_base<int, int, true>", scope: !2421, file: !2416, line: 954, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2428, templateParams: !2531, identifier: ".?AU?$expected_move_base@HH$00@detail@tl@@")
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2427, baseType: !2430, extraData: i32 0)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_copy_base<int, int, true>", scope: !2421, file: !2416, line: 920, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2431, templateParams: !2531, identifier: ".?AU?$expected_copy_base@HH$00@detail@tl@@")
!2431 = !{!2432}
!2432 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2430, baseType: !2433, extraData: i32 0)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_operations_base<int, int>", scope: !2421, file: !2416, line: 663, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2434, templateParams: !2530, identifier: ".?AU?$expected_operations_base@HH@detail@tl@@")
!2434 = !{!2435, !2485, !2491, !2495, !2499, !2502, !2505, !2508, !2511, !2515, !2519, !2523, !2527}
!2435 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2433, baseType: !2436, extraData: i32 0)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_storage_base<int, int, true, true>", scope: !2421, file: !2416, line: 467, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2437, templateParams: !2483, identifier: ".?AU?$expected_storage_base@HH$00$00@detail@tl@@")
!2437 = !{!2438, !2473, !2474, !2478, !2482}
!2438 = !DIDerivedType(tag: DW_TAG_member, scope: !2436, file: !2416, line: 498, baseType: !2439, size: 32)
!2439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2436, file: !2416, line: 498, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2440, identifier: ".?AT<unnamed-type-$S2>@?$expected_storage_base@HH$00$00@detail@tl@@")
!2440 = !{!2441, !2442, !2472}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "m_val", scope: !2439, file: !2416, line: 499, baseType: !5, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "m_unexpect", scope: !2439, file: !2416, line: 500, baseType: !2443, size: 32)
!2443 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unexpected<int>", scope: !2417, file: !2416, line: 132, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2444, templateParams: !2470, identifier: ".?AV?$unexpected@H@tl@@")
!2444 = !{!2445, !2446, !2450, !2453, !2456, !2461, !2464, !2467}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "m_val", scope: !2443, file: !2416, line: 147, baseType: !5, size: 32)
!2446 = !DISubprogram(name: "unexpected", scope: !2443, file: !2416, line: 136, type: !2447, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2450 = !DISubprogram(name: "unexpected", scope: !2443, file: !2416, line: 137, type: !2451, scopeLine: 137, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2449, !119}
!2453 = !DISubprogram(name: "unexpected", scope: !2443, file: !2416, line: 139, type: !2454, scopeLine: 139, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2449, !127}
!2456 = !DISubprogram(name: "value", linkageName: "?value@?$unexpected@H@tl@@QEGBAAEBHXZ", scope: !2443, file: !2416, line: 141, type: !2457, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2457 = !DISubroutineType(flags: DIFlagLValueReference, types: !2458)
!2458 = !{!119, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2461 = !DISubprogram(name: "value", linkageName: "?value@?$unexpected@H@tl@@QEGAAAEAHXZ", scope: !2443, file: !2416, line: 142, type: !2462, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2462 = !DISubroutineType(flags: DIFlagLValueReference, types: !2463)
!2463 = !{!123, !2449}
!2464 = !DISubprogram(name: "value", linkageName: "?value@?$unexpected@H@tl@@QEHAA$$QEAHXZ", scope: !2443, file: !2416, line: 143, type: !2465, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2465 = !DISubroutineType(flags: DIFlagRValueReference, types: !2466)
!2466 = !{!127, !2449}
!2467 = !DISubprogram(name: "value", linkageName: "?value@?$unexpected@H@tl@@QEHBA$$QEBHXZ", scope: !2443, file: !2416, line: 144, type: !2468, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2468 = !DISubroutineType(flags: DIFlagRValueReference, types: !2469)
!2469 = !{!131, !2459}
!2470 = !{!2471}
!2471 = !DITemplateTypeParameter(name: "E", type: !5)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "m_no_init", scope: !2439, file: !2416, line: 501, baseType: !67, size: 8)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "m_has_val", scope: !2436, file: !2416, line: 503, baseType: !56, size: 8, offset: 32)
!2474 = !DISubprogram(name: "expected_storage_base", scope: !2436, file: !2416, line: 468, type: !2475, scopeLine: 468, flags: DIFlagPrototyped, spFlags: 0)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2478 = !DISubprogram(name: "expected_storage_base", scope: !2436, file: !2416, line: 469, type: !2479, scopeLine: 469, flags: DIFlagPrototyped, spFlags: 0)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2477, !2481}
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "no_init_t", scope: !2421, file: !2416, line: 408, size: 8, flags: DIFlagTypePassByValue, elements: !53, identifier: ".?AUno_init_t@detail@tl@@")
!2482 = !DISubprogram(name: "~expected_storage_base", scope: !2436, file: !2416, line: 497, type: !2475, scopeLine: 497, flags: DIFlagPrototyped, spFlags: 0)
!2483 = !{!2484, !2471, !81, !81}
!2484 = !DITemplateTypeParameter(name: "T", type: !5)
!2485 = !DISubprogram(name: "assign", linkageName: "?assign@?$expected_operations_base@HH@detail@tl@@QEAAXAEBU123@@Z", scope: !2433, file: !2416, line: 791, type: !2486, scopeLine: 791, flags: DIFlagPrototyped, spFlags: 0)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2489 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2491 = !DISubprogram(name: "assign", linkageName: "?assign@?$expected_operations_base@HH@detail@tl@@QEAAX$$QEAU123@@Z", scope: !2433, file: !2416, line: 801, type: !2492, scopeLine: 801, flags: DIFlagPrototyped, spFlags: 0)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2488, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2433, size: 64)
!2495 = !DISubprogram(name: "has_value", linkageName: "?has_value@?$expected_operations_base@HH@detail@tl@@QEBA_NXZ", scope: !2433, file: !2416, line: 831, type: !2496, scopeLine: 831, flags: DIFlagPrototyped, spFlags: 0)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!56, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2499 = !DISubprogram(name: "get", linkageName: "?get@?$expected_operations_base@HH@detail@tl@@QEGAAAEAHXZ", scope: !2433, file: !2416, line: 833, type: !2500, scopeLine: 833, flags: DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2500 = !DISubroutineType(flags: DIFlagLValueReference, types: !2501)
!2501 = !{!123, !2488}
!2502 = !DISubprogram(name: "get", linkageName: "?get@?$expected_operations_base@HH@detail@tl@@QEGBAAEBHXZ", scope: !2433, file: !2416, line: 834, type: !2503, scopeLine: 834, flags: DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2503 = !DISubroutineType(flags: DIFlagLValueReference, types: !2504)
!2504 = !{!119, !2498}
!2505 = !DISubprogram(name: "get", linkageName: "?get@?$expected_operations_base@HH@detail@tl@@QEHAA$$QEAHXZ", scope: !2433, file: !2416, line: 835, type: !2506, scopeLine: 835, flags: DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2506 = !DISubroutineType(flags: DIFlagRValueReference, types: !2507)
!2507 = !{!127, !2488}
!2508 = !DISubprogram(name: "get", linkageName: "?get@?$expected_operations_base@HH@detail@tl@@QEHBA$$QEBHXZ", scope: !2433, file: !2416, line: 837, type: !2509, scopeLine: 837, flags: DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2509 = !DISubroutineType(flags: DIFlagRValueReference, types: !2510)
!2510 = !{!131, !2498}
!2511 = !DISubprogram(name: "geterr", linkageName: "?geterr@?$expected_operations_base@HH@detail@tl@@QEGAAAEAV?$unexpected@H@3@XZ", scope: !2433, file: !2416, line: 840, type: !2512, scopeLine: 840, flags: DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2512 = !DISubroutineType(flags: DIFlagLValueReference, types: !2513)
!2513 = !{!2514, !2488}
!2514 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2443, size: 64)
!2515 = !DISubprogram(name: "geterr", linkageName: "?geterr@?$expected_operations_base@HH@detail@tl@@QEGBAAEBV?$unexpected@H@3@XZ", scope: !2433, file: !2416, line: 843, type: !2516, scopeLine: 843, flags: DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2516 = !DISubroutineType(flags: DIFlagLValueReference, types: !2517)
!2517 = !{!2518, !2498}
!2518 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2460, size: 64)
!2519 = !DISubprogram(name: "geterr", linkageName: "?geterr@?$expected_operations_base@HH@detail@tl@@QEHAA$$QEAV?$unexpected@H@3@XZ", scope: !2433, file: !2416, line: 844, type: !2520, scopeLine: 844, flags: DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2520 = !DISubroutineType(flags: DIFlagRValueReference, types: !2521)
!2521 = !{!2522, !2488}
!2522 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2443, size: 64)
!2523 = !DISubprogram(name: "geterr", linkageName: "?geterr@?$expected_operations_base@HH@detail@tl@@QEHBA$$QEBV?$unexpected@H@3@XZ", scope: !2433, file: !2416, line: 848, type: !2524, scopeLine: 848, flags: DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2524 = !DISubroutineType(flags: DIFlagRValueReference, types: !2525)
!2525 = !{!2526, !2498}
!2526 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2460, size: 64)
!2527 = !DISubprogram(name: "destroy_val", linkageName: "?destroy_val@?$expected_operations_base@HH@detail@tl@@QEAAXXZ", scope: !2433, file: !2416, line: 853, type: !2528, scopeLine: 853, flags: DIFlagPrototyped, spFlags: 0)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2488}
!2530 = !{!2484, !2471}
!2531 = !{!2484, !2471, !81}
!2532 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2415, baseType: !2533, offset: 64, extraData: i32 0)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_delete_ctor_base<int, int, true, true>", scope: !2421, file: !2416, line: 1060, size: 8, flags: DIFlagTypePassByValue, elements: !2534, templateParams: !2555, identifier: ".?AU?$expected_delete_ctor_base@HH$00$00@detail@tl@@")
!2534 = !{!2535, !2539, !2544, !2548, !2552}
!2535 = !DISubprogram(name: "expected_delete_ctor_base", scope: !2533, file: !2416, line: 1061, type: !2536, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: 0)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2539 = !DISubprogram(name: "expected_delete_ctor_base", scope: !2533, file: !2416, line: 1062, type: !2540, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: 0)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !2538, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2544 = !DISubprogram(name: "expected_delete_ctor_base", scope: !2533, file: !2416, line: 1063, type: !2545, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: 0)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2538, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2533, size: 64)
!2548 = !DISubprogram(name: "operator=", linkageName: "??4?$expected_delete_ctor_base@HH$00$00@detail@tl@@QEAAAEAU012@AEBU012@@Z", scope: !2533, file: !2416, line: 1065, type: !2549, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: 0)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!2551, !2538, !2542}
!2551 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2533, size: 64)
!2552 = !DISubprogram(name: "operator=", linkageName: "??4?$expected_delete_ctor_base@HH$00$00@detail@tl@@QEAAAEAU012@$$QEAU012@@Z", scope: !2533, file: !2416, line: 1067, type: !2553, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: 0)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!2551, !2538, !2547}
!2555 = !{!2484, !2471, !2556, !2557}
!2556 = !DITemplateValueParameter(name: "EnableCopy", type: !56, value: i1 true)
!2557 = !DITemplateValueParameter(name: "EnableMove", type: !56, value: i1 true)
!2558 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2415, baseType: !2559, offset: 72, extraData: i32 0)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_delete_assign_base<int, int, true, true>", scope: !2421, file: !2416, line: 1115, size: 8, flags: DIFlagTypePassByValue, elements: !2560, templateParams: !2555, identifier: ".?AU?$expected_delete_assign_base@HH$00$00@detail@tl@@")
!2560 = !{!2561, !2565, !2570, !2574, !2578}
!2561 = !DISubprogram(name: "expected_delete_assign_base", scope: !2559, file: !2416, line: 1116, type: !2562, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: 0)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2564}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2565 = !DISubprogram(name: "expected_delete_assign_base", scope: !2559, file: !2416, line: 1117, type: !2566, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: 0)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{null, !2564, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!2570 = !DISubprogram(name: "expected_delete_assign_base", scope: !2559, file: !2416, line: 1118, type: !2571, scopeLine: 1118, flags: DIFlagPrototyped, spFlags: 0)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !2564, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2559, size: 64)
!2574 = !DISubprogram(name: "operator=", linkageName: "??4?$expected_delete_assign_base@HH$00$00@detail@tl@@QEAAAEAU012@AEBU012@@Z", scope: !2559, file: !2416, line: 1121, type: !2575, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: 0)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!2577, !2564, !2568}
!2577 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2559, size: 64)
!2578 = !DISubprogram(name: "operator=", linkageName: "??4?$expected_delete_assign_base@HH$00$00@detail@tl@@QEAAAEAU012@$$QEAU012@@Z", scope: !2559, file: !2416, line: 1123, type: !2579, scopeLine: 1123, flags: DIFlagPrototyped, spFlags: 0)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!2577, !2564, !2573}
!2581 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2415, baseType: !2582, offset: 80, extraData: i32 0)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expected_default_ctor_base<int, int, true>", scope: !2421, file: !2416, line: 1174, size: 8, flags: DIFlagTypePassByValue, elements: !2583, templateParams: !2613, identifier: ".?AU?$expected_default_ctor_base@HH$00@detail@tl@@")
!2583 = !{!2584, !2588, !2593, !2597, !2601, !2604}
!2584 = !DISubprogram(name: "expected_default_ctor_base", scope: !2582, file: !2416, line: 1175, type: !2585, scopeLine: 1175, flags: DIFlagPrototyped, spFlags: 0)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2588 = !DISubprogram(name: "expected_default_ctor_base", scope: !2582, file: !2416, line: 1176, type: !2589, scopeLine: 1176, flags: DIFlagPrototyped, spFlags: 0)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !2587, !2591}
!2591 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2582)
!2593 = !DISubprogram(name: "expected_default_ctor_base", scope: !2582, file: !2416, line: 1178, type: !2594, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: 0)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !2587, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2582, size: 64)
!2597 = !DISubprogram(name: "operator=", linkageName: "??4?$expected_default_ctor_base@HH$00@detail@tl@@QEAAAEAU012@AEBU012@@Z", scope: !2582, file: !2416, line: 1181, type: !2598, scopeLine: 1181, flags: DIFlagPrototyped, spFlags: 0)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!2600, !2587, !2591}
!2600 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2582, size: 64)
!2601 = !DISubprogram(name: "operator=", linkageName: "??4?$expected_default_ctor_base@HH$00@detail@tl@@QEAAAEAU012@$$QEAU012@@Z", scope: !2582, file: !2416, line: 1183, type: !2602, scopeLine: 1183, flags: DIFlagPrototyped, spFlags: 0)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!2600, !2587, !2596}
!2604 = !DISubprogram(name: "expected_default_ctor_base", scope: !2582, file: !2416, line: 1185, type: !2605, scopeLine: 1185, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{null, !2587, !2607}
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_constructor_tag", scope: !2421, file: !2416, line: 1164, size: 8, flags: DIFlagTypePassByValue, elements: !2608, identifier: ".?AUdefault_constructor_tag@detail@tl@@")
!2608 = !{!2609}
!2609 = !DISubprogram(name: "default_constructor_tag", scope: !2607, file: !2416, line: 1165, type: !2610, scopeLine: 1165, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2613 = !{!2484, !2471, !2614}
!2614 = !DITemplateValueParameter(name: "Enable", type: !56, value: i1 true)
!2615 = !DISubprogram(name: "valptr", linkageName: "?valptr@?$expected@HH@tl@@AEAAPEAHXZ", scope: !2415, file: !2416, line: 1242, type: !2616, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: 0)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!115, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2619 = !DISubprogram(name: "valptr", linkageName: "?valptr@?$expected@HH@tl@@AEBAPEBHXZ", scope: !2415, file: !2416, line: 1243, type: !2620, scopeLine: 1243, flags: DIFlagPrototyped, spFlags: 0)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!108, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2415)
!2624 = !DISubprogram(name: "errptr", linkageName: "?errptr@?$expected@HH@tl@@AEAAPEAV?$unexpected@H@2@XZ", scope: !2415, file: !2416, line: 1244, type: !2625, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: 0)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!2627, !2618}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2628 = !DISubprogram(name: "errptr", linkageName: "?errptr@?$expected@HH@tl@@AEBAPEBV?$unexpected@H@2@XZ", scope: !2415, file: !2416, line: 1245, type: !2629, scopeLine: 1245, flags: DIFlagPrototyped, spFlags: 0)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!2631, !2622}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2632 = !DISubprogram(name: "err", linkageName: "?err@?$expected@HH@tl@@AEAAAEAV?$unexpected@H@2@XZ", scope: !2415, file: !2416, line: 1252, type: !2633, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: 0)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!2514, !2618}
!2635 = !DISubprogram(name: "err", linkageName: "?err@?$expected@HH@tl@@AEBAAEBV?$unexpected@H@2@XZ", scope: !2415, file: !2416, line: 1259, type: !2636, scopeLine: 1259, flags: DIFlagPrototyped, spFlags: 0)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!2518, !2622}
!2638 = !DISubprogram(name: "expected", scope: !2415, file: !2416, line: 1461, type: !2639, scopeLine: 1461, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2618}
!2641 = !DISubprogram(name: "expected", scope: !2415, file: !2416, line: 1462, type: !2642, scopeLine: 1462, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{null, !2618, !2644}
!2644 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2623, size: 64)
!2645 = !DISubprogram(name: "expected", scope: !2415, file: !2416, line: 1463, type: !2646, scopeLine: 1463, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2618, !2648}
!2648 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2415, size: 64)
!2649 = !DISubprogram(name: "operator=", linkageName: "??4?$expected@HH@tl@@QEAAAEAV01@AEBV01@@Z", scope: !2415, file: !2416, line: 1464, type: !2650, scopeLine: 1464, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!2652, !2618, !2644}
!2652 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2415, size: 64)
!2653 = !DISubprogram(name: "operator=", linkageName: "??4?$expected@HH@tl@@QEAAAEAV01@$$QEAV01@@Z", scope: !2415, file: !2416, line: 1465, type: !2654, scopeLine: 1465, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!2652, !2618, !2648}
!2656 = !DISubprogram(name: "swap_where_both_have_value", linkageName: "?swap_where_both_have_value@?$expected@HH@tl@@AEAAXAEAV12@U?$integral_constant@_N$00@std@@@Z", scope: !2415, file: !2416, line: 1786, type: !2657, scopeLine: 1786, flags: DIFlagPrototyped, spFlags: 0)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !2618, !2652, !2659}
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_is_void", file: !2416, line: 1779, baseType: !406)
!2660 = !DISubprogram(name: "swap_where_both_have_value", linkageName: "?swap_where_both_have_value@?$expected@HH@tl@@AEAAXAEAV12@U?$integral_constant@_N$0A@@std@@@Z", scope: !2415, file: !2416, line: 1790, type: !2661, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: 0)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !2618, !2652, !2663}
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_is_not_void", file: !2416, line: 1780, baseType: !425)
!2664 = !DISubprogram(name: "swap_where_only_one_has_value", linkageName: "?swap_where_only_one_has_value@?$expected@HH@tl@@AEAAXAEAV12@U?$integral_constant@_N$00@std@@@Z", scope: !2415, file: !2416, line: 1795, type: !2657, scopeLine: 1795, flags: DIFlagPrototyped, spFlags: 0)
!2665 = !DISubprogram(name: "swap_where_only_one_has_value", linkageName: "?swap_where_only_one_has_value@?$expected@HH@tl@@AEAAXAEAV12@U?$integral_constant@_N$0A@@std@@@Z", scope: !2415, file: !2416, line: 1802, type: !2661, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: 0)
!2666 = !DISubprogram(name: "swap_where_only_one_has_value_and_t_is_not_void", linkageName: "?swap_where_only_one_has_value_and_t_is_not_void@?$expected@HH@tl@@AEAAXAEAV12@U?$integral_constant@_N$00@std@@1@Z", scope: !2415, file: !2416, line: 1808, type: !2667, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: 0)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !2618, !2652, !2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_is_nothrow_move_constructible", file: !2416, line: 1781, baseType: !406)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "e_is_nothrow_move_constructible", file: !2416, line: 1783, baseType: !406)
!2671 = !DISubprogram(name: "swap_where_only_one_has_value_and_t_is_not_void", linkageName: "?swap_where_only_one_has_value_and_t_is_not_void@?$expected@HH@tl@@AEAAXAEAV12@U?$integral_constant@_N$00@std@@U?$integral_constant@_N$0A@@4@@Z", scope: !2415, file: !2416, line: 1819, type: !2672, scopeLine: 1819, flags: DIFlagPrototyped, spFlags: 0)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !2618, !2652, !2669, !2674}
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_constructing_e_can_throw", file: !2416, line: 1784, baseType: !425)
!2675 = !DISubprogram(name: "swap_where_only_one_has_value_and_t_is_not_void", linkageName: "?swap_where_only_one_has_value_and_t_is_not_void@?$expected@HH@tl@@AEAAXAEAV12@U?$integral_constant@_N$0A@@std@@U?$integral_constant@_N$00@4@@Z", scope: !2415, file: !2416, line: 1843, type: !2676, scopeLine: 1843, flags: DIFlagPrototyped, spFlags: 0)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2618, !2652, !2678, !2669}
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_constructing_t_can_throw", file: !2416, line: 1782, baseType: !425)
!2679 = !DISubprogram(name: "operator->", linkageName: "??C?$expected@HH@tl@@QEBAPEBHXZ", scope: !2415, file: !2416, line: 1893, type: !2620, scopeLine: 1893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2680 = !DISubprogram(name: "operator->", linkageName: "??C?$expected@HH@tl@@QEAAPEAHXZ", scope: !2415, file: !2416, line: 1894, type: !2616, scopeLine: 1894, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2681 = !DISubprogram(name: "has_value", linkageName: "?has_value@?$expected@HH@tl@@QEBA_NXZ", scope: !2415, file: !2416, line: 1917, type: !2682, scopeLine: 1917, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!56, !2622}
!2684 = !DISubprogram(name: "operator bool", linkageName: "??B?$expected@HH@tl@@QEBA_NXZ", scope: !2415, file: !2416, line: 1918, type: !2682, scopeLine: 1918, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2685 = !DISubprogram(name: "error", linkageName: "?error@?$expected@HH@tl@@QEGBAAEBHXZ", scope: !2415, file: !2416, line: 1949, type: !2686, scopeLine: 1949, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2686 = !DISubroutineType(flags: DIFlagLValueReference, types: !2687)
!2687 = !{!119, !2622}
!2688 = !DISubprogram(name: "error", linkageName: "?error@?$expected@HH@tl@@QEGAAAEAHXZ", scope: !2415, file: !2416, line: 1950, type: !2689, scopeLine: 1950, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: 0)
!2689 = !DISubroutineType(flags: DIFlagLValueReference, types: !2690)
!2690 = !{!123, !2618}
!2691 = !DISubprogram(name: "error", linkageName: "?error@?$expected@HH@tl@@QEHBA$$QEBHXZ", scope: !2415, file: !2416, line: 1951, type: !2692, scopeLine: 1951, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2692 = !DISubroutineType(flags: DIFlagRValueReference, types: !2693)
!2693 = !{!131, !2622}
!2694 = !DISubprogram(name: "error", linkageName: "?error@?$expected@HH@tl@@QEHAA$$QEAHXZ", scope: !2415, file: !2416, line: 1952, type: !2695, scopeLine: 1952, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: 0)
!2695 = !DISubroutineType(flags: DIFlagRValueReference, types: !2696)
!2696 = !{!127, !2618}
!2697 = !DILocation(line: 44, column: 26, scope: !2413)
!2698 = !DILocalVariable(name: "a", scope: !2413, file: !4, line: 45, type: !2415)
!2699 = !DILocation(line: 45, column: 26, scope: !2413)
!2700 = !DILocalVariable(name: "expr", scope: !2413, file: !4, line: 46, type: !140)
!2701 = !DILocation(line: 46, column: 15, scope: !2413)
!2702 = !DILocation(line: 46, column: 22, scope: !2413)
!2703 = !DILocation(line: 46, column: 3, scope: !2413)
!2704 = !DILocation(line: 60, column: 3, scope: !2413)
!2705 = distinct !{!2705, !2704, !2704}
!2706 = !DILocation(line: 61, column: 3, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2413, file: !4, line: 61, column: 3)
!2708 = !DILocation(line: 61, column: 3, scope: !2413)
!2709 = !DILocation(line: 61, column: 3, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !4, line: 61, column: 3)
!2711 = !DILocalVariable(name: "s", scope: !2413, file: !4, line: 62, type: !2091)
!2712 = !DILocation(line: 62, column: 23, scope: !2413)
!2713 = !DILocation(line: 62, column: 3, scope: !2413)
!2714 = !DILocalVariable(name: "n", scope: !2413, file: !4, line: 63, type: !2091)
!2715 = !DILocation(line: 63, column: 23, scope: !2413)
!2716 = !DILocation(line: 63, column: 27, scope: !2413)
!2717 = !DILocation(line: 63, column: 3, scope: !2413)
!2718 = !DILocation(line: 64, column: 5, scope: !2413)
!2719 = !DILocation(line: 65, column: 5, scope: !2413)
!2720 = !DILocalVariable(name: "expr2", scope: !2413, file: !4, line: 66, type: !140)
!2721 = !DILocation(line: 66, column: 15, scope: !2413)
!2722 = !DILocation(line: 66, column: 23, scope: !2413)
!2723 = !DILocation(line: 66, column: 3, scope: !2413)
!2724 = !DILocation(line: 70, column: 3, scope: !2413)
!2725 = distinct !{!2725, !2724, !2724}
!2726 = !DILocation(line: 71, column: 3, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2413, file: !4, line: 71, column: 3)
!2728 = !DILocation(line: 71, column: 3, scope: !2413)
!2729 = !DILocation(line: 71, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !4, line: 71, column: 3)
!2731 = !DILocation(line: 72, column: 1, scope: !2413)
!2732 = distinct !DISubprogram(name: "expected", linkageName: "??0?$expected@HH@tl@@QEAA@XZ", scope: !2415, file: !2416, line: 1461, type: !2639, scopeLine: 1461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2638, retainedNodes: !53)
!2733 = !DILocalVariable(name: "this", arg: 1, scope: !2732, type: !2734, flags: DIFlagArtificial | DIFlagObjectPointer)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2735 = !DILocation(line: 0, scope: !2732)
!2736 = !DILocation(line: 1461, column: 38, scope: !2732)
!2737 = !DILocation(line: 1461, column: 19, scope: !2732)
!2738 = distinct !DISubprogram(name: "error", linkageName: "?error@?$expected@HH@tl@@QEGAAAEAHXZ", scope: !2415, file: !2416, line: 1950, type: !2689, scopeLine: 1950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2688, retainedNodes: !53)
!2739 = !DILocalVariable(name: "this", arg: 1, scope: !2738, type: !2734, flags: DIFlagArtificial | DIFlagObjectPointer)
!2740 = !DILocation(line: 0, scope: !2738)
!2741 = !DILocation(line: 1950, column: 55, scope: !2738)
!2742 = !DILocation(line: 1950, column: 61, scope: !2738)
!2743 = !DILocation(line: 1950, column: 48, scope: !2738)
!2744 = distinct !DISubprogram(name: "returnShared", linkageName: "?returnShared@expression@test@@YA?AV?$shared_ptr@H@std@@XZ", scope: !2, file: !4, line: 74, type: !2745, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!2747}
!2747 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "shared_ptr<int>", scope: !8, file: !2073, line: 1278, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2748, templateParams: !72, identifier: ".?AV?$shared_ptr@H@std@@")
!2748 = !{!2749, !2831, !2835, !2838, !2843, !2847, !2848, !2852, !2855, !2858, !2859, !2863, !2864}
!2749 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2747, baseType: !2750, flags: DIFlagPublic, extraData: i32 0)
!2750 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Ptr_base<int>", scope: !8, file: !2073, line: 719, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2751, templateParams: !72, identifier: ".?AV?$_Ptr_base@H@std@@")
!2751 = !{!2752, !2758, !2801, !2806, !2811, !2815, !2818, !2821, !2822, !2825, !2826, !2829, !2830}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_Ptr", scope: !2750, file: !2073, line: 839, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "element_type", scope: !2750, file: !2073, line: 721, baseType: !2755)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_extent_t<int>", scope: !8, file: !2156, line: 245, baseType: !2756)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2757, file: !2156, line: 231, baseType: !5)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_extent<int>", scope: !8, file: !2156, line: 230, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !72, identifier: ".?AU?$remove_extent@H@std@@")
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_Rep", scope: !2750, file: !2073, line: 840, baseType: !2759, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Ref_count_base", scope: !8, file: !2073, line: 520, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2761, vtableHolder: !2760, identifier: ".?AV_Ref_count_base@std@@")
!2761 = !{!2762, !2765, !2768, !2769, !2773, !2774, !2775, !2780, !2784, !2785, !2788, !2789, !2790, !2791, !2792, !2796}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$_Ref_count_base", scope: !2073, file: !2073, baseType: !2763, size: 64, flags: DIFlagArtificial)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !1109, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_Uses", scope: !2760, file: !2073, line: 533, baseType: !2766, size: 32, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_counter_t", scope: !8, file: !2767, line: 97, baseType: !1133)
!2767 = !DIFile(filename: "stl\\xatomic.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_Weaks", scope: !2760, file: !2073, line: 534, baseType: !2766, size: 32, offset: 96)
!2769 = !DISubprogram(name: "_Destroy", linkageName: "?_Destroy@_Ref_count_base@std@@EEAAXXZ", scope: !2760, file: !2073, line: 529, type: !2770, scopeLine: 529, containingType: !2760, virtualIndex: 0, flags: DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagPureVirtual)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{null, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2773 = !DISubprogram(name: "_Delete_this", linkageName: "?_Delete_this@_Ref_count_base@std@@EEAAXXZ", scope: !2760, file: !2073, line: 530, type: !2770, scopeLine: 530, containingType: !2760, virtualIndex: 1, flags: DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagPureVirtual)
!2774 = !DISubprogram(name: "_Ref_count_base", scope: !2760, file: !2073, line: 537, type: !2770, scopeLine: 537, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2775 = !DISubprogram(name: "_Ref_count_base", scope: !2760, file: !2073, line: 540, type: !2776, scopeLine: 540, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2772, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2780 = !DISubprogram(name: "operator=", linkageName: "??4_Ref_count_base@std@@QEAAAEAV01@AEBV01@@Z", scope: !2760, file: !2073, line: 541, type: !2781, scopeLine: 541, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!2783, !2772, !2778}
!2783 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2760, size: 64)
!2784 = !DISubprogram(name: "~_Ref_count_base", scope: !2760, file: !2073, line: 543, type: !2770, scopeLine: 543, containingType: !2760, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagVirtual)
!2785 = !DISubprogram(name: "_Incref_nz", linkageName: "?_Incref_nz@_Ref_count_base@std@@QEAA_NXZ", scope: !2760, file: !2073, line: 545, type: !2786, scopeLine: 545, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!56, !2772}
!2788 = !DISubprogram(name: "_Incref", linkageName: "?_Incref@_Ref_count_base@std@@QEAAXXZ", scope: !2760, file: !2073, line: 563, type: !2770, scopeLine: 563, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2789 = !DISubprogram(name: "_Incwref", linkageName: "?_Incwref@_Ref_count_base@std@@QEAAXXZ", scope: !2760, file: !2073, line: 567, type: !2770, scopeLine: 567, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2790 = !DISubprogram(name: "_Decref", linkageName: "?_Decref@_Ref_count_base@std@@QEAAXXZ", scope: !2760, file: !2073, line: 571, type: !2770, scopeLine: 571, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2791 = !DISubprogram(name: "_Decwref", linkageName: "?_Decwref@_Ref_count_base@std@@QEAAXXZ", scope: !2760, file: !2073, line: 578, type: !2770, scopeLine: 578, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2792 = !DISubprogram(name: "_Use_count", linkageName: "?_Use_count@_Ref_count_base@std@@QEBAJXZ", scope: !2760, file: !2073, line: 584, type: !2793, scopeLine: 584, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!986, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2796 = !DISubprogram(name: "_Get_deleter", linkageName: "?_Get_deleter@_Ref_count_base@std@@UEBAPEAXAEBVtype_info@@@Z", scope: !2760, file: !2073, line: 586, type: !2797, scopeLine: 586, containingType: !2760, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagVirtual)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!968, !2795, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!2801 = !DISubprogram(name: "use_count", linkageName: "?use_count@?$_Ptr_base@H@std@@QEBAJXZ", scope: !2750, file: !2073, line: 723, type: !2802, scopeLine: 723, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!986, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2750)
!2806 = !DISubprogram(name: "_Ptr_base", scope: !2750, file: !2073, line: 733, type: !2807, scopeLine: 733, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2810 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2805, size: 64)
!2811 = !DISubprogram(name: "operator=", linkageName: "??4?$_Ptr_base@H@std@@QEAAAEAV01@AEBV01@@Z", scope: !2750, file: !2073, line: 734, type: !2812, scopeLine: 734, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2814, !2809, !2810}
!2814 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2750, size: 64)
!2815 = !DISubprogram(name: "get", linkageName: "?get@?$_Ptr_base@H@std@@IEBAPEAHXZ", scope: !2750, file: !2073, line: 737, type: !2816, scopeLine: 737, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!2753, !2804}
!2818 = !DISubprogram(name: "_Ptr_base", scope: !2750, file: !2073, line: 739, type: !2819, scopeLine: 739, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2809}
!2821 = !DISubprogram(name: "~_Ptr_base", scope: !2750, file: !2073, line: 741, type: !2819, scopeLine: 741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2822 = !DISubprogram(name: "_Incref", linkageName: "?_Incref@?$_Ptr_base@H@std@@IEBAXXZ", scope: !2750, file: !2073, line: 797, type: !2823, scopeLine: 797, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2804}
!2825 = !DISubprogram(name: "_Decref", linkageName: "?_Decref@?$_Ptr_base@H@std@@IEAAXXZ", scope: !2750, file: !2073, line: 803, type: !2819, scopeLine: 803, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2826 = !DISubprogram(name: "_Swap", linkageName: "?_Swap@?$_Ptr_base@H@std@@IEAAXAEAV12@@Z", scope: !2750, file: !2073, line: 809, type: !2827, scopeLine: 809, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !2809, !2814}
!2829 = !DISubprogram(name: "_Incwref", linkageName: "?_Incwref@?$_Ptr_base@H@std@@IEBAXXZ", scope: !2750, file: !2073, line: 826, type: !2823, scopeLine: 826, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2830 = !DISubprogram(name: "_Decwref", linkageName: "?_Decwref@?$_Ptr_base@H@std@@IEAAXXZ", scope: !2750, file: !2073, line: 832, type: !2819, scopeLine: 832, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!2831 = !DISubprogram(name: "shared_ptr", scope: !2747, file: !2073, line: 1290, type: !2832, scopeLine: 1290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2835 = !DISubprogram(name: "shared_ptr", scope: !2747, file: !2073, line: 1292, type: !2836, scopeLine: 1292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2834, !996}
!2838 = !DISubprogram(name: "shared_ptr", scope: !2747, file: !2073, line: 1365, type: !2839, scopeLine: 1365, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2834, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2843 = !DISubprogram(name: "shared_ptr", scope: !2747, file: !2073, line: 1378, type: !2844, scopeLine: 1378, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2834, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2747, size: 64)
!2847 = !DISubprogram(name: "~shared_ptr", scope: !2747, file: !2073, line: 1436, type: !2832, scopeLine: 1436, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2848 = !DISubprogram(name: "operator=", linkageName: "??4?$shared_ptr@H@std@@QEAAAEAV01@AEBV01@@Z", scope: !2747, file: !2073, line: 1440, type: !2849, scopeLine: 1440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!2851, !2834, !2841}
!2851 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2747, size: 64)
!2852 = !DISubprogram(name: "operator=", linkageName: "??4?$shared_ptr@H@std@@QEAAAEAV01@$$QEAV01@@Z", scope: !2747, file: !2073, line: 1452, type: !2853, scopeLine: 1452, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!2851, !2834, !2846}
!2855 = !DISubprogram(name: "swap", linkageName: "?swap@?$shared_ptr@H@std@@QEAAXAEAV12@@Z", scope: !2747, file: !2073, line: 1477, type: !2856, scopeLine: 1477, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2834, !2851}
!2858 = !DISubprogram(name: "reset", linkageName: "?reset@?$shared_ptr@H@std@@QEAAXXZ", scope: !2747, file: !2073, line: 1480, type: !2832, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2859 = !DISubprogram(name: "unique", linkageName: "?unique@?$shared_ptr@H@std@@QEBA_NXZ", scope: !2747, file: !2073, line: 1521, type: !2860, scopeLine: 1521, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!56, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2863 = !DISubprogram(name: "operator bool", linkageName: "??B?$shared_ptr@H@std@@QEBA_NXZ", scope: !2747, file: !2073, line: 1527, type: !2860, scopeLine: 1527, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!2864 = !DISubprogram(name: "_Set_ptr_rep_and_enable_shared", linkageName: "?_Set_ptr_rep_and_enable_shared@?$shared_ptr@H@std@@AEAAX$$TQEAV_Ref_count_base@2@@Z", scope: !2747, file: !2073, line: 1645, type: !2865, scopeLine: 1645, flags: DIFlagPrototyped, spFlags: 0)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2834, !996, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2759)
!2868 = !DILocation(line: 74, column: 68, scope: !2744)
!2869 = !DILocation(line: 74, column: 46, scope: !2744)
!2870 = !DILocation(line: 74, column: 39, scope: !2744)
!2871 = distinct !DISubprogram(name: "make_shared<int, int>", linkageName: "??$make_shared@HH@std@@YA?AV?$shared_ptr@H@0@$$QEAH@Z", scope: !8, file: !2073, line: 2609, type: !2872, scopeLine: 2609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2874, retainedNodes: !53)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!2747, !127}
!2874 = !{!73, !2875}
!2875 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !2876)
!2876 = !{!2877}
!2877 = !DITemplateTypeParameter(type: !5)
!2878 = !DILocalVariable(name: "_Args", arg: 1, scope: !2871, file: !2073, line: 2609, type: !127)
!2879 = !DILocation(line: 2609, column: 30, scope: !2871)
!2880 = !DILocalVariable(name: "_Rx", scope: !2871, file: !2073, line: 2610, type: !2881)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2882)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Ref_count_obj2<int>", scope: !8, file: !2073, line: 1893, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2884, vtableHolder: !2760, templateParams: !72, identifier: ".?AV?$_Ref_count_obj2@H@std@@")
!2884 = !{!2885, !2886, !2893, !2897, !2898}
!2885 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2883, baseType: !2760, flags: DIFlagPublic, extraData: i32 0)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !2883, file: !2073, line: 1911, baseType: !2887, size: 32, offset: 128, flags: DIFlagPublic)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2883, file: !2073, line: 1911, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !2888, identifier: ".?AT<unnamed-type-$S5>@?$_Ref_count_obj2@H@std@@")
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_Storage", scope: !2887, file: !2073, line: 1912, baseType: !2890, size: 32)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Wrap<int>", scope: !8, file: !157, line: 1968, size: 32, flags: DIFlagTypePassByValue, elements: !2891, templateParams: !72, identifier: ".?AU?$_Wrap@H@std@@")
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_Value", scope: !2890, file: !157, line: 1969, baseType: !5, size: 32)
!2893 = !DISubprogram(name: "~_Ref_count_obj2", scope: !2883, file: !2073, line: 1902, type: !2894, scopeLine: 1902, containingType: !2883, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2897 = !DISubprogram(name: "_Destroy", linkageName: "?_Destroy@?$_Ref_count_obj2@H@std@@EEAAXXZ", scope: !2883, file: !2073, line: 1916, type: !2894, scopeLine: 1916, containingType: !2883, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2898 = !DISubprogram(name: "_Delete_this", linkageName: "?_Delete_this@?$_Ref_count_obj2@H@std@@EEAAXXZ", scope: !2883, file: !2073, line: 1920, type: !2894, scopeLine: 1920, containingType: !2883, virtualIndex: 1, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2899 = !DILocation(line: 2610, column: 14, scope: !2871)
!2900 = !DILocation(line: 2610, column: 20, scope: !2871)
!2901 = !DILocation(line: 2610, column: 66, scope: !2871)
!2902 = !DILocation(line: 2610, column: 45, scope: !2871)
!2903 = !DILocation(line: 2610, column: 24, scope: !2871)
!2904 = !DILocation(line: 2611, column: 3, scope: !2871)
!2905 = !DILocalVariable(name: "_Ret", scope: !2871, file: !2073, line: 2611, type: !2747)
!2906 = !DILocation(line: 2611, column: 19, scope: !2871)
!2907 = !DILocation(line: 2613, column: 39, scope: !2871)
!2908 = !DILocation(line: 2612, column: 54, scope: !2871)
!2909 = !DILocation(line: 2612, column: 59, scope: !2871)
!2910 = !DILocation(line: 2612, column: 68, scope: !2871)
!2911 = !DILocation(line: 2612, column: 39, scope: !2871)
!2912 = !DILocation(line: 2612, column: 8, scope: !2871)
!2913 = !DILocation(line: 2614, column: 3, scope: !2871)
!2914 = !DILocation(line: 2615, column: 1, scope: !2871)
!2915 = distinct !DISubprogram(name: "sharedMemoryTest", linkageName: "?sharedMemoryTest@expression@test@@YAXXZ", scope: !2, file: !4, line: 75, type: !277, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!2916 = !DILocation(line: 77, column: 3, scope: !2915)
!2917 = !DILocalVariable(name: "expr2", scope: !2915, file: !4, line: 79, type: !140)
!2918 = !DILocation(line: 79, column: 15, scope: !2915)
!2919 = !DILocation(line: 80, column: 7, scope: !2915)
!2920 = !DILocation(line: 79, column: 3, scope: !2915)
!2921 = !DILocation(line: 88, column: 3, scope: !2915)
!2922 = distinct !{!2922, !2921, !2921}
!2923 = !DILocation(line: 89, column: 3, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2915, file: !4, line: 89, column: 3)
!2925 = !DILocation(line: 89, column: 3, scope: !2915)
!2926 = !DILocation(line: 89, column: 3, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2924, file: !4, line: 89, column: 3)
!2928 = !DILocation(line: 92, column: 3, scope: !2915)
!2929 = !DILocalVariable(name: "a", scope: !2915, file: !4, line: 93, type: !2747)
!2930 = !DILocation(line: 93, column: 24, scope: !2915)
!2931 = !DILocation(line: 93, column: 3, scope: !2915)
!2932 = !DILocalVariable(name: "fs", scope: !2933, file: !4, line: 95, type: !2747)
!2933 = distinct !DILexicalBlock(scope: !2915, file: !4, line: 94, column: 3)
!2934 = !DILocation(line: 95, column: 12, scope: !2933)
!2935 = !DILocation(line: 95, column: 17, scope: !2933)
!2936 = !DILocation(line: 95, column: 7, scope: !2933)
!2937 = !DILocalVariable(name: "b", scope: !2933, file: !4, line: 96, type: !56)
!2938 = !DILocation(line: 96, column: 10, scope: !2933)
!2939 = !DILocation(line: 96, column: 17, scope: !2933)
!2940 = !DILocation(line: 97, column: 3, scope: !2915)
!2941 = !DILocalVariable(name: "expr", scope: !2915, file: !4, line: 98, type: !140)
!2942 = !DILocation(line: 98, column: 15, scope: !2915)
!2943 = !DILocation(line: 98, column: 22, scope: !2915)
!2944 = !DILocation(line: 98, column: 3, scope: !2915)
!2945 = !DILocation(line: 111, column: 3, scope: !2915)
!2946 = distinct !{!2946, !2945, !2945}
!2947 = !DILocalVariable(name: "d", scope: !2915, file: !4, line: 112, type: !986)
!2948 = !DILocation(line: 112, column: 8, scope: !2915)
!2949 = !DILocation(line: 112, column: 12, scope: !2915)
!2950 = !DILocation(line: 112, column: 14, scope: !2915)
!2951 = !DILocation(line: 113, column: 3, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2915, file: !4, line: 113, column: 3)
!2953 = !DILocation(line: 113, column: 3, scope: !2915)
!2954 = !DILocation(line: 113, column: 3, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !4, line: 113, column: 3)
!2956 = !DILocation(line: 114, column: 1, scope: !2915)
!2957 = distinct !DISubprogram(name: "~shared_ptr", linkageName: "??1?$shared_ptr@H@std@@QEAA@XZ", scope: !2747, file: !2073, line: 1436, type: !2832, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2847, retainedNodes: !53)
!2958 = !DILocalVariable(name: "this", arg: 1, scope: !2957, type: !2959, flags: DIFlagArtificial | DIFlagObjectPointer)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2960 = !DILocation(line: 0, scope: !2957)
!2961 = !DILocation(line: 1437, column: 11, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2957, file: !2073, line: 1436, column: 26)
!2963 = !DILocation(line: 1438, column: 3, scope: !2957)
!2964 = !DILocalVariable(name: "_Format", arg: 1, scope: !1360, file: !1272, line: 951, type: !351)
!2965 = !DILocation(line: 951, column: 57, scope: !1360)
!2966 = !DILocalVariable(name: "_Result", scope: !1360, file: !1272, line: 957, type: !5)
!2967 = !DILocation(line: 957, column: 13, scope: !1360)
!2968 = !DILocalVariable(name: "_ArgList", scope: !1360, file: !1272, line: 958, type: !964)
!2969 = !DILocation(line: 958, column: 17, scope: !1360)
!2970 = !DILocation(line: 959, column: 9, scope: !1360)
!2971 = !DILocation(line: 960, column: 54, scope: !1360)
!2972 = !DILocation(line: 960, column: 39, scope: !1360)
!2973 = !DILocation(line: 960, column: 31, scope: !1360)
!2974 = !DILocation(line: 960, column: 19, scope: !1360)
!2975 = !DILocation(line: 960, column: 17, scope: !1360)
!2976 = !DILocation(line: 961, column: 9, scope: !1360)
!2977 = !DILocation(line: 962, column: 16, scope: !1360)
!2978 = !DILocation(line: 962, column: 9, scope: !1360)
!2979 = distinct !DISubprogram(name: "shared_ptr", linkageName: "??0?$shared_ptr@H@std@@QEAA@XZ", scope: !2747, file: !2073, line: 1290, type: !2832, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2831, retainedNodes: !53)
!2980 = !DILocalVariable(name: "this", arg: 1, scope: !2979, type: !2959, flags: DIFlagArtificial | DIFlagObjectPointer)
!2981 = !DILocation(line: 0, scope: !2979)
!2982 = !DILocation(line: 1290, column: 43, scope: !2979)
!2983 = !DILocation(line: 1290, column: 13, scope: !2979)
!2984 = distinct !DISubprogram(name: "shared_ptr", linkageName: "??0?$shared_ptr@H@std@@QEAA@AEBV01@@Z", scope: !2747, file: !2073, line: 1365, type: !2839, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2838, retainedNodes: !53)
!2985 = !DILocalVariable(name: "_Other", arg: 2, scope: !2984, file: !2073, line: 1366, type: !2841)
!2986 = !DILocation(line: 1366, column: 25, scope: !2984)
!2987 = !DILocalVariable(name: "this", arg: 1, scope: !2984, type: !2959, flags: DIFlagArtificial | DIFlagObjectPointer)
!2988 = !DILocation(line: 0, scope: !2984)
!2989 = !DILocation(line: 1366, column: 42, scope: !2984)
!2990 = !DILocation(line: 1365, column: 3, scope: !2984)
!2991 = !DILocation(line: 1368, column: 11, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2984, file: !2073, line: 1366, column: 42)
!2993 = !DILocation(line: 1368, column: 32, scope: !2992)
!2994 = !DILocation(line: 1369, column: 3, scope: !2984)
!2995 = distinct !DISubprogram(name: "operator==<int, int>", linkageName: "??$?8HH@std@@YA_NAEBV?$shared_ptr@H@0@0@Z", scope: !8, file: !2073, line: 1661, type: !2996, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2389, retainedNodes: !53)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!56, !2841, !2841}
!2998 = !DILocalVariable(name: "_Right", arg: 2, scope: !2995, file: !2073, line: 1662, type: !2841)
!2999 = !DILocation(line: 1662, column: 52, scope: !2995)
!3000 = !DILocalVariable(name: "_Left", arg: 1, scope: !2995, file: !2073, line: 1661, type: !2841)
!3001 = !DILocation(line: 1661, column: 52, scope: !2995)
!3002 = !DILocation(line: 1663, column: 10, scope: !2995)
!3003 = !DILocation(line: 1663, column: 16, scope: !2995)
!3004 = !DILocation(line: 1663, column: 25, scope: !2995)
!3005 = !DILocation(line: 1663, column: 32, scope: !2995)
!3006 = !DILocation(line: 1663, column: 22, scope: !2995)
!3007 = !DILocation(line: 1663, column: 3, scope: !2995)
!3008 = distinct !DISubprogram(name: "use_count", linkageName: "?use_count@?$_Ptr_base@H@std@@QEBAJXZ", scope: !2750, file: !2073, line: 723, type: !2802, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2801, retainedNodes: !53)
!3009 = !DILocalVariable(name: "this", arg: 1, scope: !3008, type: !3010, flags: DIFlagArtificial | DIFlagObjectPointer)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!3011 = !DILocation(line: 0, scope: !3008)
!3012 = !DILocation(line: 724, column: 12, scope: !3008)
!3013 = !DILocation(line: 724, column: 19, scope: !3008)
!3014 = !DILocation(line: 724, column: 25, scope: !3008)
!3015 = !DILocation(line: 724, column: 5, scope: !3008)
!3016 = distinct !DISubprogram(name: "operator*<int, 0>", linkageName: "??$?DH$0A@@?$shared_ptr@H@std@@QEBAAEAHXZ", scope: !2747, file: !2073, line: 1504, type: !3017, scopeLine: 1504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2210, declaration: !3019, retainedNodes: !53)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!123, !2862}
!3019 = !DISubprogram(name: "operator*<int, 0>", linkageName: "??$?DH$0A@@?$shared_ptr@H@std@@QEBAAEAHXZ", scope: !2747, file: !2073, line: 1504, type: !3017, scopeLine: 1504, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2210)
!3020 = !DILocalVariable(name: "this", arg: 1, scope: !3016, type: !3021, flags: DIFlagArtificial | DIFlagObjectPointer)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!3022 = !DILocation(line: 0, scope: !3016)
!3023 = !DILocation(line: 1505, column: 13, scope: !3016)
!3024 = !DILocation(line: 1505, column: 5, scope: !3016)
!3025 = distinct !DISubprogram(name: "uniquePtrTest", linkageName: "?uniquePtrTest@expression@test@@YAXXZ", scope: !2, file: !4, line: 116, type: !277, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!3026 = !DILocalVariable(name: "a", scope: !3025, file: !4, line: 117, type: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<int, std::default_delete<int> >", scope: !8, file: !2073, line: 988, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3028, templateParams: !3110, identifier: ".?AV?$unique_ptr@HU?$default_delete@H@std@@@std@@")
!3028 = !{!3029, !3059, !3064, !3067, !3070, !3073, !3078, !3085, !3093, !3094, !3097, !3100, !3103, !3107}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_Mypair", scope: !3027, file: !2073, line: 1124, baseType: !3030, size: 64, flags: DIFlagPublic)
!3030 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Compressed_pair<std::default_delete<int>, int *, true>", scope: !8, file: !157, line: 1327, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3031, templateParams: !3056, identifier: ".?AV?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@")
!3031 = !{!3032, !3044, !3045, !3050}
!3032 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3030, baseType: !3033, extraData: i32 0)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<int>", scope: !8, file: !2073, line: 955, size: 8, flags: DIFlagTypePassByValue, elements: !3034, templateParams: !72, identifier: ".?AU?$default_delete@H@std@@")
!3034 = !{!3035, !3039}
!3035 = !DISubprogram(name: "default_delete", scope: !3033, file: !2073, line: 956, type: !3036, scopeLine: 956, flags: DIFlagPrototyped, spFlags: 0)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !3038}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3039 = !DISubprogram(name: "operator()", linkageName: "??R?$default_delete@H@std@@QEBAXPEAH@Z", scope: !3033, file: !2073, line: 961, type: !3040, scopeLine: 961, flags: DIFlagPrototyped, spFlags: 0)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !3042, !115}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3033)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_Myval2", scope: !3030, file: !157, line: 1329, baseType: !115, size: 64, flags: DIFlagPublic)
!3045 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAAAEAU?$default_delete@H@2@XZ", scope: !3030, file: !157, line: 1343, type: !3046, scopeLine: 1343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!3048, !3049}
!3048 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3033, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3050 = !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEBAAEBU?$default_delete@H@2@XZ", scope: !3030, file: !157, line: 1347, type: !3051, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3043, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3030)
!3056 = !{!3057, !3058, !81}
!3057 = !DITemplateTypeParameter(name: "_Ty1", type: !3033)
!3058 = !DITemplateTypeParameter(name: "_Ty2", type: !115)
!3059 = !DISubprogram(name: "operator=", linkageName: "??4?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAAAEAV01@$$T@Z", scope: !3027, file: !2073, line: 1002, type: !3060, scopeLine: 1002, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!3062, !3063, !996}
!3062 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3027, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3064 = !DISubprogram(name: "swap", linkageName: "?swap@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAAXAEAV12@@Z", scope: !3027, file: !2073, line: 1080, type: !3065, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !3063, !3062}
!3067 = !DISubprogram(name: "~unique_ptr", scope: !3027, file: !2073, line: 1085, type: !3068, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !3063}
!3070 = !DISubprogram(name: "get_deleter", linkageName: "?get_deleter@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAAAEAU?$default_delete@H@2@XZ", scope: !3027, file: !2073, line: 1091, type: !3071, scopeLine: 1091, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!3048, !3063}
!3073 = !DISubprogram(name: "get_deleter", linkageName: "?get_deleter@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAAEBU?$default_delete@H@2@XZ", scope: !3027, file: !2073, line: 1093, type: !3074, scopeLine: 1093, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!3053, !3076}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3078 = !DISubprogram(name: "operator*", linkageName: "??D?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAAEAHXZ", scope: !3027, file: !2073, line: 1097, type: !3079, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!3081, !3076}
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "add_lvalue_reference_t<int>", scope: !8, file: !2156, line: 213, baseType: !3082)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Lvalue", scope: !3083, file: !2156, line: 202, baseType: !123)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Add_reference<int, void>", scope: !8, file: !2156, line: 201, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !3084, identifier: ".?AU?$_Add_reference@HX@std@@")
!3084 = !{!73, !2160}
!3085 = !DISubprogram(name: "operator->", linkageName: "??C?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAPEAHXZ", scope: !3027, file: !2073, line: 1102, type: !3086, scopeLine: 1102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!3088, !3076}
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3027, file: !2073, line: 990, baseType: !3089)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3090, file: !2073, line: 939, baseType: !115)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Get_deleter_pointer_type<int, std::default_delete<int>, void>", scope: !8, file: !2073, line: 938, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !3091, identifier: ".?AU?$_Get_deleter_pointer_type@HU?$default_delete@H@std@@X@std@@")
!3091 = !{!73, !3092, !2160}
!3092 = !DITemplateTypeParameter(name: "_Dx_noref", type: !3033)
!3093 = !DISubprogram(name: "get", linkageName: "?get@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAPEAHXZ", scope: !3027, file: !2073, line: 1104, type: !3086, scopeLine: 1104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3094 = !DISubprogram(name: "operator bool", linkageName: "??B?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBA_NXZ", scope: !3027, file: !2073, line: 1106, type: !3095, scopeLine: 1106, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!56, !3076}
!3097 = !DISubprogram(name: "release", linkageName: "?release@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAAPEAHXZ", scope: !3027, file: !2073, line: 1110, type: !3098, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!3088, !3063}
!3100 = !DISubprogram(name: "reset", linkageName: "?reset@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAAXPEAH@Z", scope: !3027, file: !2073, line: 1114, type: !3101, scopeLine: 1114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !3063, !3088}
!3103 = !DISubprogram(name: "unique_ptr", scope: !3027, file: !2073, line: 1121, type: !3104, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !3063, !3106}
!3106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3077, size: 64)
!3107 = !DISubprogram(name: "operator=", linkageName: "??4?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAAAEAV01@AEBV01@@Z", scope: !3027, file: !2073, line: 1122, type: !3108, scopeLine: 1122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3062, !3063, !3106}
!3110 = !{!73, !3111}
!3111 = !DITemplateTypeParameter(name: "_Dx", type: !3033)
!3112 = !DILocation(line: 117, column: 24, scope: !3025)
!3113 = !DILocation(line: 117, column: 3, scope: !3025)
!3114 = !DILocalVariable(name: "d", scope: !3025, file: !4, line: 118, type: !3077)
!3115 = !DILocation(line: 118, column: 30, scope: !3025)
!3116 = !DILocation(line: 118, column: 3, scope: !3025)
!3117 = !DILocalVariable(name: "expr", scope: !3025, file: !4, line: 119, type: !140)
!3118 = !DILocation(line: 119, column: 15, scope: !3025)
!3119 = !DILocation(line: 119, column: 22, scope: !3025)
!3120 = !DILocation(line: 119, column: 3, scope: !3025)
!3121 = !DILocation(line: 128, column: 3, scope: !3025)
!3122 = distinct !{!3122, !3121, !3121}
!3123 = !DILocation(line: 129, column: 3, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3025, file: !4, line: 129, column: 3)
!3125 = !DILocation(line: 129, column: 3, scope: !3025)
!3126 = !DILocation(line: 129, column: 3, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3124, file: !4, line: 129, column: 3)
!3128 = !DILocation(line: 130, column: 3, scope: !3025)
!3129 = !DILocation(line: 131, column: 13, scope: !3025)
!3130 = !DILocalVariable(name: "expr2", scope: !3025, file: !4, line: 132, type: !140)
!3131 = !DILocation(line: 132, column: 15, scope: !3025)
!3132 = !DILocation(line: 133, column: 7, scope: !3025)
!3133 = !DILocation(line: 132, column: 3, scope: !3025)
!3134 = !DILocation(line: 141, column: 3, scope: !3025)
!3135 = distinct !{!3135, !3134, !3134}
!3136 = !DILocation(line: 142, column: 3, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3025, file: !4, line: 142, column: 3)
!3138 = !DILocation(line: 142, column: 3, scope: !3025)
!3139 = !DILocation(line: 142, column: 3, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !4, line: 142, column: 3)
!3141 = !DILocation(line: 143, column: 1, scope: !3025)
!3142 = distinct !DISubprogram(name: "unique_ptr<std::default_delete<int>, 0>", linkageName: "??$?0U?$default_delete@H@std@@$0A@@?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ", scope: !3027, file: !2073, line: 996, type: !3068, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3144, declaration: !3143, retainedNodes: !53)
!3143 = !DISubprogram(name: "unique_ptr<std::default_delete<int>, 0>", scope: !3027, file: !2073, line: 996, type: !3068, scopeLine: 996, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3144)
!3144 = !{!3145, !2194}
!3145 = !DITemplateTypeParameter(name: "_Dx2", type: !3033)
!3146 = !DILocalVariable(name: "this", arg: 1, scope: !3142, type: !3147, flags: DIFlagArtificial | DIFlagObjectPointer)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3148 = !DILocation(line: 0, scope: !3142)
!3149 = !DILocation(line: 996, column: 37, scope: !3142)
!3150 = !DILocation(line: 996, column: 76, scope: !3142)
!3151 = distinct !DISubprogram(name: "operator*", linkageName: "??D?$unique_ptr@HU?$default_delete@H@std@@@std@@QEBAAEAHXZ", scope: !3027, file: !2073, line: 1097, type: !3079, scopeLine: 1098, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3078, retainedNodes: !53)
!3152 = !DILocalVariable(name: "this", arg: 1, scope: !3151, type: !3153, flags: DIFlagArtificial | DIFlagObjectPointer)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3154 = !DILocation(line: 0, scope: !3151)
!3155 = !DILocation(line: 1099, column: 13, scope: !3151)
!3156 = !DILocation(line: 1099, column: 21, scope: !3151)
!3157 = !DILocation(line: 1099, column: 5, scope: !3151)
!3158 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "??1?$unique_ptr@VClassWithDestructor@@U?$default_delete@VClassWithDestructor@@@std@@@std@@QEAA@XZ", scope: !2072, file: !2073, line: 1085, type: !2142, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2141, retainedNodes: !53)
!3159 = !DILocalVariable(name: "this", arg: 1, scope: !3158, type: !2196, flags: DIFlagArtificial | DIFlagObjectPointer)
!3160 = !DILocation(line: 0, scope: !3158)
!3161 = !DILocation(line: 1086, column: 9, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !2073, line: 1086, column: 9)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !2073, line: 1085, column: 26)
!3164 = !DILocation(line: 1086, column: 17, scope: !3162)
!3165 = !DILocation(line: 1086, column: 9, scope: !3163)
!3166 = !DILocation(line: 1087, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3162, file: !2073, line: 1086, column: 26)
!3168 = !DILocation(line: 1087, column: 15, scope: !3167)
!3169 = !DILocation(line: 1087, column: 28, scope: !3167)
!3170 = !DILocation(line: 1087, column: 36, scope: !3167)
!3171 = !DILocation(line: 1088, column: 5, scope: !3167)
!3172 = !DILocation(line: 1089, column: 3, scope: !3158)
!3173 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "??1?$unique_ptr@HU?$default_delete@H@std@@@std@@QEAA@XZ", scope: !3027, file: !2073, line: 1085, type: !3068, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3067, retainedNodes: !53)
!3174 = !DILocalVariable(name: "this", arg: 1, scope: !3173, type: !3147, flags: DIFlagArtificial | DIFlagObjectPointer)
!3175 = !DILocation(line: 0, scope: !3173)
!3176 = !DILocation(line: 1086, column: 9, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !2073, line: 1086, column: 9)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !2073, line: 1085, column: 26)
!3179 = !DILocation(line: 1086, column: 17, scope: !3177)
!3180 = !DILocation(line: 1086, column: 9, scope: !3178)
!3181 = !DILocation(line: 1087, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !2073, line: 1086, column: 26)
!3183 = !DILocation(line: 1087, column: 15, scope: !3182)
!3184 = !DILocation(line: 1087, column: 28, scope: !3182)
!3185 = !DILocation(line: 1087, column: 36, scope: !3182)
!3186 = !DILocation(line: 1088, column: 5, scope: !3182)
!3187 = !DILocation(line: 1089, column: 3, scope: !3173)
!3188 = distinct !DISubprogram(name: "windowsApiTest", linkageName: "?windowsApiTest@expression@test@@YAXXZ", scope: !2, file: !4, line: 145, type: !277, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!3189 = !DILocalVariable(name: "s", scope: !3188, file: !4, line: 146, type: !3190)
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "STARTUPINFOW", file: !3191, line: 74, baseType: !3192)
!3191 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\include\\10.0.19041.0\\um\\processthreadsapi.h", directory: "C:\\")
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_STARTUPINFOW", file: !3191, line: 55, size: 832, flags: DIFlagTypePassByValue, elements: !3193, identifier: ".?AU_STARTUPINFOW@@")
!3193 = !{!3194, !3197, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3214, !3215, !3219, !3221, !3222}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !3192, file: !3191, line: 56, baseType: !3195, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "DWORD", file: !3196, line: 156, baseType: !1133)
!3196 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\include\\10.0.19041.0\\shared\\minwindef.h", directory: "C:\\")
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "lpReserved", scope: !3192, file: !3191, line: 57, baseType: !3198, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "LPWSTR", file: !3199, line: 480, baseType: !3200)
!3199 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\include\\10.0.19041.0\\um\\winnt.h", directory: "C:\\")
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "WCHAR", file: !3199, line: 471, baseType: !1098)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "lpDesktop", scope: !3192, file: !3191, line: 58, baseType: !3198, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "lpTitle", scope: !3192, file: !3191, line: 59, baseType: !3198, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dwX", scope: !3192, file: !3191, line: 60, baseType: !3195, size: 32, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dwY", scope: !3192, file: !3191, line: 61, baseType: !3195, size: 32, offset: 288)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "dwXSize", scope: !3192, file: !3191, line: 62, baseType: !3195, size: 32, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dwYSize", scope: !3192, file: !3191, line: 63, baseType: !3195, size: 32, offset: 352)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dwXCountChars", scope: !3192, file: !3191, line: 64, baseType: !3195, size: 32, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dwYCountChars", scope: !3192, file: !3191, line: 65, baseType: !3195, size: 32, offset: 416)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dwFillAttribute", scope: !3192, file: !3191, line: 66, baseType: !3195, size: 32, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dwFlags", scope: !3192, file: !3191, line: 67, baseType: !3195, size: 32, offset: 480)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "wShowWindow", scope: !3192, file: !3191, line: 68, baseType: !3213, size: 16, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !3196, line: 159, baseType: !1212)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cbReserved2", scope: !3192, file: !3191, line: 69, baseType: !3213, size: 16, offset: 528)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "lpReserved2", scope: !3192, file: !3191, line: 70, baseType: !3216, size: 64, offset: 576)
!3216 = !DIDerivedType(tag: DW_TAG_typedef, name: "LPBYTE", file: !3196, line: 165, baseType: !3217)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !3196, line: 158, baseType: !974)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "hStdInput", scope: !3192, file: !3191, line: 71, baseType: !3220, size: 64, offset: 640)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "HANDLE", file: !3199, line: 660, baseType: !968)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "hStdOutput", scope: !3192, file: !3191, line: 72, baseType: !3220, size: 64, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "hStdError", scope: !3192, file: !3191, line: 73, baseType: !3220, size: 64, offset: 768)
!3223 = !DILocation(line: 146, column: 16, scope: !3188)
!3224 = !DILocation(line: 147, column: 5, scope: !3188)
!3225 = !DILocalVariable(name: "context", scope: !3188, file: !4, line: 148, type: !3226)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONTEXT", file: !3199, line: 4018, baseType: !3227)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONTEXT", file: !3199, line: 3901, size: 9856, align: 128, flags: DIFlagTypePassByValue, elements: !3228, identifier: ".?AU_CONTEXT@@")
!3228 = !{!3229, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3331, !3335, !3336, !3337, !3338, !3339, !3340}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "P1Home", scope: !3227, file: !3199, line: 3910, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "DWORD64", file: !3231, line: 483, baseType: !24)
!3231 = !DIFile(filename: "Program Files (x86)\\Windows Kits\\10\\include\\10.0.19041.0\\shared\\basetsd.h", directory: "C:\\")
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "P2Home", scope: !3227, file: !3199, line: 3911, baseType: !3230, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "P3Home", scope: !3227, file: !3199, line: 3912, baseType: !3230, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "P4Home", scope: !3227, file: !3199, line: 3913, baseType: !3230, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "P5Home", scope: !3227, file: !3199, line: 3914, baseType: !3230, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "P6Home", scope: !3227, file: !3199, line: 3915, baseType: !3230, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ContextFlags", scope: !3227, file: !3199, line: 3921, baseType: !3195, size: 32, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "MxCsr", scope: !3227, file: !3199, line: 3922, baseType: !3195, size: 32, offset: 416)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "SegCs", scope: !3227, file: !3199, line: 3928, baseType: !3213, size: 16, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "SegDs", scope: !3227, file: !3199, line: 3929, baseType: !3213, size: 16, offset: 464)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "SegEs", scope: !3227, file: !3199, line: 3930, baseType: !3213, size: 16, offset: 480)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "SegFs", scope: !3227, file: !3199, line: 3931, baseType: !3213, size: 16, offset: 496)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "SegGs", scope: !3227, file: !3199, line: 3932, baseType: !3213, size: 16, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "SegSs", scope: !3227, file: !3199, line: 3933, baseType: !3213, size: 16, offset: 528)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "EFlags", scope: !3227, file: !3199, line: 3934, baseType: !3195, size: 32, offset: 544)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "Dr0", scope: !3227, file: !3199, line: 3940, baseType: !3230, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "Dr1", scope: !3227, file: !3199, line: 3941, baseType: !3230, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "Dr2", scope: !3227, file: !3199, line: 3942, baseType: !3230, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "Dr3", scope: !3227, file: !3199, line: 3943, baseType: !3230, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "Dr6", scope: !3227, file: !3199, line: 3944, baseType: !3230, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "Dr7", scope: !3227, file: !3199, line: 3945, baseType: !3230, size: 64, offset: 896)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "Rax", scope: !3227, file: !3199, line: 3951, baseType: !3230, size: 64, offset: 960)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "Rcx", scope: !3227, file: !3199, line: 3952, baseType: !3230, size: 64, offset: 1024)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "Rdx", scope: !3227, file: !3199, line: 3953, baseType: !3230, size: 64, offset: 1088)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "Rbx", scope: !3227, file: !3199, line: 3954, baseType: !3230, size: 64, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "Rsp", scope: !3227, file: !3199, line: 3955, baseType: !3230, size: 64, offset: 1216)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "Rbp", scope: !3227, file: !3199, line: 3956, baseType: !3230, size: 64, offset: 1280)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "Rsi", scope: !3227, file: !3199, line: 3957, baseType: !3230, size: 64, offset: 1344)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "Rdi", scope: !3227, file: !3199, line: 3958, baseType: !3230, size: 64, offset: 1408)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "R8", scope: !3227, file: !3199, line: 3959, baseType: !3230, size: 64, offset: 1472)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "R9", scope: !3227, file: !3199, line: 3960, baseType: !3230, size: 64, offset: 1536)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "R10", scope: !3227, file: !3199, line: 3961, baseType: !3230, size: 64, offset: 1600)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "R11", scope: !3227, file: !3199, line: 3962, baseType: !3230, size: 64, offset: 1664)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "R12", scope: !3227, file: !3199, line: 3963, baseType: !3230, size: 64, offset: 1728)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "R13", scope: !3227, file: !3199, line: 3964, baseType: !3230, size: 64, offset: 1792)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "R14", scope: !3227, file: !3199, line: 3965, baseType: !3230, size: 64, offset: 1856)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "R15", scope: !3227, file: !3199, line: 3966, baseType: !3230, size: 64, offset: 1920)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "Rip", scope: !3227, file: !3199, line: 3972, baseType: !3230, size: 64, offset: 1984)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3227, file: !3199, line: 3978, baseType: !3270, size: 4096, offset: 2048)
!3270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3227, file: !3199, line: 3978, size: 4096, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !3271, identifier: ".?AT<unnamed-type-$S3>@_CONTEXT@@")
!3271 = !{!3272, !3307}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "FltSave", scope: !3270, file: !3199, line: 3979, baseType: !3273, size: 4096, align: 128)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMM_SAVE_AREA32", file: !3199, line: 3864, baseType: !3274)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSAVE_FORMAT", file: !3199, line: 2630, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_XSAVE_FORMAT", file: !3199, line: 2602, size: 4096, align: 128, flags: DIFlagTypePassByValue, elements: !3276, identifier: ".?AU_XSAVE_FORMAT@@")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3301, !3303}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ControlWord", scope: !3275, file: !3199, line: 2603, baseType: !3213, size: 16)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "StatusWord", scope: !3275, file: !3199, line: 2604, baseType: !3213, size: 16, offset: 16)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "TagWord", scope: !3275, file: !3199, line: 2605, baseType: !3218, size: 8, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !3275, file: !3199, line: 2606, baseType: !3218, size: 8, offset: 40)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorOpcode", scope: !3275, file: !3199, line: 2607, baseType: !3213, size: 16, offset: 48)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorOffset", scope: !3275, file: !3199, line: 2608, baseType: !3195, size: 32, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorSelector", scope: !3275, file: !3199, line: 2609, baseType: !3213, size: 16, offset: 96)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !3275, file: !3199, line: 2610, baseType: !3213, size: 16, offset: 112)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "DataOffset", scope: !3275, file: !3199, line: 2611, baseType: !3195, size: 32, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "DataSelector", scope: !3275, file: !3199, line: 2612, baseType: !3213, size: 16, offset: 160)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !3275, file: !3199, line: 2613, baseType: !3213, size: 16, offset: 176)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "MxCsr", scope: !3275, file: !3199, line: 2614, baseType: !3195, size: 32, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "MxCsr_Mask", scope: !3275, file: !3199, line: 2615, baseType: !3195, size: 32, offset: 224)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "FloatRegisters", scope: !3275, file: !3199, line: 2616, baseType: !3291, size: 1024, align: 128, offset: 256)
!3291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3292, size: 1024, align: 128, elements: !3299)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "M128A", file: !3199, line: 2596, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_M128A", file: !3199, line: 2593, size: 128, align: 128, flags: DIFlagTypePassByValue, elements: !3294, identifier: ".?AU_M128A@@")
!3294 = !{!3295, !3297}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "Low", scope: !3293, file: !3199, line: 2594, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ULONGLONG", file: !3199, line: 817, baseType: !24)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "High", scope: !3293, file: !3199, line: 2595, baseType: !3298, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONGLONG", file: !3199, line: 816, baseType: !1000)
!3299 = !{!3300}
!3300 = !DISubrange(count: 8)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "XmmRegisters", scope: !3275, file: !3199, line: 2620, baseType: !3302, size: 2048, align: 128, offset: 1280)
!3302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3292, size: 2048, align: 128, elements: !239)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !3275, file: !3199, line: 2621, baseType: !3304, size: 768, offset: 3328)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3218, size: 768, elements: !3305)
!3305 = !{!3306}
!3306 = !DISubrange(count: 96)
!3307 = !DIDerivedType(tag: DW_TAG_member, scope: !3270, file: !3199, line: 3980, baseType: !3308, size: 3328)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3270, file: !3199, line: 3980, size: 3328, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !3309, identifier: ".?AU<unnamed-type-$S4>@<unnamed-type-$S3>@_CONTEXT@@")
!3309 = !{!3310, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "Header", scope: !3308, file: !3199, line: 3981, baseType: !3311, size: 256, align: 128)
!3311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3292, size: 256, align: 128, elements: !3312)
!3312 = !{!3313}
!3313 = !DISubrange(count: 2)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "Legacy", scope: !3308, file: !3199, line: 3982, baseType: !3291, size: 1024, align: 128, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm0", scope: !3308, file: !3199, line: 3983, baseType: !3292, size: 128, align: 128, offset: 1280)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm1", scope: !3308, file: !3199, line: 3984, baseType: !3292, size: 128, align: 128, offset: 1408)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm2", scope: !3308, file: !3199, line: 3985, baseType: !3292, size: 128, align: 128, offset: 1536)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm3", scope: !3308, file: !3199, line: 3986, baseType: !3292, size: 128, align: 128, offset: 1664)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm4", scope: !3308, file: !3199, line: 3987, baseType: !3292, size: 128, align: 128, offset: 1792)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm5", scope: !3308, file: !3199, line: 3988, baseType: !3292, size: 128, align: 128, offset: 1920)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm6", scope: !3308, file: !3199, line: 3989, baseType: !3292, size: 128, align: 128, offset: 2048)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm7", scope: !3308, file: !3199, line: 3990, baseType: !3292, size: 128, align: 128, offset: 2176)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm8", scope: !3308, file: !3199, line: 3991, baseType: !3292, size: 128, align: 128, offset: 2304)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm9", scope: !3308, file: !3199, line: 3992, baseType: !3292, size: 128, align: 128, offset: 2432)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm10", scope: !3308, file: !3199, line: 3993, baseType: !3292, size: 128, align: 128, offset: 2560)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm11", scope: !3308, file: !3199, line: 3994, baseType: !3292, size: 128, align: 128, offset: 2688)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm12", scope: !3308, file: !3199, line: 3995, baseType: !3292, size: 128, align: 128, offset: 2816)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm13", scope: !3308, file: !3199, line: 3996, baseType: !3292, size: 128, align: 128, offset: 2944)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm14", scope: !3308, file: !3199, line: 3997, baseType: !3292, size: 128, align: 128, offset: 3072)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "Xmm15", scope: !3308, file: !3199, line: 3998, baseType: !3292, size: 128, align: 128, offset: 3200)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "VectorRegister", scope: !3227, file: !3199, line: 4006, baseType: !3332, size: 3328, align: 128, offset: 6144)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3292, size: 3328, align: 128, elements: !3333)
!3333 = !{!3334}
!3334 = !DISubrange(count: 26)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "VectorControl", scope: !3227, file: !3199, line: 4007, baseType: !3230, size: 64, offset: 9472)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "DebugControl", scope: !3227, file: !3199, line: 4013, baseType: !3230, size: 64, offset: 9536)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "LastBranchToRip", scope: !3227, file: !3199, line: 4014, baseType: !3230, size: 64, offset: 9600)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "LastBranchFromRip", scope: !3227, file: !3199, line: 4015, baseType: !3230, size: 64, offset: 9664)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "LastExceptionToRip", scope: !3227, file: !3199, line: 4016, baseType: !3230, size: 64, offset: 9728)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "LastExceptionFromRip", scope: !3227, file: !3199, line: 4017, baseType: !3230, size: 64, offset: 9792)
!3341 = !DILocation(line: 148, column: 11, scope: !3188)
!3342 = !DILocation(line: 149, column: 11, scope: !3188)
!3343 = !DILocalVariable(name: "p", scope: !3188, file: !4, line: 150, type: !3344)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PROCESS_INFORMATION", file: !3191, line: 33, baseType: !3345)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PROCESS_INFORMATION", file: !3191, line: 28, size: 192, flags: DIFlagTypePassByValue, elements: !3346, identifier: ".?AU_PROCESS_INFORMATION@@")
!3346 = !{!3347, !3348, !3349, !3350}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "hProcess", scope: !3345, file: !3191, line: 29, baseType: !3220, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "hThread", scope: !3345, file: !3191, line: 30, baseType: !3220, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dwProcessId", scope: !3345, file: !3191, line: 31, baseType: !3195, size: 32, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dwThreadId", scope: !3345, file: !3191, line: 32, baseType: !3195, size: 32, offset: 160)
!3351 = !DILocation(line: 150, column: 23, scope: !3188)
!3352 = !DILocation(line: 151, column: 5, scope: !3188)
!3353 = !DILocalVariable(name: "expr", scope: !3188, file: !4, line: 152, type: !140)
!3354 = !DILocation(line: 152, column: 15, scope: !3188)
!3355 = !DILocation(line: 152, column: 22, scope: !3188)
!3356 = !DILocation(line: 152, column: 3, scope: !3188)
!3357 = !DILocation(line: 164, column: 3, scope: !3188)
!3358 = distinct !{!3358, !3357, !3357}
!3359 = !DILocation(line: 165, column: 3, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3188, file: !4, line: 165, column: 3)
!3361 = !DILocation(line: 165, column: 3, scope: !3188)
!3362 = !DILocation(line: 165, column: 3, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !4, line: 165, column: 3)
!3364 = !DILocation(line: 166, column: 3, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3188, file: !4, line: 166, column: 3)
!3366 = !DILocation(line: 166, column: 3, scope: !3188)
!3367 = !DILocation(line: 166, column: 3, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3365, file: !4, line: 166, column: 3)
!3369 = !DILocation(line: 167, column: 1, scope: !3188)
!3370 = distinct !DISubprogram(name: "mixStlWithDwarfData", linkageName: "?mixStlWithDwarfData@expression@test@@YAXXZ", scope: !2, file: !4, line: 174, type: !277, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!3371 = !DILocalVariable(name: "str", scope: !3370, file: !4, line: 175, type: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyStruct", scope: !2, file: !4, line: 170, size: 32, flags: DIFlagTypePassByValue, elements: !3373, identifier: ".?AUMyStruct@expression@test@@")
!3373 = !{!3374}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3372, file: !4, line: 171, baseType: !5, size: 32)
!3375 = !DILocation(line: 175, column: 12, scope: !3370)
!3376 = !DILocation(line: 176, column: 15, scope: !3370)
!3377 = !DILocation(line: 176, column: 7, scope: !3370)
!3378 = !DILocation(line: 176, column: 9, scope: !3370)
!3379 = !DILocalVariable(name: "expr2", scope: !3370, file: !4, line: 177, type: !140)
!3380 = !DILocation(line: 177, column: 15, scope: !3370)
!3381 = !DILocation(line: 178, column: 7, scope: !3370)
!3382 = !DILocation(line: 177, column: 3, scope: !3370)
!3383 = !DILocation(line: 183, column: 3, scope: !3370)
!3384 = distinct !{!3384, !3383, !3383}
!3385 = !DILocation(line: 184, column: 1, scope: !3370)
!3386 = distinct !DISubprogram(name: "allStl", linkageName: "?allStl@expression@test@@YAXXZ", scope: !2, file: !4, line: 186, type: !277, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!3387 = !DILocalVariable(name: "str", scope: !3386, file: !4, line: 187, type: !3372)
!3388 = !DILocation(line: 187, column: 12, scope: !3386)
!3389 = !DILocation(line: 188, column: 15, scope: !3386)
!3390 = !DILocation(line: 188, column: 7, scope: !3386)
!3391 = !DILocation(line: 188, column: 9, scope: !3386)
!3392 = !DILocalVariable(name: "expr2", scope: !3386, file: !4, line: 189, type: !140)
!3393 = !DILocation(line: 189, column: 15, scope: !3386)
!3394 = !DILocation(line: 189, column: 23, scope: !3386)
!3395 = !DILocation(line: 189, column: 3, scope: !3386)
!3396 = !DILocation(line: 194, column: 3, scope: !3386)
!3397 = distinct !{!3397, !3396, !3396}
!3398 = !DILocation(line: 195, column: 1, scope: !3386)
!3399 = distinct !DISubprogram(name: "_Compressed_pair<>", linkageName: "??$?0$$V@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z", scope: !2076, file: !157, line: 1334, type: !3400, scopeLine: 1336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3409, declaration: !3408, retainedNodes: !53)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !2123, !3402}
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Zero_then_variadic_args_t", scope: !8, file: !157, line: 1318, size: 8, flags: DIFlagTypePassByValue, elements: !3403, identifier: ".?AU_Zero_then_variadic_args_t@std@@")
!3403 = !{!3404}
!3404 = !DISubprogram(name: "_Zero_then_variadic_args_t", scope: !3402, file: !157, line: 1319, type: !3405, scopeLine: 1319, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3408 = !DISubprogram(name: "_Compressed_pair<>", scope: !2076, file: !157, line: 1334, type: !3400, scopeLine: 1334, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !3409)
!3409 = !{!3410}
!3410 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Other2", value: !53)
!3411 = !DILocalVariable(arg: 2, scope: !3399, file: !157, line: 1334, type: !3402)
!3412 = !DILocation(line: 1334, column: 67, scope: !3399)
!3413 = !DILocalVariable(name: "this", arg: 1, scope: !3399, type: !3414, flags: DIFlagArtificial | DIFlagObjectPointer)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!3415 = !DILocation(line: 0, scope: !3399)
!3416 = !DILocation(line: 1336, column: 60, scope: !3399)
!3417 = !DILocation(line: 1336, column: 19, scope: !3399)
!3418 = !DILocation(line: 1336, column: 61, scope: !3399)
!3419 = distinct !DISubprogram(name: "forward<int>", linkageName: "??$forward@H@std@@YA$$QEAHAEAH@Z", scope: !8, file: !2156, line: 1453, type: !3420, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !72, retainedNodes: !53)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!127, !3422}
!3422 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_reference_t<int>", scope: !8, file: !50, line: 225, baseType: !3424)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3425, file: !50, line: 208, baseType: !5)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<int>", scope: !8, file: !50, line: 207, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !72, identifier: ".?AU?$remove_reference@H@std@@")
!3426 = !DILocalVariable(name: "_Arg", arg: 1, scope: !3419, file: !2156, line: 1454, type: !3422)
!3427 = !DILocation(line: 1454, column: 30, scope: !3419)
!3428 = !DILocation(line: 1455, column: 31, scope: !3419)
!3429 = !DILocation(line: 1455, column: 5, scope: !3419)
!3430 = distinct !DISubprogram(name: "_Optional_destruct_base", linkageName: "??0?$_Optional_construct_base@H@std@@QEAA@Uin_place_t@1@$$QEAH@Z", scope: !58, file: !43, line: 111, type: !3431, scopeLine: 111, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, declaration: !3434, retainedNodes: !53)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{null, !3433, !11, !127}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3434 = !DISubprogram(name: "_Optional_destruct_base", scope: !58, type: !3431, flags: DIFlagArtificial | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3435 = !DILocalVariable(arg: 3, scope: !3430, type: !127, flags: DIFlagArtificial)
!3436 = !DILocation(line: 0, scope: !3430)
!3437 = !DILocalVariable(arg: 2, scope: !3430, type: !11, flags: DIFlagArtificial)
!3438 = !DILocalVariable(name: "this", arg: 1, scope: !3430, type: !3439, flags: DIFlagArtificial | DIFlagObjectPointer)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!3440 = !DILocation(line: 111, column: 41, scope: !3430)
!3441 = distinct !DISubprogram(name: "_Optional_destruct_base<int>", linkageName: "??$?0H@?$_Optional_destruct_base@H$00@std@@QEAA@Uin_place_t@1@$$QEAH@Z", scope: !61, file: !43, line: 67, type: !3442, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3445, declaration: !3444, retainedNodes: !53)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !78, !11, !127}
!3444 = !DISubprogram(name: "_Optional_destruct_base<int>", scope: !61, file: !43, line: 67, type: !3442, scopeLine: 67, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !3445)
!3445 = !{!2875}
!3446 = !DILocalVariable(name: "_Args", arg: 3, scope: !3441, file: !43, line: 67, type: !127)
!3447 = !DILocation(line: 67, column: 72, scope: !3441)
!3448 = !DILocalVariable(arg: 2, scope: !3441, file: !43, line: 67, type: !11)
!3449 = !DILocation(line: 67, column: 58, scope: !3441)
!3450 = !DILocalVariable(name: "this", arg: 1, scope: !3441, type: !3451, flags: DIFlagArtificial | DIFlagObjectPointer)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!3452 = !DILocation(line: 0, scope: !3441)
!3453 = !DILocation(line: 68, column: 11, scope: !3441)
!3454 = !DILocation(line: 68, column: 39, scope: !3441)
!3455 = !DILocation(line: 68, column: 18, scope: !3441)
!3456 = !DILocation(line: 68, column: 51, scope: !3441)
!3457 = !DILocation(line: 68, column: 69, scope: !3441)
!3458 = distinct !DISubprogram(name: "expected_move_assign_base", linkageName: "??0?$expected_move_assign_base@HH$00@detail@tl@@QEAA@XZ", scope: !2420, file: !2416, line: 1024, type: !3459, scopeLine: 1024, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3462, retainedNodes: !53)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3462 = !DISubprogram(name: "expected_move_assign_base", scope: !2420, type: !3459, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3463 = !DILocalVariable(name: "this", arg: 1, scope: !3458, type: !3464, flags: DIFlagArtificial | DIFlagObjectPointer)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!3465 = !DILocation(line: 0, scope: !3458)
!3466 = !DILocation(line: 1024, column: 20, scope: !3458)
!3467 = distinct !DISubprogram(name: "expected_copy_assign_base", linkageName: "??0?$expected_copy_assign_base@HH$00@detail@tl@@QEAA@XZ", scope: !2424, file: !2416, line: 990, type: !3468, scopeLine: 990, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3471, retainedNodes: !53)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !3470}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3471 = !DISubprogram(name: "expected_copy_assign_base", scope: !2424, type: !3468, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3472 = !DILocalVariable(name: "this", arg: 1, scope: !3467, type: !3473, flags: DIFlagArtificial | DIFlagObjectPointer)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!3474 = !DILocation(line: 0, scope: !3467)
!3475 = !DILocation(line: 990, column: 20, scope: !3467)
!3476 = distinct !DISubprogram(name: "expected_move_base", linkageName: "??0?$expected_move_base@HH$00@detail@tl@@QEAA@XZ", scope: !2427, file: !2416, line: 954, type: !3477, scopeLine: 954, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3480, retainedNodes: !53)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3480 = !DISubprogram(name: "expected_move_base", scope: !2427, type: !3477, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3481 = !DILocalVariable(name: "this", arg: 1, scope: !3476, type: !3482, flags: DIFlagArtificial | DIFlagObjectPointer)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!3483 = !DILocation(line: 0, scope: !3476)
!3484 = !DILocation(line: 954, column: 20, scope: !3476)
!3485 = distinct !DISubprogram(name: "expected_copy_base", linkageName: "??0?$expected_copy_base@HH$00@detail@tl@@QEAA@XZ", scope: !2430, file: !2416, line: 920, type: !3486, scopeLine: 920, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3489, retainedNodes: !53)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3489 = !DISubprogram(name: "expected_copy_base", scope: !2430, type: !3486, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3490 = !DILocalVariable(name: "this", arg: 1, scope: !3485, type: !3491, flags: DIFlagArtificial | DIFlagObjectPointer)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!3492 = !DILocation(line: 0, scope: !3485)
!3493 = !DILocation(line: 920, column: 20, scope: !3485)
!3494 = distinct !DISubprogram(name: "expected_operations_base", linkageName: "??0?$expected_operations_base@HH@detail@tl@@QEAA@XZ", scope: !2433, file: !2416, line: 663, type: !2528, scopeLine: 663, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3495, retainedNodes: !53)
!3495 = !DISubprogram(name: "expected_operations_base", scope: !2433, type: !2528, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3496 = !DILocalVariable(name: "this", arg: 1, scope: !3494, type: !3497, flags: DIFlagArtificial | DIFlagObjectPointer)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!3498 = !DILocation(line: 0, scope: !3494)
!3499 = !DILocation(line: 663, column: 16, scope: !3494)
!3500 = distinct !DISubprogram(name: "expected_storage_base", linkageName: "??0?$expected_storage_base@HH$00$00@detail@tl@@QEAA@XZ", scope: !2436, file: !2416, line: 468, type: !2475, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2474, retainedNodes: !53)
!3501 = !DILocalVariable(name: "this", arg: 1, scope: !3500, type: !3502, flags: DIFlagArtificial | DIFlagObjectPointer)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!3503 = !DILocation(line: 0, scope: !3500)
!3504 = !DILocation(line: 468, column: 49, scope: !3500)
!3505 = !DILocation(line: 468, column: 61, scope: !3500)
!3506 = !DILocation(line: 468, column: 78, scope: !3500)
!3507 = distinct !DISubprogram(name: "err", linkageName: "?err@?$expected@HH@tl@@AEAAAEAV?$unexpected@H@2@XZ", scope: !2415, file: !2416, line: 1252, type: !2633, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2632, retainedNodes: !53)
!3508 = !DILocalVariable(name: "this", arg: 1, scope: !3507, type: !2734, flags: DIFlagArtificial | DIFlagObjectPointer)
!3509 = !DILocation(line: 0, scope: !3507)
!3510 = !DILocation(line: 1252, column: 70, scope: !3507)
!3511 = !DILocation(line: 1252, column: 57, scope: !3507)
!3512 = distinct !DISubprogram(name: "value", linkageName: "?value@?$unexpected@H@tl@@QEGAAAEAHXZ", scope: !2443, file: !2416, line: 142, type: !2462, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2461, retainedNodes: !53)
!3513 = !DILocalVariable(name: "this", arg: 1, scope: !3512, type: !2627, flags: DIFlagArtificial | DIFlagObjectPointer)
!3514 = !DILocation(line: 0, scope: !3512)
!3515 = !DILocation(line: 142, column: 55, scope: !3512)
!3516 = !DILocation(line: 142, column: 48, scope: !3512)
!3517 = distinct !DISubprogram(name: "_vfprintf_l", scope: !1272, file: !1272, line: 635, type: !3518, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!5, !1308, !351, !3520, !964}
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3521)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "_locale_t", file: !1263, line: 609, baseType: !3522)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__crt_locale_pointers", file: !1263, line: 607, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__crt_locale_pointers", file: !1263, line: 603, size: 128, flags: DIFlagTypePassByValue, elements: !3525, identifier: ".?AU__crt_locale_pointers@@")
!3525 = !{!3526, !3529}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "locinfo", scope: !3524, file: !1263, line: 605, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "__crt_locale_data", file: !1263, line: 605, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AU__crt_locale_data@@")
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mbcinfo", scope: !3524, file: !1263, line: 606, baseType: !3530, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "__crt_multibyte_data", file: !1263, line: 606, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AU__crt_multibyte_data@@")
!3532 = !DILocalVariable(name: "_ArgList", arg: 4, scope: !3517, file: !1272, line: 639, type: !964)
!3533 = !DILocation(line: 639, column: 36, scope: !3517)
!3534 = !DILocalVariable(name: "_Locale", arg: 3, scope: !3517, file: !1272, line: 638, type: !3520)
!3535 = !DILocation(line: 638, column: 36, scope: !3517)
!3536 = !DILocalVariable(name: "_Format", arg: 2, scope: !3517, file: !1272, line: 637, type: !351)
!3537 = !DILocation(line: 637, column: 36, scope: !3517)
!3538 = !DILocalVariable(name: "_Stream", arg: 1, scope: !3517, file: !1272, line: 636, type: !1308)
!3539 = !DILocation(line: 636, column: 36, scope: !3517)
!3540 = !DILocation(line: 645, column: 103, scope: !3517)
!3541 = !DILocation(line: 645, column: 94, scope: !3517)
!3542 = !DILocation(line: 645, column: 85, scope: !3517)
!3543 = !DILocation(line: 645, column: 76, scope: !3517)
!3544 = !DILocation(line: 645, column: 40, scope: !3517)
!3545 = !DILocation(line: 645, column: 16, scope: !3517)
!3546 = !DILocation(line: 645, column: 9, scope: !3517)
!3547 = !DILocation(line: 92, column: 9, scope: !19)
!3548 = distinct !DISubprogram(name: "_Ptr_base", linkageName: "??0?$_Ptr_base@H@std@@IEAA@XZ", scope: !2750, file: !2073, line: 739, type: !2819, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2818, retainedNodes: !53)
!3549 = !DILocalVariable(name: "this", arg: 1, scope: !3548, type: !3550, flags: DIFlagArtificial | DIFlagObjectPointer)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!3551 = !DILocation(line: 0, scope: !3548)
!3552 = !DILocation(line: 839, column: 17, scope: !3548)
!3553 = !DILocation(line: 840, column: 20, scope: !3548)
!3554 = !DILocation(line: 739, column: 42, scope: !3548)
!3555 = distinct !DISubprogram(name: "_Compressed_pair<>", linkageName: "??$?0$$V@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z", scope: !3030, file: !157, line: 1334, type: !3556, scopeLine: 1336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3409, declaration: !3558, retainedNodes: !53)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !3049, !3402}
!3558 = !DISubprogram(name: "_Compressed_pair<>", scope: !3030, file: !157, line: 1334, type: !3556, scopeLine: 1334, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !3409)
!3559 = !DILocalVariable(arg: 2, scope: !3555, file: !157, line: 1334, type: !3402)
!3560 = !DILocation(line: 1334, column: 67, scope: !3555)
!3561 = !DILocalVariable(name: "this", arg: 1, scope: !3555, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3563 = !DILocation(line: 0, scope: !3555)
!3564 = !DILocation(line: 1336, column: 60, scope: !3555)
!3565 = !DILocation(line: 1336, column: 19, scope: !3555)
!3566 = !DILocation(line: 1336, column: 61, scope: !3555)
!3567 = distinct !DISubprogram(name: "_Tidy_deallocate", linkageName: "?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !142, file: !141, line: 4299, type: !307, scopeLine: 4299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !948, retainedNodes: !53)
!3568 = !DILocalVariable(name: "this", arg: 1, scope: !3567, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!3569 = !DILocation(line: 0, scope: !3567)
!3570 = !DILocation(line: 4300, column: 9, scope: !3567)
!3571 = !DILocation(line: 4300, column: 17, scope: !3567)
!3572 = !DILocation(line: 4300, column: 25, scope: !3567)
!3573 = !DILocation(line: 4301, column: 13, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3567, file: !141, line: 4301, column: 13)
!3575 = !DILocation(line: 4301, column: 21, scope: !3574)
!3576 = !DILocation(line: 4301, column: 29, scope: !3574)
!3577 = !DILocation(line: 4301, column: 13, scope: !3567)
!3578 = !DILocalVariable(name: "_Ptr", scope: !3579, file: !141, line: 4302, type: !3580)
!3579 = distinct !DILexicalBlock(scope: !3574, file: !141, line: 4301, column: 54)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3581)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !142, file: !141, line: 2230, baseType: !323)
!3582 = !DILocation(line: 4302, column: 27, scope: !3579)
!3583 = !DILocation(line: 4302, column: 34, scope: !3579)
!3584 = !DILocation(line: 4302, column: 42, scope: !3579)
!3585 = !DILocation(line: 4302, column: 50, scope: !3579)
!3586 = !DILocation(line: 4302, column: 54, scope: !3579)
!3587 = !DILocalVariable(name: "_Al", scope: !3579, file: !141, line: 4303, type: !287)
!3588 = !DILocation(line: 4303, column: 19, scope: !3579)
!3589 = !DILocation(line: 4303, column: 34, scope: !3579)
!3590 = !DILocation(line: 4304, column: 31, scope: !3579)
!3591 = !DILocation(line: 4304, column: 39, scope: !3579)
!3592 = !DILocation(line: 4304, column: 47, scope: !3579)
!3593 = !DILocation(line: 4304, column: 51, scope: !3579)
!3594 = !DILocation(line: 4304, column: 13, scope: !3579)
!3595 = !DILocation(line: 4305, column: 13, scope: !3579)
!3596 = !DILocation(line: 4305, column: 34, scope: !3579)
!3597 = !DILocation(line: 4305, column: 42, scope: !3579)
!3598 = !DILocation(line: 4305, column: 50, scope: !3579)
!3599 = !DILocation(line: 4305, column: 57, scope: !3579)
!3600 = !DILocation(line: 4305, column: 28, scope: !3579)
!3601 = !DILocation(line: 4305, column: 17, scope: !3579)
!3602 = !DILocation(line: 4306, column: 9, scope: !3579)
!3603 = !DILocation(line: 4308, column: 9, scope: !3567)
!3604 = !DILocation(line: 4308, column: 17, scope: !3567)
!3605 = !DILocation(line: 4308, column: 25, scope: !3567)
!3606 = !DILocation(line: 4308, column: 33, scope: !3567)
!3607 = !DILocation(line: 4309, column: 9, scope: !3567)
!3608 = !DILocation(line: 4309, column: 17, scope: !3567)
!3609 = !DILocation(line: 4309, column: 25, scope: !3567)
!3610 = !DILocation(line: 4309, column: 33, scope: !3567)
!3611 = !DILocation(line: 4311, column: 54, scope: !3567)
!3612 = !DILocation(line: 4311, column: 25, scope: !3567)
!3613 = !DILocation(line: 4311, column: 33, scope: !3567)
!3614 = !DILocation(line: 4311, column: 41, scope: !3567)
!3615 = !DILocation(line: 4311, column: 45, scope: !3567)
!3616 = !DILocation(line: 4311, column: 9, scope: !3567)
!3617 = !DILocation(line: 4312, column: 5, scope: !3567)
!3618 = distinct !DISubprogram(name: "~_Compressed_pair", linkageName: "??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ", scope: !156, file: !157, line: 1327, type: !3619, scopeLine: 1327, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3621, retainedNodes: !53)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !288}
!3621 = !DISubprogram(name: "~_Compressed_pair", scope: !156, type: !3619, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3622 = !DILocalVariable(name: "this", arg: 1, scope: !3618, type: !3623, flags: DIFlagArtificial | DIFlagObjectPointer)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!3624 = !DILocation(line: 0, scope: !3618)
!3625 = !DILocation(line: 1327, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3618, file: !157, line: 1327, column: 7)
!3627 = !DILocation(line: 1327, column: 7, scope: !3618)
!3628 = distinct !DISubprogram(name: "_Orphan_all", linkageName: "?_Orphan_all@_Container_base0@std@@QEAAXXZ", scope: !205, file: !157, line: 1065, type: !208, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !207, retainedNodes: !53)
!3629 = !DILocalVariable(name: "this", arg: 1, scope: !3628, type: !2304, flags: DIFlagArtificial | DIFlagObjectPointer)
!3630 = !DILocation(line: 0, scope: !3628)
!3631 = !DILocation(line: 1065, column: 34, scope: !3628)
!3632 = distinct !DISubprogram(name: "_Large_string_engaged", linkageName: "?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ", scope: !201, file: !141, line: 2152, type: !270, scopeLine: 2152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !269, retainedNodes: !53)
!3633 = !DILocalVariable(name: "this", arg: 1, scope: !3632, type: !3634, flags: DIFlagArtificial | DIFlagObjectPointer)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3635 = !DILocation(line: 0, scope: !3632)
!3636 = !DILocation(line: 2153, column: 29, scope: !3632)
!3637 = !DILocation(line: 2153, column: 26, scope: !3632)
!3638 = !DILocation(line: 2153, column: 9, scope: !3632)
!3639 = distinct !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ", scope: !142, file: !141, line: 4324, type: !952, scopeLine: 4324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !951, retainedNodes: !53)
!3640 = !DILocalVariable(name: "this", arg: 1, scope: !3639, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!3641 = !DILocation(line: 0, scope: !3639)
!3642 = !DILocation(line: 4325, column: 16, scope: !3639)
!3643 = !DILocation(line: 4325, column: 24, scope: !3639)
!3644 = !DILocation(line: 4325, column: 9, scope: !3639)
!3645 = distinct !DISubprogram(name: "_Destroy_in_place<char *>", linkageName: "??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z", scope: !8, file: !157, line: 267, type: !3646, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3649, retainedNodes: !53)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !165, size: 64)
!3649 = !{!3650}
!3650 = !DITemplateTypeParameter(name: "_Ty", type: !165)
!3651 = !DILocalVariable(name: "_Obj", arg: 1, scope: !3645, file: !157, line: 267, type: !3648)
!3652 = !DILocation(line: 267, column: 29, scope: !3645)
!3653 = !DILocation(line: 268, column: 5, scope: !3645)
!3654 = !DILocation(line: 269, column: 1, scope: !3645)
!3655 = distinct !DISubprogram(name: "deallocate", linkageName: "?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z", scope: !160, file: !157, line: 801, type: !184, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !183, retainedNodes: !53)
!3656 = !DILocalVariable(name: "_Count", arg: 3, scope: !3655, file: !157, line: 801, type: !150)
!3657 = !DILocation(line: 801, column: 51, scope: !3655)
!3658 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !3655, file: !157, line: 801, type: !186)
!3659 = !DILocation(line: 801, column: 32, scope: !3655)
!3660 = !DILocalVariable(name: "this", arg: 1, scope: !3655, type: !3661, flags: DIFlagArtificial | DIFlagObjectPointer)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3662 = !DILocation(line: 0, scope: !3655)
!3663 = !DILocation(line: 803, column: 60, scope: !3655)
!3664 = !DILocation(line: 803, column: 58, scope: !3655)
!3665 = !DILocation(line: 803, column: 40, scope: !3655)
!3666 = !DILocation(line: 803, column: 9, scope: !3655)
!3667 = !DILocation(line: 804, column: 5, scope: !3655)
!3668 = distinct !DISubprogram(name: "assign", linkageName: "?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z", scope: !776, file: !141, line: 372, type: !798, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !797, retainedNodes: !53)
!3669 = !DILocalVariable(name: "_Right", arg: 2, scope: !3668, file: !141, line: 372, type: !174)
!3670 = !DILocation(line: 372, column: 64, scope: !3668)
!3671 = !DILocalVariable(name: "_Left", arg: 1, scope: !3668, file: !141, line: 372, type: !168)
!3672 = !DILocation(line: 372, column: 44, scope: !3668)
!3673 = !DILocation(line: 373, column: 17, scope: !3668)
!3674 = !DILocation(line: 373, column: 9, scope: !3668)
!3675 = !DILocation(line: 373, column: 15, scope: !3668)
!3676 = !DILocation(line: 374, column: 5, scope: !3668)
!3677 = distinct !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ", scope: !156, file: !157, line: 1343, type: !285, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !284, retainedNodes: !53)
!3678 = !DILocalVariable(name: "this", arg: 1, scope: !3677, type: !3623, flags: DIFlagArtificial | DIFlagObjectPointer)
!3679 = !DILocation(line: 0, scope: !3677)
!3680 = !DILocation(line: 1344, column: 16, scope: !3677)
!3681 = !DILocation(line: 1344, column: 9, scope: !3677)
!3682 = distinct !DISubprogram(name: "_Deallocate<16, 0>", linkageName: "??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z", scope: !8, file: !157, line: 213, type: !3683, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3685, retainedNodes: !53)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !968, !151}
!3685 = !{!3686, !2194}
!3686 = !DITemplateValueParameter(name: "_Align", type: !24, value: i64 16)
!3687 = !DILocalVariable(name: "_Bytes", arg: 2, scope: !3682, file: !157, line: 213, type: !151)
!3688 = !DILocation(line: 213, column: 37, scope: !3682)
!3689 = !DILocalVariable(name: "_Ptr", arg: 1, scope: !3682, file: !157, line: 213, type: !968)
!3690 = !DILocation(line: 213, column: 24, scope: !3682)
!3691 = !DILocation(line: 216, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3682, file: !157, line: 216, column: 9)
!3693 = !DILocation(line: 216, column: 16, scope: !3692)
!3694 = !DILocation(line: 216, column: 9, scope: !3682)
!3695 = !DILocation(line: 217, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !157, line: 216, column: 46)
!3697 = !DILocation(line: 218, column: 5, scope: !3696)
!3698 = !DILocation(line: 221, column: 29, scope: !3682)
!3699 = !DILocation(line: 221, column: 23, scope: !3682)
!3700 = !DILocation(line: 221, column: 5, scope: !3682)
!3701 = !DILocation(line: 222, column: 1, scope: !3682)
!3702 = distinct !DISubprogram(name: "_Adjust_manually_vector_aligned", linkageName: "?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z", scope: !8, file: !157, line: 132, type: !3703, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !968, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !151, size: 64)
!3707 = !DILocalVariable(name: "_Bytes", arg: 2, scope: !3702, file: !157, line: 132, type: !3706)
!3708 = !DILocation(line: 132, column: 66, scope: !3702)
!3709 = !DILocalVariable(name: "_Ptr", arg: 1, scope: !3702, file: !157, line: 132, type: !3705)
!3710 = !DILocation(line: 132, column: 52, scope: !3702)
!3711 = !DILocation(line: 134, column: 5, scope: !3702)
!3712 = !DILocation(line: 134, column: 12, scope: !3702)
!3713 = !DILocalVariable(name: "_Ptr_user", scope: !3702, file: !157, line: 136, type: !3714)
!3714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3715)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!3717 = !DILocation(line: 136, column: 28, scope: !3702)
!3718 = !DILocation(line: 136, column: 69, scope: !3702)
!3719 = !DILocation(line: 136, column: 40, scope: !3702)
!3720 = !DILocalVariable(name: "_Ptr_container", scope: !3702, file: !157, line: 137, type: !3716)
!3721 = !DILocation(line: 137, column: 21, scope: !3702)
!3722 = !DILocation(line: 137, column: 40, scope: !3702)
!3723 = !DILocalVariable(name: "_Min_back_shift", scope: !3702, file: !157, line: 148, type: !3716)
!3724 = !DILocation(line: 148, column: 25, scope: !3702)
!3725 = !DILocalVariable(name: "_Back_shift", scope: !3702, file: !157, line: 150, type: !3716)
!3726 = !DILocation(line: 150, column: 21, scope: !3702)
!3727 = !DILocation(line: 150, column: 63, scope: !3702)
!3728 = !DILocation(line: 150, column: 35, scope: !3702)
!3729 = !DILocation(line: 150, column: 71, scope: !3702)
!3730 = !DILocation(line: 150, column: 69, scope: !3702)
!3731 = !DILocation(line: 151, column: 5, scope: !3702)
!3732 = !DILocation(line: 151, column: 5, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !157, line: 151, column: 5)
!3734 = distinct !DILexicalBlock(scope: !3702, file: !157, line: 151, column: 5)
!3735 = !DILocation(line: 151, column: 5, scope: !3734)
!3736 = !DILocation(line: 151, column: 5, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3733, file: !157, line: 151, column: 5)
!3738 = !DILocation(line: 151, column: 5, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3733, file: !157, line: 151, column: 5)
!3740 = !DILocation(line: 151, column: 5, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3739, file: !157, line: 151, column: 5)
!3742 = !DILocation(line: 152, column: 36, scope: !3702)
!3743 = !DILocation(line: 152, column: 12, scope: !3702)
!3744 = !DILocation(line: 152, column: 5, scope: !3702)
!3745 = !DILocation(line: 152, column: 10, scope: !3702)
!3746 = !DILocation(line: 153, column: 1, scope: !3702)
!3747 = distinct !DISubprogram(name: "~_String_val", linkageName: "??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !201, file: !141, line: 2114, type: !255, scopeLine: 2114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3748, retainedNodes: !53)
!3748 = !DISubprogram(name: "~_String_val", scope: !201, type: !255, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3749 = !DILocalVariable(name: "this", arg: 1, scope: !3747, type: !3750, flags: DIFlagArtificial | DIFlagObjectPointer)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!3751 = !DILocation(line: 0, scope: !3747)
!3752 = !DILocation(line: 2114, column: 7, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3747, file: !141, line: 2114, column: 7)
!3754 = !DILocation(line: 2114, column: 7, scope: !3747)
!3755 = distinct !DISubprogram(name: "~_Bxty", linkageName: "??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !233, file: !141, line: 2180, type: !248, scopeLine: 2180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !251, retainedNodes: !53)
!3756 = !DILocalVariable(name: "this", arg: 1, scope: !3755, type: !3757, flags: DIFlagArtificial | DIFlagObjectPointer)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!3758 = !DILocation(line: 0, scope: !3755)
!3759 = !DILocation(line: 2180, column: 28, scope: !3755)
!3760 = distinct !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@U?$default_delete@VClassWithDestructor@@@std@@PEAVClassWithDestructor@@$00@std@@QEAAAEAU?$default_delete@VClassWithDestructor@@@2@XZ", scope: !2076, file: !157, line: 1343, type: !2120, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2119, retainedNodes: !53)
!3761 = !DILocalVariable(name: "this", arg: 1, scope: !3760, type: !3414, flags: DIFlagArtificial | DIFlagObjectPointer)
!3762 = !DILocation(line: 0, scope: !3760)
!3763 = !DILocation(line: 1344, column: 16, scope: !3760)
!3764 = !DILocation(line: 1344, column: 9, scope: !3760)
!3765 = distinct !DISubprogram(name: "operator()", linkageName: "??R?$default_delete@VClassWithDestructor@@@std@@QEBAXPEAVClassWithDestructor@@@Z", scope: !2079, file: !2073, line: 961, type: !2086, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2085, retainedNodes: !53)
!3766 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !3765, file: !2073, line: 961, type: !2090)
!3767 = !DILocation(line: 961, column: 24, scope: !3765)
!3768 = !DILocalVariable(name: "this", arg: 1, scope: !3765, type: !3769, flags: DIFlagArtificial | DIFlagObjectPointer)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!3770 = !DILocation(line: 0, scope: !3765)
!3771 = !DILocation(line: 964, column: 12, scope: !3765)
!3772 = !DILocation(line: 964, column: 5, scope: !3765)
!3773 = !DILocation(line: 965, column: 3, scope: !3765)
!3774 = distinct !DISubprogram(name: "_Throw_bad_optional_access", linkageName: "?_Throw_bad_optional_access@std@@YAXXZ", scope: !8, file: !43, line: 52, type: !277, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!3775 = !DILocation(line: 53, column: 5, scope: !3774)
!3776 = distinct !DISubprogram(name: "bad_optional_access", linkageName: "??0bad_optional_access@std@@QEAA@XZ", scope: !3777, file: !43, line: 38, type: !3818, scopeLine: 38, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3821, retainedNodes: !53)
!3777 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "bad_optional_access", scope: !8, file: !43, line: 38, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3778, vtableHolder: !3780, identifier: ".?AVbad_optional_access@std@@")
!3778 = !{!3779, !3813}
!3779 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3777, baseType: !3780, flags: DIFlagPublic, extraData: i32 0)
!3780 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !8, file: !3781, line: 48, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3782, vtableHolder: !3780, identifier: ".?AVexception@std@@")
!3781 = !DIFile(filename: "stl\\vcruntime_exception.h", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!3782 = !{!3783, !3784, !3789, !3793, !3796, !3799, !3804, !3808, !3809}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$exception", scope: !3781, file: !3781, baseType: !2763, size: 64, flags: DIFlagArtificial)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_Data", scope: !3780, file: !3781, line: 100, baseType: !3785, size: 128, offset: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__std_exception_data", file: !3781, line: 25, size: 128, flags: DIFlagTypePassByValue, elements: !3786, identifier: ".?AU__std_exception_data@@")
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_What", scope: !3785, file: !3781, line: 27, baseType: !172, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_DoFree", scope: !3785, file: !3781, line: 28, baseType: !56, size: 8, offset: 64)
!3789 = !DISubprogram(name: "exception", scope: !3780, file: !3781, line: 52, type: !3790, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3793 = !DISubprogram(name: "exception", scope: !3780, file: !3781, line: 57, type: !3794, scopeLine: 57, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3792, !351}
!3796 = !DISubprogram(name: "exception", scope: !3780, file: !3781, line: 64, type: !3797, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3792, !351, !5}
!3799 = !DISubprogram(name: "exception", scope: !3780, file: !3781, line: 70, type: !3800, scopeLine: 70, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !3792, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3804 = !DISubprogram(name: "operator=", linkageName: "??4exception@std@@QEAAAEAV01@AEBV01@@Z", scope: !3780, file: !3781, line: 76, type: !3805, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!3807, !3792, !3802}
!3807 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3780, size: 64)
!3808 = !DISubprogram(name: "~exception", scope: !3780, file: !3781, line: 88, type: !3790, scopeLine: 88, containingType: !3780, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagVirtual)
!3809 = !DISubprogram(name: "what", linkageName: "?what@exception@std@@UEBAPEBDXZ", scope: !3780, file: !3781, line: 93, type: !3810, scopeLine: 93, containingType: !3780, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped | DIFlagIntroducedVirtual, spFlags: DISPFlagVirtual)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!172, !3812}
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3813 = !DISubprogram(name: "what", linkageName: "?what@bad_optional_access@std@@UEBAPEBDXZ", scope: !3777, file: !43, line: 40, type: !3814, scopeLine: 40, containingType: !3777, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!172, !3816}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3777)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3821 = !DISubprogram(name: "bad_optional_access", scope: !3777, type: !3818, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3822 = !DILocalVariable(name: "this", arg: 1, scope: !3776, type: !3823, flags: DIFlagArtificial | DIFlagObjectPointer)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3824 = !DILocation(line: 0, scope: !3776)
!3825 = !DILocation(line: 38, column: 7, scope: !3776)
!3826 = distinct !DISubprogram(name: "bad_optional_access", linkageName: "??0bad_optional_access@std@@QEAA@AEBV01@@Z", scope: !3777, file: !43, line: 38, type: !3827, scopeLine: 38, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3830, retainedNodes: !53)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3820, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3817, size: 64)
!3830 = !DISubprogram(name: "bad_optional_access", scope: !3777, type: !3827, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3831 = !DILocalVariable(arg: 2, scope: !3826, type: !3829)
!3832 = !DILocation(line: 0, scope: !3826)
!3833 = !DILocalVariable(name: "this", arg: 1, scope: !3826, type: !3823, flags: DIFlagArtificial | DIFlagObjectPointer)
!3834 = !DILocation(line: 38, column: 7, scope: !3826)
!3835 = distinct !DISubprogram(name: "exception", linkageName: "??0exception@std@@QEAA@AEBV01@@Z", scope: !3780, file: !3781, line: 70, type: !3800, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3799, retainedNodes: !53)
!3836 = !DILocalVariable(name: "_Other", arg: 2, scope: !3835, file: !3781, line: 70, type: !3802)
!3837 = !DILocation(line: 70, column: 32, scope: !3835)
!3838 = !DILocalVariable(name: "this", arg: 1, scope: !3835, type: !3839, flags: DIFlagArtificial | DIFlagObjectPointer)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3840 = !DILocation(line: 0, scope: !3835)
!3841 = !DILocation(line: 72, column: 5, scope: !3835)
!3842 = !DILocation(line: 71, column: 11, scope: !3835)
!3843 = !DILocation(line: 73, column: 46, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3835, file: !3781, line: 72, column: 5)
!3845 = !DILocation(line: 73, column: 31, scope: !3844)
!3846 = !DILocation(line: 73, column: 38, scope: !3844)
!3847 = !DILocation(line: 73, column: 9, scope: !3844)
!3848 = !DILocation(line: 74, column: 5, scope: !3835)
!3849 = distinct !DISubprogram(name: "~bad_optional_access", linkageName: "??1bad_optional_access@std@@UEAA@XZ", scope: !3777, file: !43, line: 38, type: !3818, scopeLine: 38, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3850, retainedNodes: !53)
!3850 = !DISubprogram(name: "~bad_optional_access", scope: !3777, type: !3818, containingType: !3777, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3851 = !DILocalVariable(name: "this", arg: 1, scope: !3849, type: !3823, flags: DIFlagArtificial | DIFlagObjectPointer)
!3852 = !DILocation(line: 0, scope: !3849)
!3853 = !DILocation(line: 38, column: 7, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3849, file: !43, line: 38, column: 7)
!3855 = !DILocation(line: 38, column: 7, scope: !3849)
!3856 = distinct !DISubprogram(name: "exception", linkageName: "??0exception@std@@QEAA@XZ", scope: !3780, file: !3781, line: 52, type: !3790, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3789, retainedNodes: !53)
!3857 = !DILocalVariable(name: "this", arg: 1, scope: !3856, type: !3839, flags: DIFlagArtificial | DIFlagObjectPointer)
!3858 = !DILocation(line: 0, scope: !3856)
!3859 = !DILocation(line: 54, column: 5, scope: !3856)
!3860 = !DILocation(line: 53, column: 11, scope: !3856)
!3861 = !DILocation(line: 55, column: 5, scope: !3856)
!3862 = distinct !DISubprogram(name: "~bad_optional_access", linkageName: "??_Gbad_optional_access@std@@UEAAPEAXI@Z", scope: !3777, file: !43, line: 38, type: !3818, scopeLine: 38, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3850, retainedNodes: !53)
!3863 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !3862, type: !5, flags: DIFlagArtificial)
!3864 = !DILocation(line: 0, scope: !3862)
!3865 = !DILocalVariable(name: "this", arg: 1, scope: !3862, type: !3823, flags: DIFlagArtificial | DIFlagObjectPointer)
!3866 = !DILocation(line: 38, column: 7, scope: !3862)
!3867 = distinct !DISubprogram(name: "what", linkageName: "?what@bad_optional_access@std@@UEBAPEBDXZ", scope: !3777, file: !43, line: 40, type: !3814, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3813, retainedNodes: !53)
!3868 = !DILocalVariable(name: "this", arg: 1, scope: !3867, type: !3869, flags: DIFlagArtificial | DIFlagObjectPointer)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3870 = !DILocation(line: 0, scope: !3867)
!3871 = !DILocation(line: 41, column: 9, scope: !3867)
!3872 = distinct !DISubprogram(name: "~exception", linkageName: "??_Gexception@std@@UEAAPEAXI@Z", scope: !3780, file: !3781, line: 88, type: !3790, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3808, retainedNodes: !53)
!3873 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !3872, type: !5, flags: DIFlagArtificial)
!3874 = !DILocation(line: 0, scope: !3872)
!3875 = !DILocalVariable(name: "this", arg: 1, scope: !3872, type: !3839, flags: DIFlagArtificial | DIFlagObjectPointer)
!3876 = !DILocation(line: 89, column: 5, scope: !3872)
!3877 = !DILocation(line: 91, column: 5, scope: !3872)
!3878 = distinct !DISubprogram(name: "what", linkageName: "?what@exception@std@@UEBAPEBDXZ", scope: !3780, file: !3781, line: 93, type: !3810, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3809, retainedNodes: !53)
!3879 = !DILocalVariable(name: "this", arg: 1, scope: !3878, type: !3880, flags: DIFlagArtificial | DIFlagObjectPointer)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3881 = !DILocation(line: 0, scope: !3878)
!3882 = !DILocation(line: 95, column: 16, scope: !3878)
!3883 = !DILocation(line: 95, column: 22, scope: !3878)
!3884 = !DILocation(line: 95, column: 30, scope: !3878)
!3885 = !DILocation(line: 95, column: 36, scope: !3878)
!3886 = !DILocation(line: 95, column: 9, scope: !3878)
!3887 = distinct !DISubprogram(name: "~exception", linkageName: "??1exception@std@@UEAA@XZ", scope: !3780, file: !3781, line: 88, type: !3790, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3808, retainedNodes: !53)
!3888 = !DILocalVariable(name: "this", arg: 1, scope: !3887, type: !3839, flags: DIFlagArtificial | DIFlagObjectPointer)
!3889 = !DILocation(line: 0, scope: !3887)
!3890 = !DILocation(line: 89, column: 5, scope: !3887)
!3891 = !DILocation(line: 90, column: 34, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !3781, line: 89, column: 5)
!3893 = !DILocation(line: 90, column: 9, scope: !3892)
!3894 = !DILocation(line: 91, column: 5, scope: !3887)
!3895 = distinct !DISubprogram(name: "_Compressed_pair<>", linkageName: "??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z", scope: !156, file: !157, line: 1334, type: !3896, scopeLine: 1336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3409, declaration: !3898, retainedNodes: !53)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !288, !3402}
!3898 = !DISubprogram(name: "_Compressed_pair<>", scope: !156, file: !157, line: 1334, type: !3896, scopeLine: 1334, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !3409)
!3899 = !DILocalVariable(arg: 2, scope: !3895, file: !157, line: 1334, type: !3402)
!3900 = !DILocation(line: 1334, column: 67, scope: !3895)
!3901 = !DILocalVariable(name: "this", arg: 1, scope: !3895, type: !3623, flags: DIFlagArtificial | DIFlagObjectPointer)
!3902 = !DILocation(line: 0, scope: !3895)
!3903 = !DILocation(line: 1336, column: 60, scope: !3895)
!3904 = !DILocation(line: 1336, column: 11, scope: !3895)
!3905 = !DILocation(line: 1336, column: 19, scope: !3895)
!3906 = !DILocation(line: 1336, column: 61, scope: !3895)
!3907 = !DILocation(line: 1336, column: 61, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3895, file: !157, line: 1336, column: 60)
!3909 = distinct !DISubprogram(name: "_Fake_proxy_ptr_impl", linkageName: "??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z", scope: !2275, file: !157, line: 1256, type: !2297, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2296, retainedNodes: !53)
!3910 = !DILocalVariable(arg: 3, scope: !3909, file: !157, line: 1256, type: !2299)
!3911 = !DILocation(line: 1256, column: 73, scope: !3909)
!3912 = !DILocalVariable(arg: 2, scope: !3909, file: !157, line: 1256, type: !218)
!3913 = !DILocation(line: 1256, column: 48, scope: !3909)
!3914 = !DILocalVariable(name: "this", arg: 1, scope: !3909, type: !3915, flags: DIFlagArtificial | DIFlagObjectPointer)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!3916 = !DILocation(line: 0, scope: !3909)
!3917 = !DILocation(line: 1256, column: 85, scope: !3909)
!3918 = distinct !DISubprogram(name: "_Tidy_init", linkageName: "?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ", scope: !142, file: !141, line: 4292, type: !307, scopeLine: 4292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !947, retainedNodes: !53)
!3919 = !DILocalVariable(name: "this", arg: 1, scope: !3918, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!3920 = !DILocation(line: 0, scope: !3918)
!3921 = !DILocation(line: 4293, column: 9, scope: !3918)
!3922 = !DILocation(line: 4293, column: 17, scope: !3918)
!3923 = !DILocation(line: 4293, column: 25, scope: !3918)
!3924 = !DILocation(line: 4293, column: 33, scope: !3918)
!3925 = !DILocation(line: 4294, column: 9, scope: !3918)
!3926 = !DILocation(line: 4294, column: 17, scope: !3918)
!3927 = !DILocation(line: 4294, column: 25, scope: !3918)
!3928 = !DILocation(line: 4294, column: 33, scope: !3918)
!3929 = !DILocation(line: 4296, column: 54, scope: !3918)
!3930 = !DILocation(line: 4296, column: 25, scope: !3918)
!3931 = !DILocation(line: 4296, column: 33, scope: !3918)
!3932 = !DILocation(line: 4296, column: 41, scope: !3918)
!3933 = !DILocation(line: 4296, column: 45, scope: !3918)
!3934 = !DILocation(line: 4296, column: 9, scope: !3918)
!3935 = !DILocation(line: 4297, column: 5, scope: !3918)
!3936 = distinct !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z", scope: !142, file: !141, line: 2983, type: !486, scopeLine: 2983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !510, retainedNodes: !53)
!3937 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !3936, file: !141, line: 2983, type: !351)
!3938 = !DILocation(line: 2983, column: 52, scope: !3936)
!3939 = !DILocalVariable(name: "this", arg: 1, scope: !3936, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!3940 = !DILocation(line: 0, scope: !3936)
!3941 = !DILocation(line: 2984, column: 70, scope: !3936)
!3942 = !DILocation(line: 2984, column: 54, scope: !3936)
!3943 = !DILocation(line: 2984, column: 29, scope: !3936)
!3944 = !DILocation(line: 2984, column: 23, scope: !3936)
!3945 = !DILocation(line: 2984, column: 16, scope: !3936)
!3946 = !DILocation(line: 2984, column: 9, scope: !3936)
!3947 = distinct !DISubprogram(name: "_Release", linkageName: "?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ", scope: !2275, file: !157, line: 1259, type: !2306, scopeLine: 1259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2305, retainedNodes: !53)
!3948 = !DILocalVariable(name: "this", arg: 1, scope: !3947, type: !3915, flags: DIFlagArtificial | DIFlagObjectPointer)
!3949 = !DILocation(line: 0, scope: !3947)
!3950 = !DILocation(line: 1259, column: 31, scope: !3947)
!3951 = distinct !DISubprogram(name: "allocator", linkageName: "??0?$allocator@D@std@@QEAA@XZ", scope: !160, file: !157, line: 795, type: !176, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !175, retainedNodes: !53)
!3952 = !DILocalVariable(name: "this", arg: 1, scope: !3951, type: !3661, flags: DIFlagArtificial | DIFlagObjectPointer)
!3953 = !DILocation(line: 0, scope: !3951)
!3954 = !DILocation(line: 795, column: 37, scope: !3951)
!3955 = distinct !DISubprogram(name: "_String_val", linkageName: "??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !201, file: !141, line: 2124, type: !255, scopeLine: 2124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !254, retainedNodes: !53)
!3956 = !DILocalVariable(name: "this", arg: 1, scope: !3955, type: !3750, flags: DIFlagArtificial | DIFlagObjectPointer)
!3957 = !DILocation(line: 0, scope: !3955)
!3958 = !DILocation(line: 2124, column: 50, scope: !3955)
!3959 = !DILocation(line: 2124, column: 21, scope: !3955)
!3960 = !DILocation(line: 2124, column: 28, scope: !3955)
!3961 = !DILocation(line: 2124, column: 40, scope: !3955)
!3962 = !DILocation(line: 2124, column: 51, scope: !3955)
!3963 = !DILocation(line: 2124, column: 51, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3955, file: !141, line: 2124, column: 50)
!3965 = distinct !DISubprogram(name: "_Bxty", linkageName: "??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ", scope: !233, file: !141, line: 2178, type: !248, scopeLine: 2178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !247, retainedNodes: !53)
!3966 = !DILocalVariable(name: "this", arg: 1, scope: !3965, type: !3757, flags: DIFlagArtificial | DIFlagObjectPointer)
!3967 = !DILocation(line: 0, scope: !3965)
!3968 = !DILocation(line: 2178, column: 18, scope: !3965)
!3969 = distinct !DISubprogram(name: "assign", linkageName: "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z", scope: !142, file: !141, line: 2964, type: !501, scopeLine: 2964, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !509, retainedNodes: !53)
!3970 = !DILocalVariable(name: "_Count", arg: 3, scope: !3969, file: !141, line: 2964, type: !315)
!3971 = !DILocation(line: 2964, column: 105, scope: !3969)
!3972 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !3969, file: !141, line: 2964, type: !351)
!3973 = !DILocation(line: 2964, column: 64, scope: !3969)
!3974 = !DILocalVariable(name: "this", arg: 1, scope: !3969, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!3975 = !DILocation(line: 0, scope: !3969)
!3976 = !DILocation(line: 2966, column: 13, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3969, file: !141, line: 2966, column: 13)
!3978 = !DILocation(line: 2966, column: 23, scope: !3977)
!3979 = !DILocation(line: 2966, column: 31, scope: !3977)
!3980 = !DILocation(line: 2966, column: 39, scope: !3977)
!3981 = !DILocation(line: 2966, column: 20, scope: !3977)
!3982 = !DILocation(line: 2966, column: 13, scope: !3969)
!3983 = !DILocalVariable(name: "_Old_ptr", scope: !3984, file: !141, line: 2967, type: !186)
!3984 = distinct !DILexicalBlock(scope: !3977, file: !141, line: 2966, column: 47)
!3985 = !DILocation(line: 2967, column: 26, scope: !3984)
!3986 = !DILocation(line: 2967, column: 39, scope: !3984)
!3987 = !DILocation(line: 2967, column: 47, scope: !3984)
!3988 = !DILocation(line: 2967, column: 55, scope: !3984)
!3989 = !DILocation(line: 2968, column: 39, scope: !3984)
!3990 = !DILocation(line: 2968, column: 13, scope: !3984)
!3991 = !DILocation(line: 2968, column: 21, scope: !3984)
!3992 = !DILocation(line: 2968, column: 29, scope: !3984)
!3993 = !DILocation(line: 2968, column: 37, scope: !3984)
!3994 = !DILocation(line: 2969, column: 43, scope: !3984)
!3995 = !DILocation(line: 2969, column: 37, scope: !3984)
!3996 = !DILocation(line: 2969, column: 27, scope: !3984)
!3997 = !DILocation(line: 2969, column: 13, scope: !3984)
!3998 = !DILocation(line: 2970, column: 47, scope: !3984)
!3999 = !DILocation(line: 2970, column: 29, scope: !3984)
!4000 = !DILocation(line: 2970, column: 38, scope: !3984)
!4001 = !DILocation(line: 2970, column: 13, scope: !3984)
!4002 = !DILocation(line: 2971, column: 13, scope: !3984)
!4003 = !DILocation(line: 2980, column: 13, scope: !3969)
!4004 = !DILocation(line: 2975, column: 13, scope: !3969)
!4005 = !DILocation(line: 2974, column: 16, scope: !3969)
!4006 = !DILocation(line: 2974, column: 9, scope: !3969)
!4007 = !DILocation(line: 2981, column: 5, scope: !3969)
!4008 = distinct !DISubprogram(name: "_Convert_size<unsigned long long>", linkageName: "??$_Convert_size@_K@std@@YA_K_K@Z", scope: !8, file: !157, line: 990, type: !4009, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4011, retainedNodes: !53)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!151, !150}
!4011 = !{!4012}
!4012 = !DITemplateTypeParameter(name: "_Size_type", type: !24)
!4013 = !DILocalVariable(name: "_Len", arg: 1, scope: !4008, file: !157, line: 990, type: !150)
!4014 = !DILocation(line: 990, column: 64, scope: !4008)
!4015 = !DILocation(line: 992, column: 12, scope: !4008)
!4016 = !DILocation(line: 992, column: 5, scope: !4008)
!4017 = distinct !DISubprogram(name: "length", linkageName: "?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z", scope: !776, file: !141, line: 305, type: !782, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !781, retainedNodes: !53)
!4018 = !DILocalVariable(name: "_First", arg: 1, scope: !4017, file: !141, line: 305, type: !351)
!4019 = !DILocation(line: 305, column: 76, scope: !4017)
!4020 = !DILocation(line: 318, column: 37, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4017, file: !141, line: 317, column: 9)
!4022 = !DILocation(line: 318, column: 20, scope: !4021)
!4023 = !DILocation(line: 318, column: 13, scope: !4021)
!4024 = distinct !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ", scope: !201, file: !141, line: 2134, type: !259, scopeLine: 2134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !258, retainedNodes: !53)
!4025 = !DILocalVariable(name: "this", arg: 1, scope: !4024, type: !3750, flags: DIFlagArtificial | DIFlagObjectPointer)
!4026 = !DILocation(line: 0, scope: !4024)
!4027 = !DILocalVariable(name: "_Result", scope: !4024, file: !141, line: 2135, type: !261)
!4028 = !DILocation(line: 2135, column: 21, scope: !4024)
!4029 = !DILocation(line: 2135, column: 31, scope: !4024)
!4030 = !DILocation(line: 2135, column: 35, scope: !4024)
!4031 = !DILocation(line: 2136, column: 13, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4024, file: !141, line: 2136, column: 13)
!4033 = !DILocation(line: 2136, column: 13, scope: !4024)
!4034 = !DILocation(line: 2137, column: 32, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4032, file: !141, line: 2136, column: 38)
!4036 = !DILocation(line: 2137, column: 36, scope: !4035)
!4037 = !DILocation(line: 2137, column: 23, scope: !4035)
!4038 = !DILocation(line: 2137, column: 21, scope: !4035)
!4039 = !DILocation(line: 2138, column: 9, scope: !4035)
!4040 = !DILocation(line: 2140, column: 16, scope: !4024)
!4041 = !DILocation(line: 2140, column: 9, scope: !4024)
!4042 = distinct !DISubprogram(name: "move", linkageName: "?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !776, file: !141, line: 360, type: !785, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !793, retainedNodes: !53)
!4043 = !DILocalVariable(name: "_Count", arg: 3, scope: !4042, file: !141, line: 361, type: !150)
!4044 = !DILocation(line: 361, column: 22, scope: !4042)
!4045 = !DILocalVariable(name: "_First2", arg: 2, scope: !4042, file: !141, line: 360, type: !351)
!4046 = !DILocation(line: 360, column: 109, scope: !4042)
!4047 = !DILocalVariable(name: "_First1", arg: 1, scope: !4042, file: !141, line: 360, type: !186)
!4048 = !DILocation(line: 360, column: 62, scope: !4042)
!4049 = !DILocation(line: 363, column: 50, scope: !4042)
!4050 = !DILocation(line: 363, column: 59, scope: !4042)
!4051 = !DILocation(line: 363, column: 68, scope: !4042)
!4052 = !DILocation(line: 363, column: 36, scope: !4042)
!4053 = !DILocation(line: 363, column: 9, scope: !4042)
!4054 = distinct !DISubprogram(name: "_Reallocate_for<(lambda at C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\stl\\xstring:2976:13), const char *>", linkageName: "??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z", scope: !142, file: !141, line: 4218, type: !4055, scopeLine: 4218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4059, declaration: !4058, retainedNodes: !53)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!397, !300, !315, !4057, !172}
!4057 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !3969, file: !141, line: 2976, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !53, identifier: ".?AV<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@")
!4058 = !DISubprogram(name: "_Reallocate_for<(lambda at C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\stl\\xstring:2976:13), const char *>", linkageName: "??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z", scope: !142, file: !141, line: 4218, type: !4055, scopeLine: 4218, flags: DIFlagPrototyped, spFlags: 0, templateParams: !4059)
!4059 = !{!4060, !4061}
!4060 = !DITemplateTypeParameter(name: "_Fty", type: !4057)
!4061 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_ArgTys", value: !4062)
!4062 = !{!4063}
!4063 = !DITemplateTypeParameter(type: !172)
!4064 = !DILocalVariable(name: "_Args", arg: 4, scope: !4054, file: !141, line: 4218, type: !172)
!4065 = !DILocation(line: 4218, column: 83, scope: !4054)
!4066 = !DILocalVariable(name: "_Fn", arg: 3, scope: !4054, file: !141, line: 4218, type: !4057)
!4067 = !DILocation(line: 4218, column: 67, scope: !4054)
!4068 = !DILocalVariable(name: "_New_size", arg: 2, scope: !4054, file: !141, line: 4218, type: !315)
!4069 = !DILocation(line: 4218, column: 51, scope: !4054)
!4070 = !DILocalVariable(name: "this", arg: 1, scope: !4054, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!4071 = !DILocation(line: 0, scope: !4054)
!4072 = !DILocation(line: 4221, column: 13, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4054, file: !141, line: 4221, column: 13)
!4074 = !DILocation(line: 4221, column: 25, scope: !4073)
!4075 = !DILocation(line: 4221, column: 23, scope: !4073)
!4076 = !DILocation(line: 4221, column: 13, scope: !4054)
!4077 = !DILocation(line: 4222, column: 13, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4073, file: !141, line: 4221, column: 37)
!4079 = !DILocalVariable(name: "_Old_capacity", scope: !4054, file: !141, line: 4225, type: !315)
!4080 = !DILocation(line: 4225, column: 25, scope: !4054)
!4081 = !DILocation(line: 4225, column: 41, scope: !4054)
!4082 = !DILocation(line: 4225, column: 49, scope: !4054)
!4083 = !DILocation(line: 4225, column: 57, scope: !4054)
!4084 = !DILocalVariable(name: "_New_capacity", scope: !4054, file: !141, line: 4226, type: !315)
!4085 = !DILocation(line: 4226, column: 25, scope: !4054)
!4086 = !DILocation(line: 4226, column: 59, scope: !4054)
!4087 = !DILocation(line: 4226, column: 41, scope: !4054)
!4088 = !DILocalVariable(name: "_Al", scope: !4054, file: !141, line: 4227, type: !287)
!4089 = !DILocation(line: 4227, column: 15, scope: !4054)
!4090 = !DILocation(line: 4227, column: 41, scope: !4054)
!4091 = !DILocalVariable(name: "_New_ptr", scope: !4054, file: !141, line: 4228, type: !3580)
!4092 = !DILocation(line: 4228, column: 23, scope: !4054)
!4093 = !DILocation(line: 4228, column: 41, scope: !4054)
!4094 = !DILocation(line: 4228, column: 54, scope: !4054)
!4095 = !DILocation(line: 4228, column: 68, scope: !4054)
!4096 = !DILocation(line: 4228, column: 45, scope: !4054)
!4097 = !DILocation(line: 4229, column: 9, scope: !4054)
!4098 = !DILocation(line: 4229, column: 17, scope: !4054)
!4099 = !DILocation(line: 4229, column: 25, scope: !4054)
!4100 = !DILocation(line: 4230, column: 35, scope: !4054)
!4101 = !DILocation(line: 4230, column: 9, scope: !4054)
!4102 = !DILocation(line: 4230, column: 17, scope: !4054)
!4103 = !DILocation(line: 4230, column: 25, scope: !4054)
!4104 = !DILocation(line: 4230, column: 33, scope: !4054)
!4105 = !DILocation(line: 4231, column: 35, scope: !4054)
!4106 = !DILocation(line: 4231, column: 9, scope: !4054)
!4107 = !DILocation(line: 4231, column: 17, scope: !4054)
!4108 = !DILocation(line: 4231, column: 25, scope: !4054)
!4109 = !DILocation(line: 4231, column: 33, scope: !4054)
!4110 = !DILocation(line: 4232, column: 44, scope: !4054)
!4111 = !DILocation(line: 4232, column: 33, scope: !4054)
!4112 = !DILocation(line: 4232, column: 22, scope: !4054)
!4113 = !DILocation(line: 4232, column: 13, scope: !4054)
!4114 = !DILocation(line: 4232, column: 9, scope: !4054)
!4115 = !DILocation(line: 4233, column: 26, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4054, file: !141, line: 4233, column: 13)
!4117 = !DILocation(line: 4233, column: 23, scope: !4116)
!4118 = !DILocation(line: 4233, column: 13, scope: !4054)
!4119 = !DILocation(line: 4234, column: 13, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4116, file: !141, line: 4233, column: 41)
!4121 = !DILocation(line: 4234, column: 54, scope: !4120)
!4122 = !DILocation(line: 4234, column: 68, scope: !4120)
!4123 = !DILocation(line: 4234, column: 28, scope: !4120)
!4124 = !DILocation(line: 4234, column: 36, scope: !4120)
!4125 = !DILocation(line: 4234, column: 44, scope: !4120)
!4126 = !DILocation(line: 4234, column: 48, scope: !4120)
!4127 = !DILocation(line: 4234, column: 17, scope: !4120)
!4128 = !DILocation(line: 4235, column: 40, scope: !4120)
!4129 = !DILocation(line: 4235, column: 13, scope: !4120)
!4130 = !DILocation(line: 4235, column: 21, scope: !4120)
!4131 = !DILocation(line: 4235, column: 29, scope: !4120)
!4132 = !DILocation(line: 4235, column: 33, scope: !4120)
!4133 = !DILocation(line: 4235, column: 38, scope: !4120)
!4134 = !DILocation(line: 4236, column: 9, scope: !4120)
!4135 = !DILocation(line: 4237, column: 33, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4116, file: !141, line: 4236, column: 16)
!4137 = !DILocation(line: 4237, column: 41, scope: !4136)
!4138 = !DILocation(line: 4237, column: 49, scope: !4136)
!4139 = !DILocation(line: 4237, column: 53, scope: !4136)
!4140 = !DILocation(line: 4237, column: 13, scope: !4136)
!4141 = !DILocation(line: 4240, column: 9, scope: !4054)
!4142 = distinct !DISubprogram(name: "_Unfancy<char>", linkageName: "??$_Unfancy@D@std@@YAPEADPEAD@Z", scope: !8, file: !4143, line: 288, type: !1397, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !198, retainedNodes: !53)
!4143 = !DIFile(filename: "stl\\xstddef", directory: "C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest")
!4144 = !DILocalVariable(name: "_Ptr", arg: 1, scope: !4142, file: !4143, line: 288, type: !165)
!4145 = !DILocation(line: 288, column: 41, scope: !4142)
!4146 = !DILocation(line: 289, column: 12, scope: !4142)
!4147 = !DILocation(line: 289, column: 5, scope: !4142)
!4148 = distinct !DISubprogram(name: "max_size", linkageName: "?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ", scope: !142, file: !141, line: 3689, type: !841, scopeLine: 3689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !844, retainedNodes: !53)
!4149 = !DILocalVariable(name: "this", arg: 1, scope: !4148, type: !4150, flags: DIFlagArtificial | DIFlagObjectPointer)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4151 = !DILocation(line: 0, scope: !4148)
!4152 = !DILocalVariable(name: "_Alloc_max", scope: !4148, file: !141, line: 3690, type: !315)
!4153 = !DILocation(line: 3690, column: 25, scope: !4148)
!4154 = !DILocation(line: 3690, column: 63, scope: !4148)
!4155 = !DILocation(line: 3690, column: 40, scope: !4148)
!4156 = !DILocalVariable(name: "_Storage_max", scope: !4148, file: !141, line: 3691, type: !315)
!4157 = !DILocation(line: 3691, column: 25, scope: !4148)
!4158 = !DILocation(line: 3692, column: 36, scope: !4148)
!4159 = !DILocation(line: 3692, column: 13, scope: !4148)
!4160 = !DILocation(line: 3694, column: 13, scope: !4148)
!4161 = !DILocation(line: 3694, column: 26, scope: !4148)
!4162 = !DILocation(line: 3693, column: 50, scope: !4148)
!4163 = !DILocation(line: 3693, column: 27, scope: !4148)
!4164 = !DILocation(line: 3693, column: 16, scope: !4148)
!4165 = !DILocation(line: 3693, column: 9, scope: !4148)
!4166 = distinct !DISubprogram(name: "_Xlen_string", linkageName: "?_Xlen_string@std@@YAXXZ", scope: !8, file: !141, line: 2200, type: !277, scopeLine: 2200, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!4167 = !DILocation(line: 2201, column: 5, scope: !4166)
!4168 = distinct !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z", scope: !142, file: !141, line: 4213, type: !943, scopeLine: 4213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !942, retainedNodes: !53)
!4169 = !DILocalVariable(name: "_Requested", arg: 2, scope: !4168, file: !141, line: 4213, type: !315)
!4170 = !DILocation(line: 4213, column: 60, scope: !4168)
!4171 = !DILocalVariable(name: "this", arg: 1, scope: !4168, type: !4150, flags: DIFlagArtificial | DIFlagObjectPointer)
!4172 = !DILocation(line: 0, scope: !4168)
!4173 = !DILocation(line: 4214, column: 70, scope: !4168)
!4174 = !DILocation(line: 4214, column: 46, scope: !4168)
!4175 = !DILocation(line: 4214, column: 54, scope: !4168)
!4176 = !DILocation(line: 4214, column: 62, scope: !4168)
!4177 = !DILocation(line: 4214, column: 34, scope: !4168)
!4178 = !DILocation(line: 4214, column: 16, scope: !4168)
!4179 = !DILocation(line: 4214, column: 9, scope: !4168)
!4180 = distinct !DISubprogram(name: "allocate", linkageName: "?allocate@?$allocator@D@std@@QEAAPEAD_K@Z", scope: !160, file: !157, line: 806, type: !188, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !187, retainedNodes: !53)
!4181 = !DILocalVariable(name: "_Count", arg: 2, scope: !4180, file: !157, line: 806, type: !150)
!4182 = !DILocation(line: 806, column: 84, scope: !4180)
!4183 = !DILocalVariable(name: "this", arg: 1, scope: !4180, type: !3661, flags: DIFlagArtificial | DIFlagObjectPointer)
!4184 = !DILocation(line: 0, scope: !4180)
!4185 = !DILocation(line: 807, column: 91, scope: !4180)
!4186 = !DILocation(line: 807, column: 63, scope: !4180)
!4187 = !DILocation(line: 807, column: 34, scope: !4180)
!4188 = !DILocation(line: 807, column: 9, scope: !4180)
!4189 = distinct !DISubprogram(name: "operator()", linkageName: "??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z", scope: !4057, file: !141, line: 2976, type: !4190, scopeLine: 2976, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4194, retainedNodes: !53)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{null, !4192, !186, !315, !351}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4057)
!4194 = !DISubprogram(name: "operator()", scope: !4057, file: !141, line: 2976, type: !4195, scopeLine: 2976, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!4197, !4192, !186, !315, !351}
!4197 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "auto")
!4198 = !DILocalVariable(name: "_Ptr", arg: 4, scope: !4189, file: !141, line: 2976, type: !351)
!4199 = !DILocation(line: 2976, column: 82, scope: !4189)
!4200 = !DILocalVariable(name: "_Count", arg: 3, scope: !4189, file: !141, line: 2976, type: !315)
!4201 = !DILocation(line: 2976, column: 55, scope: !4189)
!4202 = !DILocalVariable(name: "_New_ptr", arg: 2, scope: !4189, file: !141, line: 2976, type: !186)
!4203 = !DILocation(line: 2976, column: 29, scope: !4189)
!4204 = !DILocalVariable(name: "this", arg: 1, scope: !4189, type: !4205, flags: DIFlagArtificial | DIFlagObjectPointer)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4206 = !DILocation(line: 0, scope: !4189)
!4207 = !DILocation(line: 2977, column: 47, scope: !4189)
!4208 = !DILocation(line: 2977, column: 41, scope: !4189)
!4209 = !DILocation(line: 2977, column: 31, scope: !4189)
!4210 = !DILocation(line: 2977, column: 17, scope: !4189)
!4211 = !DILocation(line: 2978, column: 51, scope: !4189)
!4212 = !DILocation(line: 2978, column: 33, scope: !4189)
!4213 = !DILocation(line: 2978, column: 42, scope: !4189)
!4214 = !DILocation(line: 2978, column: 17, scope: !4189)
!4215 = !DILocation(line: 2979, column: 13, scope: !4189)
!4216 = distinct !DISubprogram(name: "_Construct_in_place<char *, char *const &>", linkageName: "??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z", scope: !8, file: !157, line: 228, type: !4217, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4220, retainedNodes: !53)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !3648, !4219}
!4219 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !186, size: 64)
!4220 = !{!3650, !4221}
!4221 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !4222)
!4222 = !{!4223}
!4223 = !DITemplateTypeParameter(type: !4219)
!4224 = !DILocalVariable(name: "_Args", arg: 2, scope: !4216, file: !157, line: 228, type: !4219)
!4225 = !DILocation(line: 228, column: 49, scope: !4216)
!4226 = !DILocalVariable(name: "_Obj", arg: 1, scope: !4216, file: !157, line: 228, type: !3648)
!4227 = !DILocation(line: 228, column: 31, scope: !4216)
!4228 = !DILocation(line: 229, column: 79, scope: !4216)
!4229 = !DILocation(line: 229, column: 64, scope: !4216)
!4230 = !DILocation(line: 229, column: 5, scope: !4216)
!4231 = !DILocation(line: 230, column: 34, scope: !4216)
!4232 = !DILocation(line: 230, column: 13, scope: !4216)
!4233 = !DILocation(line: 231, column: 1, scope: !4216)
!4234 = distinct !DISubprogram(name: "max_size", linkageName: "?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z", scope: !318, file: !157, line: 702, type: !338, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !337, retainedNodes: !53)
!4235 = !DILocalVariable(arg: 1, scope: !4234, file: !157, line: 702, type: !182)
!4236 = !DILocation(line: 702, column: 55, scope: !4234)
!4237 = !DILocation(line: 703, column: 9, scope: !4234)
!4238 = distinct !DISubprogram(name: "_Getal", linkageName: "?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ", scope: !142, file: !141, line: 4328, type: !959, scopeLine: 4328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !958, retainedNodes: !53)
!4239 = !DILocalVariable(name: "this", arg: 1, scope: !4238, type: !4150, flags: DIFlagArtificial | DIFlagObjectPointer)
!4240 = !DILocation(line: 0, scope: !4238)
!4241 = !DILocation(line: 4329, column: 16, scope: !4238)
!4242 = !DILocation(line: 4329, column: 24, scope: !4238)
!4243 = !DILocation(line: 4329, column: 9, scope: !4238)
!4244 = distinct !DISubprogram(name: "max<unsigned long long>", linkageName: "??$max@_K@std@@YAAEB_KAEB_K0@Z", scope: !8, file: !9, line: 41, type: !4245, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4248, retainedNodes: !53)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!4247, !4247, !4247}
!4247 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !145, size: 64)
!4248 = !{!4249}
!4249 = !DITemplateTypeParameter(name: "_Ty", type: !24)
!4250 = !DILocalVariable(name: "_Right", arg: 2, scope: !4244, file: !9, line: 42, type: !4247)
!4251 = !DILocation(line: 42, column: 34, scope: !4244)
!4252 = !DILocalVariable(name: "_Left", arg: 1, scope: !4244, file: !9, line: 42, type: !4247)
!4253 = !DILocation(line: 42, column: 16, scope: !4244)
!4254 = !DILocation(line: 44, column: 12, scope: !4244)
!4255 = !DILocation(line: 44, column: 20, scope: !4244)
!4256 = !DILocation(line: 44, column: 18, scope: !4244)
!4257 = !DILocation(line: 44, column: 29, scope: !4244)
!4258 = !DILocation(line: 44, column: 38, scope: !4244)
!4259 = !DILocation(line: 44, column: 5, scope: !4244)
!4260 = distinct !DISubprogram(name: "min<unsigned long long>", linkageName: "??$min@_K@std@@YAAEB_KAEB_K0@Z", scope: !8, file: !9, line: 66, type: !4245, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4248, retainedNodes: !53)
!4261 = !DILocalVariable(name: "_Right", arg: 2, scope: !4260, file: !9, line: 67, type: !4247)
!4262 = !DILocation(line: 67, column: 34, scope: !4260)
!4263 = !DILocalVariable(name: "_Left", arg: 1, scope: !4260, file: !9, line: 67, type: !4247)
!4264 = !DILocation(line: 67, column: 16, scope: !4260)
!4265 = !DILocation(line: 69, column: 12, scope: !4260)
!4266 = !DILocation(line: 69, column: 21, scope: !4260)
!4267 = !DILocation(line: 69, column: 19, scope: !4260)
!4268 = !DILocation(line: 69, column: 29, scope: !4260)
!4269 = !DILocation(line: 69, column: 38, scope: !4260)
!4270 = !DILocation(line: 69, column: 5, scope: !4260)
!4271 = distinct !DISubprogram(name: "max", linkageName: "?max@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 645, type: !4314, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4316, retainedNodes: !53)
!4272 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "numeric_limits<long long>", scope: !8, file: !29, line: 639, size: 8, flags: DIFlagTypePassByValue, elements: !4273, templateParams: !4324, identifier: ".?AV?$numeric_limits@_J@std@@")
!4273 = !{!4274, !4310, !4311, !4312, !4313, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323}
!4274 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4272, baseType: !4275, flags: DIFlagPublic, extraData: i32 0)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Num_int_base", scope: !8, file: !29, line: 118, size: 8, flags: DIFlagTypePassByValue, elements: !4276, identifier: ".?AU_Num_int_base@std@@")
!4276 = !{!4277, !4305, !4306, !4307, !4308, !4309}
!4277 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4275, baseType: !4278, extraData: i32 0)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Num_base", scope: !8, file: !29, line: 41, size: 8, flags: DIFlagTypePassByValue, elements: !4279, identifier: ".?AU_Num_base@std@@")
!4279 = !{!4280, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !4278, file: !29, line: 42, baseType: !4281, flags: DIFlagStaticMember, extraData: i32 0)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm_loss", scope: !4278, file: !29, line: 43, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "has_infinity", scope: !4278, file: !29, line: 44, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "has_quiet_NaN", scope: !4278, file: !29, line: 45, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "has_signaling_NaN", scope: !4278, file: !29, line: 46, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "is_bounded", scope: !4278, file: !29, line: 47, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "is_exact", scope: !4278, file: !29, line: 48, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "is_iec559", scope: !4278, file: !29, line: 49, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "is_integer", scope: !4278, file: !29, line: 50, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "is_modulo", scope: !4278, file: !29, line: 51, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !4278, file: !29, line: 52, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "is_specialized", scope: !4278, file: !29, line: 53, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "tinyness_before", scope: !4278, file: !29, line: 54, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !4278, file: !29, line: 55, baseType: !148, flags: DIFlagStaticMember, extraData: i1 false)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "round_style", scope: !4278, file: !29, line: 56, baseType: !4296, flags: DIFlagStaticMember, extraData: i32 0)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !4278, file: !29, line: 57, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "digits10", scope: !4278, file: !29, line: 58, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "max_digits10", scope: !4278, file: !29, line: 59, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent", scope: !4278, file: !29, line: 60, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "max_exponent10", scope: !4278, file: !29, line: 61, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent", scope: !4278, file: !29, line: 62, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "min_exponent10", scope: !4278, file: !29, line: 63, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !4278, file: !29, line: 64, baseType: !109, flags: DIFlagStaticMember, extraData: i32 0)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "is_bounded", scope: !4275, file: !29, line: 119, baseType: !148, flags: DIFlagStaticMember, extraData: i1 true)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "is_exact", scope: !4275, file: !29, line: 120, baseType: !148, flags: DIFlagStaticMember, extraData: i1 true)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "is_integer", scope: !4275, file: !29, line: 121, baseType: !148, flags: DIFlagStaticMember, extraData: i1 true)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "is_specialized", scope: !4275, file: !29, line: 122, baseType: !148, flags: DIFlagStaticMember, extraData: i1 true)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !4275, file: !29, line: 123, baseType: !109, flags: DIFlagStaticMember, extraData: i32 2)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !4272, file: !29, line: 677, baseType: !148, flags: DIFlagPublic | DIFlagStaticMember, extraData: i1 true)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !4272, file: !29, line: 678, baseType: !109, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 63)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "digits10", scope: !4272, file: !29, line: 679, baseType: !109, flags: DIFlagPublic | DIFlagStaticMember, extraData: i32 18)
!4313 = !DISubprogram(name: "min", linkageName: "?min@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 641, type: !4314, scopeLine: 641, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!1000}
!4316 = !DISubprogram(name: "max", linkageName: "?max@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 645, type: !4314, scopeLine: 645, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4317 = !DISubprogram(name: "lowest", linkageName: "?lowest@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 649, type: !4314, scopeLine: 649, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4318 = !DISubprogram(name: "epsilon", linkageName: "?epsilon@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 653, type: !4314, scopeLine: 653, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4319 = !DISubprogram(name: "round_error", linkageName: "?round_error@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 657, type: !4314, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4320 = !DISubprogram(name: "denorm_min", linkageName: "?denorm_min@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 661, type: !4314, scopeLine: 661, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4321 = !DISubprogram(name: "infinity", linkageName: "?infinity@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 665, type: !4314, scopeLine: 665, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4322 = !DISubprogram(name: "quiet_NaN", linkageName: "?quiet_NaN@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 669, type: !4314, scopeLine: 669, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4323 = !DISubprogram(name: "signaling_NaN", linkageName: "?signaling_NaN@?$numeric_limits@_J@std@@SA_JXZ", scope: !4272, file: !29, line: 673, type: !4314, scopeLine: 673, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4324 = !{!4325}
!4325 = !DITemplateTypeParameter(name: "_Ty", type: !1000)
!4326 = !DILocation(line: 646, column: 9, scope: !4271)
!4327 = distinct !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ", scope: !156, file: !157, line: 1347, type: !290, scopeLine: 1347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !289, retainedNodes: !53)
!4328 = !DILocalVariable(name: "this", arg: 1, scope: !4327, type: !4329, flags: DIFlagArtificial | DIFlagObjectPointer)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!4330 = !DILocation(line: 0, scope: !4327)
!4331 = !DILocation(line: 1348, column: 16, scope: !4327)
!4332 = !DILocation(line: 1348, column: 9, scope: !4327)
!4333 = distinct !DISubprogram(name: "_Calculate_growth", linkageName: "?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z", scope: !142, file: !141, line: 4199, type: !940, scopeLine: 4200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !939, retainedNodes: !53)
!4334 = !DILocalVariable(name: "_Max", arg: 3, scope: !4333, file: !141, line: 4200, type: !315)
!4335 = !DILocation(line: 4200, column: 75, scope: !4333)
!4336 = !DILocalVariable(name: "_Old", arg: 2, scope: !4333, file: !141, line: 4200, type: !315)
!4337 = !DILocation(line: 4200, column: 53, scope: !4333)
!4338 = !DILocalVariable(name: "_Requested", arg: 1, scope: !4333, file: !141, line: 4200, type: !315)
!4339 = !DILocation(line: 4200, column: 25, scope: !4333)
!4340 = !DILocalVariable(name: "_Masked", scope: !4333, file: !141, line: 4201, type: !315)
!4341 = !DILocation(line: 4201, column: 25, scope: !4333)
!4342 = !DILocation(line: 4201, column: 35, scope: !4333)
!4343 = !DILocation(line: 4201, column: 46, scope: !4333)
!4344 = !DILocation(line: 4202, column: 13, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4333, file: !141, line: 4202, column: 13)
!4346 = !DILocation(line: 4202, column: 23, scope: !4345)
!4347 = !DILocation(line: 4202, column: 21, scope: !4345)
!4348 = !DILocation(line: 4202, column: 13, scope: !4333)
!4349 = !DILocation(line: 4203, column: 20, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4345, file: !141, line: 4202, column: 29)
!4351 = !DILocation(line: 4203, column: 13, scope: !4350)
!4352 = !DILocation(line: 4206, column: 13, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4333, file: !141, line: 4206, column: 13)
!4354 = !DILocation(line: 4206, column: 20, scope: !4353)
!4355 = !DILocation(line: 4206, column: 27, scope: !4353)
!4356 = !DILocation(line: 4206, column: 32, scope: !4353)
!4357 = !DILocation(line: 4206, column: 25, scope: !4353)
!4358 = !DILocation(line: 4206, column: 18, scope: !4353)
!4359 = !DILocation(line: 4206, column: 13, scope: !4333)
!4360 = !DILocation(line: 4207, column: 20, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4353, file: !141, line: 4206, column: 37)
!4362 = !DILocation(line: 4207, column: 13, scope: !4361)
!4363 = !DILocation(line: 4210, column: 36, scope: !4333)
!4364 = !DILocation(line: 4210, column: 43, scope: !4333)
!4365 = !DILocation(line: 4210, column: 48, scope: !4333)
!4366 = !DILocation(line: 4210, column: 41, scope: !4333)
!4367 = !DILocation(line: 4210, column: 16, scope: !4333)
!4368 = !DILocation(line: 4210, column: 9, scope: !4333)
!4369 = !DILocation(line: 4211, column: 5, scope: !4333)
!4370 = distinct !DISubprogram(name: "_Allocate<16, std::_Default_allocate_traits, 0>", linkageName: "??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z", scope: !8, file: !157, line: 197, type: !4371, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4373, retainedNodes: !53)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!968, !150}
!4373 = !{!3686, !4374, !2194}
!4374 = !DITemplateTypeParameter(name: "_Traits", type: !4375, defaulted: true)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Default_allocate_traits", scope: !8, file: !157, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !4376, identifier: ".?AU_Default_allocate_traits@std@@")
!4376 = !{!4377, !4378}
!4377 = !DISubprogram(name: "_Allocate", linkageName: "?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z", scope: !4375, file: !157, line: 76, type: !4371, scopeLine: 76, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4378 = !DISubprogram(name: "_Allocate_aligned", linkageName: "?_Allocate_aligned@_Default_allocate_traits@std@@SAPEAX_K0@Z", scope: !4375, file: !157, line: 81, type: !4379, scopeLine: 81, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!968, !150, !150}
!4381 = !DILocalVariable(name: "_Bytes", arg: 1, scope: !4370, file: !157, line: 197, type: !150)
!4382 = !DILocation(line: 197, column: 52, scope: !4370)
!4383 = !DILocation(line: 200, column: 9, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4370, file: !157, line: 200, column: 9)
!4385 = !DILocation(line: 200, column: 16, scope: !4384)
!4386 = !DILocation(line: 200, column: 9, scope: !4370)
!4387 = !DILocation(line: 201, column: 59, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4384, file: !157, line: 200, column: 46)
!4389 = !DILocation(line: 201, column: 16, scope: !4388)
!4390 = !DILocation(line: 201, column: 9, scope: !4388)
!4391 = !DILocation(line: 205, column: 9, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4370, file: !157, line: 205, column: 9)
!4393 = !DILocation(line: 205, column: 16, scope: !4392)
!4394 = !DILocation(line: 205, column: 9, scope: !4370)
!4395 = !DILocation(line: 206, column: 35, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4392, file: !157, line: 205, column: 22)
!4397 = !DILocation(line: 206, column: 16, scope: !4396)
!4398 = !DILocation(line: 206, column: 9, scope: !4396)
!4399 = !DILocation(line: 209, column: 5, scope: !4370)
!4400 = !DILocation(line: 210, column: 1, scope: !4370)
!4401 = distinct !DISubprogram(name: "_Get_size_of_n<1>", linkageName: "??$_Get_size_of_n@$00@std@@YA_K_K@Z", scope: !8, file: !157, line: 55, type: !4009, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4402, retainedNodes: !53)
!4402 = !{!4403}
!4403 = !DITemplateValueParameter(name: "_Ty_size", type: !24, value: i64 1)
!4404 = !DILocalVariable(name: "_Count", arg: 1, scope: !4401, file: !157, line: 55, type: !150)
!4405 = !DILocation(line: 55, column: 57, scope: !4401)
!4406 = !DILocalVariable(name: "_Overflow_is_possible", scope: !4401, file: !157, line: 56, type: !148)
!4407 = !DILocation(line: 56, column: 20, scope: !4401)
!4408 = !DILocation(line: 65, column: 12, scope: !4401)
!4409 = !DILocation(line: 65, column: 19, scope: !4401)
!4410 = !DILocation(line: 65, column: 5, scope: !4401)
!4411 = distinct !DISubprogram(name: "_Allocate_manually_vector_aligned<std::_Default_allocate_traits>", linkageName: "??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z", scope: !8, file: !157, line: 113, type: !4371, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4412, retainedNodes: !53)
!4412 = !{!4413}
!4413 = !DITemplateTypeParameter(name: "_Traits", type: !4375)
!4414 = !DILocalVariable(name: "_Bytes", arg: 1, scope: !4411, file: !157, line: 113, type: !150)
!4415 = !DILocation(line: 113, column: 76, scope: !4411)
!4416 = !DILocalVariable(name: "_Block_size", scope: !4411, file: !157, line: 115, type: !150)
!4417 = !DILocation(line: 115, column: 18, scope: !4411)
!4418 = !DILocation(line: 115, column: 49, scope: !4411)
!4419 = !DILocation(line: 115, column: 47, scope: !4411)
!4420 = !DILocation(line: 116, column: 9, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4411, file: !157, line: 116, column: 9)
!4422 = !DILocation(line: 116, column: 24, scope: !4421)
!4423 = !DILocation(line: 116, column: 21, scope: !4421)
!4424 = !DILocation(line: 116, column: 9, scope: !4411)
!4425 = !DILocation(line: 117, column: 9, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4421, file: !157, line: 116, column: 32)
!4427 = !DILocalVariable(name: "_Ptr_container", scope: !4411, file: !157, line: 120, type: !3716)
!4428 = !DILocation(line: 120, column: 21, scope: !4411)
!4429 = !DILocation(line: 120, column: 85, scope: !4411)
!4430 = !DILocation(line: 120, column: 66, scope: !4411)
!4431 = !DILocation(line: 120, column: 38, scope: !4411)
!4432 = !DILocation(line: 121, column: 5, scope: !4411)
!4433 = !DILocation(line: 121, column: 5, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4435, file: !157, line: 121, column: 5)
!4435 = distinct !DILexicalBlock(scope: !4411, file: !157, line: 121, column: 5)
!4436 = !DILocation(line: 121, column: 5, scope: !4435)
!4437 = !DILocation(line: 121, column: 5, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4434, file: !157, line: 121, column: 5)
!4439 = !DILocation(line: 121, column: 5, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4434, file: !157, line: 121, column: 5)
!4441 = !DILocation(line: 121, column: 5, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4440, file: !157, line: 121, column: 5)
!4443 = !DILocalVariable(name: "_Ptr", scope: !4411, file: !157, line: 122, type: !4444)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!4445 = !DILocation(line: 122, column: 17, scope: !4411)
!4446 = !DILocation(line: 122, column: 49, scope: !4411)
!4447 = !DILocation(line: 122, column: 64, scope: !4411)
!4448 = !DILocation(line: 122, column: 82, scope: !4411)
!4449 = !DILocation(line: 122, column: 24, scope: !4411)
!4450 = !DILocation(line: 123, column: 41, scope: !4411)
!4451 = !DILocation(line: 123, column: 29, scope: !4411)
!4452 = !DILocation(line: 123, column: 5, scope: !4411)
!4453 = !DILocation(line: 123, column: 39, scope: !4411)
!4454 = !DILocation(line: 128, column: 12, scope: !4411)
!4455 = !DILocation(line: 128, column: 5, scope: !4411)
!4456 = distinct !DISubprogram(name: "_Allocate", linkageName: "?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z", scope: !4375, file: !157, line: 76, type: !4371, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4377, retainedNodes: !53)
!4457 = !DILocalVariable(name: "_Bytes", arg: 1, scope: !4456, file: !157, line: 76, type: !150)
!4458 = !DILocation(line: 76, column: 63, scope: !4456)
!4459 = !DILocation(line: 77, column: 31, scope: !4456)
!4460 = !DILocation(line: 77, column: 16, scope: !4456)
!4461 = !DILocation(line: 77, column: 9, scope: !4456)
!4462 = distinct !DISubprogram(name: "_Throw_bad_array_new_length", linkageName: "?_Throw_bad_array_new_length@std@@YAXXZ", scope: !8, file: !1189, line: 320, type: !277, scopeLine: 320, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !53)
!4463 = !DILocation(line: 321, column: 5, scope: !4462)
!4464 = distinct !DISubprogram(name: "bad_array_new_length", linkageName: "??0bad_array_new_length@std@@QEAA@XZ", scope: !4465, file: !3781, line: 139, type: !4479, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4478, retainedNodes: !53)
!4465 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "bad_array_new_length", scope: !8, file: !3781, line: 134, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4466, vtableHolder: !3780, identifier: ".?AVbad_array_new_length@std@@")
!4466 = !{!4467, !4478}
!4467 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4465, baseType: !4468, flags: DIFlagPublic, extraData: i32 0)
!4468 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "bad_alloc", scope: !8, file: !3781, line: 114, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4469, vtableHolder: !3780, identifier: ".?AVbad_alloc@std@@")
!4469 = !{!4470, !4471, !4475}
!4470 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4468, baseType: !3780, flags: DIFlagPublic, extraData: i32 0)
!4471 = !DISubprogram(name: "bad_alloc", scope: !4468, file: !3781, line: 119, type: !4472, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !4474}
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4475 = !DISubprogram(name: "bad_alloc", scope: !4468, file: !3781, line: 128, type: !4476, scopeLine: 128, flags: DIFlagPrototyped, spFlags: 0)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4474, !351}
!4478 = !DISubprogram(name: "bad_array_new_length", scope: !4465, file: !3781, line: 139, type: !4479, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !4481}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4482 = !DILocalVariable(name: "this", arg: 1, scope: !4464, type: !4483, flags: DIFlagArtificial | DIFlagObjectPointer)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4484 = !DILocation(line: 0, scope: !4464)
!4485 = !DILocation(line: 141, column: 5, scope: !4464)
!4486 = !DILocation(line: 140, column: 11, scope: !4464)
!4487 = !DILocation(line: 142, column: 5, scope: !4464)
!4488 = distinct !DISubprogram(name: "bad_array_new_length", linkageName: "??0bad_array_new_length@std@@QEAA@AEBV01@@Z", scope: !4465, file: !3781, line: 134, type: !4489, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4493, retainedNodes: !53)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !4481, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4493 = !DISubprogram(name: "bad_array_new_length", scope: !4465, type: !4489, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4494 = !DILocalVariable(arg: 2, scope: !4488, type: !4491)
!4495 = !DILocation(line: 0, scope: !4488)
!4496 = !DILocalVariable(name: "this", arg: 1, scope: !4488, type: !4483, flags: DIFlagArtificial | DIFlagObjectPointer)
!4497 = !DILocation(line: 134, column: 7, scope: !4488)
!4498 = distinct !DISubprogram(name: "bad_alloc", linkageName: "??0bad_alloc@std@@QEAA@AEBV01@@Z", scope: !4468, file: !3781, line: 114, type: !4499, scopeLine: 114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4503, retainedNodes: !53)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{null, !4474, !4501}
!4501 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4468)
!4503 = !DISubprogram(name: "bad_alloc", scope: !4468, type: !4499, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4504 = !DILocalVariable(arg: 2, scope: !4498, type: !4501)
!4505 = !DILocation(line: 0, scope: !4498)
!4506 = !DILocalVariable(name: "this", arg: 1, scope: !4498, type: !4507, flags: DIFlagArtificial | DIFlagObjectPointer)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4508 = !DILocation(line: 114, column: 7, scope: !4498)
!4509 = distinct !DISubprogram(name: "~bad_array_new_length", linkageName: "??1bad_array_new_length@std@@UEAA@XZ", scope: !4465, file: !3781, line: 134, type: !4479, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4510, retainedNodes: !53)
!4510 = !DISubprogram(name: "~bad_array_new_length", scope: !4465, type: !4479, containingType: !4465, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4511 = !DILocalVariable(name: "this", arg: 1, scope: !4509, type: !4483, flags: DIFlagArtificial | DIFlagObjectPointer)
!4512 = !DILocation(line: 0, scope: !4509)
!4513 = !DILocation(line: 134, column: 7, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4509, file: !3781, line: 134, column: 7)
!4515 = !DILocation(line: 134, column: 7, scope: !4509)
!4516 = distinct !DISubprogram(name: "bad_alloc", linkageName: "??0bad_alloc@std@@AEAA@QEBD@Z", scope: !4468, file: !3781, line: 128, type: !4476, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4475, retainedNodes: !53)
!4517 = !DILocalVariable(name: "_Message", arg: 2, scope: !4516, file: !3781, line: 128, type: !351)
!4518 = !DILocation(line: 128, column: 33, scope: !4516)
!4519 = !DILocalVariable(name: "this", arg: 1, scope: !4516, type: !4507, flags: DIFlagArtificial | DIFlagObjectPointer)
!4520 = !DILocation(line: 0, scope: !4516)
!4521 = !DILocation(line: 130, column: 5, scope: !4516)
!4522 = !DILocation(line: 129, column: 21, scope: !4516)
!4523 = !DILocation(line: 129, column: 11, scope: !4516)
!4524 = !DILocation(line: 131, column: 5, scope: !4516)
!4525 = distinct !DISubprogram(name: "~bad_array_new_length", linkageName: "??_Gbad_array_new_length@std@@UEAAPEAXI@Z", scope: !4465, file: !3781, line: 134, type: !4479, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4510, retainedNodes: !53)
!4526 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !4525, type: !5, flags: DIFlagArtificial)
!4527 = !DILocation(line: 0, scope: !4525)
!4528 = !DILocalVariable(name: "this", arg: 1, scope: !4525, type: !4483, flags: DIFlagArtificial | DIFlagObjectPointer)
!4529 = !DILocation(line: 134, column: 7, scope: !4525)
!4530 = distinct !DISubprogram(name: "exception", linkageName: "??0exception@std@@QEAA@QEBDH@Z", scope: !3780, file: !3781, line: 64, type: !3797, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3796, retainedNodes: !53)
!4531 = !DILocalVariable(arg: 3, scope: !4530, file: !3781, line: 64, type: !5)
!4532 = !DILocation(line: 64, column: 46, scope: !4530)
!4533 = !DILocalVariable(name: "_Message", arg: 2, scope: !4530, file: !3781, line: 64, type: !351)
!4534 = !DILocation(line: 64, column: 33, scope: !4530)
!4535 = !DILocalVariable(name: "this", arg: 1, scope: !4530, type: !3839, flags: DIFlagArtificial | DIFlagObjectPointer)
!4536 = !DILocation(line: 0, scope: !4530)
!4537 = !DILocation(line: 66, column: 5, scope: !4530)
!4538 = !DILocation(line: 65, column: 11, scope: !4530)
!4539 = !DILocation(line: 67, column: 23, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4530, file: !3781, line: 66, column: 5)
!4541 = !DILocation(line: 67, column: 9, scope: !4540)
!4542 = !DILocation(line: 67, column: 15, scope: !4540)
!4543 = !DILocation(line: 67, column: 21, scope: !4540)
!4544 = !DILocation(line: 68, column: 5, scope: !4530)
!4545 = distinct !DISubprogram(name: "~bad_alloc", linkageName: "??_Gbad_alloc@std@@UEAAPEAXI@Z", scope: !4468, file: !3781, line: 114, type: !4472, scopeLine: 114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4546, retainedNodes: !53)
!4546 = !DISubprogram(name: "~bad_alloc", scope: !4468, type: !4472, containingType: !4468, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4547 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !4545, type: !5, flags: DIFlagArtificial)
!4548 = !DILocation(line: 0, scope: !4545)
!4549 = !DILocalVariable(name: "this", arg: 1, scope: !4545, type: !4507, flags: DIFlagArtificial | DIFlagObjectPointer)
!4550 = !DILocation(line: 114, column: 7, scope: !4545)
!4551 = distinct !DISubprogram(name: "~bad_alloc", linkageName: "??1bad_alloc@std@@UEAA@XZ", scope: !4468, file: !3781, line: 114, type: !4472, scopeLine: 114, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4546, retainedNodes: !53)
!4552 = !DILocalVariable(name: "this", arg: 1, scope: !4551, type: !4507, flags: DIFlagArtificial | DIFlagObjectPointer)
!4553 = !DILocation(line: 0, scope: !4551)
!4554 = !DILocation(line: 114, column: 7, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4551, file: !3781, line: 114, column: 7)
!4556 = !DILocation(line: 114, column: 7, scope: !4551)
!4557 = distinct !DISubprogram(name: "copy", linkageName: "?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z", scope: !776, file: !141, line: 325, type: !785, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !784, retainedNodes: !53)
!4558 = !DILocalVariable(name: "_Count", arg: 3, scope: !4557, file: !141, line: 326, type: !150)
!4559 = !DILocation(line: 326, column: 22, scope: !4557)
!4560 = !DILocalVariable(name: "_First2", arg: 2, scope: !4557, file: !141, line: 325, type: !351)
!4561 = !DILocation(line: 325, column: 105, scope: !4557)
!4562 = !DILocalVariable(name: "_First1", arg: 1, scope: !4557, file: !141, line: 325, type: !186)
!4563 = !DILocation(line: 325, column: 58, scope: !4557)
!4564 = !DILocation(line: 328, column: 49, scope: !4557)
!4565 = !DILocation(line: 328, column: 58, scope: !4557)
!4566 = !DILocation(line: 328, column: 67, scope: !4557)
!4567 = !DILocation(line: 328, column: 36, scope: !4557)
!4568 = !DILocation(line: 328, column: 9, scope: !4557)
!4569 = distinct !DISubprogram(name: "addressof<char *>", linkageName: "??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z", scope: !8, file: !4143, line: 274, type: !4570, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3649, retainedNodes: !53)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!1124, !3648}
!4572 = !DILocalVariable(name: "_Val", arg: 1, scope: !4569, file: !4143, line: 274, type: !3648)
!4573 = !DILocation(line: 274, column: 42, scope: !4569)
!4574 = !DILocation(line: 275, column: 32, scope: !4569)
!4575 = !DILocation(line: 275, column: 5, scope: !4569)
!4576 = distinct !DISubprogram(name: "forward<char *const &>", linkageName: "??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z", scope: !8, file: !2156, line: 1453, type: !4577, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4583, retainedNodes: !53)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!4219, !4579}
!4579 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4580, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_reference_t<char *const &>", scope: !8, file: !50, line: 225, baseType: !4581)
!4581 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4582, file: !50, line: 214, baseType: !186)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<char *const &>", scope: !8, file: !50, line: 213, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !4583, identifier: ".?AU?$remove_reference@AEBQEAD@std@@")
!4583 = !{!4584}
!4584 = !DITemplateTypeParameter(name: "_Ty", type: !4219)
!4585 = !DILocalVariable(name: "_Arg", arg: 1, scope: !4576, file: !2156, line: 1454, type: !4579)
!4586 = !DILocation(line: 1454, column: 30, scope: !4576)
!4587 = !DILocation(line: 1455, column: 31, scope: !4576)
!4588 = !DILocation(line: 1455, column: 5, scope: !4576)
!4589 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z", scope: !318, file: !157, line: 706, type: !341, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !340, retainedNodes: !53)
!4590 = !DILocalVariable(name: "_Al", arg: 1, scope: !4589, file: !157, line: 706, type: !182)
!4591 = !DILocation(line: 706, column: 82, scope: !4589)
!4592 = !DILocation(line: 707, column: 16, scope: !4589)
!4593 = !DILocation(line: 707, column: 9, scope: !4589)
!4594 = distinct !DISubprogram(name: "_Compressed_pair<std::allocator<char>>", linkageName: "??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z", scope: !156, file: !157, line: 1339, type: !4595, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4605, declaration: !4604, retainedNodes: !53)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{null, !288, !4597, !4603}
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_One_then_variadic_args_t", scope: !8, file: !157, line: 1322, size: 8, flags: DIFlagTypePassByValue, elements: !4598, identifier: ".?AU_One_then_variadic_args_t@std@@")
!4598 = !{!4599}
!4599 = !DISubprogram(name: "_One_then_variadic_args_t", scope: !4597, file: !157, line: 1323, type: !4600, scopeLine: 1323, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{null, !4602}
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4603 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !160, size: 64)
!4604 = !DISubprogram(name: "_Compressed_pair<std::allocator<char>>", scope: !156, file: !157, line: 1339, type: !4595, scopeLine: 1339, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !4605)
!4605 = !{!4606, !3410}
!4606 = !DITemplateTypeParameter(name: "_Other1", type: !160)
!4607 = !DILocalVariable(name: "_Val1", arg: 3, scope: !4594, file: !157, line: 1339, type: !4603)
!4608 = !DILocation(line: 1339, column: 69, scope: !4594)
!4609 = !DILocalVariable(arg: 2, scope: !4594, file: !157, line: 1339, type: !4597)
!4610 = !DILocation(line: 1339, column: 57, scope: !4594)
!4611 = !DILocalVariable(name: "this", arg: 1, scope: !4594, type: !3623, flags: DIFlagArtificial | DIFlagObjectPointer)
!4612 = !DILocation(line: 0, scope: !4594)
!4613 = !DILocation(line: 1341, column: 88, scope: !4594)
!4614 = !DILocation(line: 1341, column: 38, scope: !4594)
!4615 = !DILocation(line: 1341, column: 16, scope: !4594)
!4616 = !DILocation(line: 1341, column: 47, scope: !4594)
!4617 = !DILocation(line: 1341, column: 89, scope: !4594)
!4618 = !DILocation(line: 1341, column: 89, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4594, file: !157, line: 1341, column: 88)
!4620 = distinct !DISubprogram(name: "_Construct_lv_contents", linkageName: "?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !142, file: !141, line: 2650, type: !298, scopeLine: 2650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !450, retainedNodes: !53)
!4621 = !DILocalVariable(name: "_Right", arg: 2, scope: !4620, file: !141, line: 2650, type: !301)
!4622 = !DILocation(line: 2650, column: 53, scope: !4620)
!4623 = !DILocalVariable(name: "this", arg: 1, scope: !4620, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!4624 = !DILocation(line: 0, scope: !4620)
!4625 = !DILocalVariable(name: "_Right_data", scope: !4620, file: !141, line: 2655, type: !4626)
!4626 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !268, size: 64)
!4627 = !DILocation(line: 2655, column: 15, scope: !4620)
!4628 = !DILocation(line: 2655, column: 41, scope: !4620)
!4629 = !DILocation(line: 2655, column: 48, scope: !4620)
!4630 = !DILocation(line: 2655, column: 56, scope: !4620)
!4631 = !DILocalVariable(name: "_Right_size", scope: !4620, file: !141, line: 2656, type: !315)
!4632 = !DILocation(line: 2656, column: 25, scope: !4620)
!4633 = !DILocation(line: 2656, column: 41, scope: !4620)
!4634 = !DILocation(line: 2656, column: 53, scope: !4620)
!4635 = !DILocalVariable(name: "_Right_ptr", scope: !4620, file: !141, line: 2657, type: !351)
!4636 = !DILocation(line: 2657, column: 28, scope: !4620)
!4637 = !DILocation(line: 2657, column: 41, scope: !4620)
!4638 = !DILocation(line: 2657, column: 53, scope: !4620)
!4639 = !DILocalVariable(name: "_My_data", scope: !4620, file: !141, line: 2658, type: !4640)
!4640 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !201, size: 64)
!4641 = !DILocation(line: 2658, column: 15, scope: !4620)
!4642 = !DILocation(line: 2658, column: 41, scope: !4620)
!4643 = !DILocation(line: 2658, column: 49, scope: !4620)
!4644 = !DILocation(line: 2659, column: 13, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4620, file: !141, line: 2659, column: 13)
!4646 = !DILocation(line: 2659, column: 25, scope: !4645)
!4647 = !DILocation(line: 2659, column: 13, scope: !4620)
!4648 = !DILocation(line: 2660, column: 46, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !141, line: 2659, column: 38)
!4650 = !DILocation(line: 2660, column: 27, scope: !4649)
!4651 = !DILocation(line: 2660, column: 36, scope: !4649)
!4652 = !DILocation(line: 2660, column: 40, scope: !4649)
!4653 = !DILocation(line: 2660, column: 13, scope: !4649)
!4654 = !DILocation(line: 2661, column: 32, scope: !4649)
!4655 = !DILocation(line: 2661, column: 13, scope: !4649)
!4656 = !DILocation(line: 2661, column: 22, scope: !4649)
!4657 = !DILocation(line: 2661, column: 30, scope: !4649)
!4658 = !DILocation(line: 2662, column: 13, scope: !4649)
!4659 = !DILocation(line: 2662, column: 22, scope: !4649)
!4660 = !DILocation(line: 2662, column: 30, scope: !4649)
!4661 = !DILocation(line: 2663, column: 13, scope: !4649)
!4662 = !DILocalVariable(name: "_Al", scope: !4620, file: !141, line: 2666, type: !287)
!4663 = !DILocation(line: 2666, column: 15, scope: !4620)
!4664 = !DILocation(line: 2666, column: 41, scope: !4620)
!4665 = !DILocalVariable(name: "_New_capacity", scope: !4620, file: !141, line: 2667, type: !315)
!4666 = !DILocation(line: 2667, column: 25, scope: !4620)
!4667 = !DILocation(line: 2667, column: 79, scope: !4620)
!4668 = !DILocation(line: 2667, column: 52, scope: !4620)
!4669 = !DILocation(line: 2667, column: 64, scope: !4620)
!4670 = !DILocation(line: 2667, column: 41, scope: !4620)
!4671 = !DILocalVariable(name: "_New_array", scope: !4620, file: !141, line: 2668, type: !3580)
!4672 = !DILocation(line: 2668, column: 23, scope: !4620)
!4673 = !DILocation(line: 2668, column: 41, scope: !4620)
!4674 = !DILocation(line: 2668, column: 54, scope: !4620)
!4675 = !DILocation(line: 2668, column: 68, scope: !4620)
!4676 = !DILocation(line: 2668, column: 45, scope: !4620)
!4677 = !DILocation(line: 2669, column: 29, scope: !4620)
!4678 = !DILocation(line: 2669, column: 38, scope: !4620)
!4679 = !DILocation(line: 2669, column: 42, scope: !4620)
!4680 = !DILocation(line: 2669, column: 9, scope: !4620)
!4681 = !DILocation(line: 2670, column: 57, scope: !4620)
!4682 = !DILocation(line: 2670, column: 69, scope: !4620)
!4683 = !DILocation(line: 2670, column: 45, scope: !4620)
!4684 = !DILocation(line: 2670, column: 32, scope: !4620)
!4685 = !DILocation(line: 2670, column: 23, scope: !4620)
!4686 = !DILocation(line: 2670, column: 9, scope: !4620)
!4687 = !DILocation(line: 2671, column: 28, scope: !4620)
!4688 = !DILocation(line: 2671, column: 9, scope: !4620)
!4689 = !DILocation(line: 2671, column: 18, scope: !4620)
!4690 = !DILocation(line: 2671, column: 26, scope: !4620)
!4691 = !DILocation(line: 2672, column: 28, scope: !4620)
!4692 = !DILocation(line: 2672, column: 9, scope: !4620)
!4693 = !DILocation(line: 2672, column: 18, scope: !4620)
!4694 = !DILocation(line: 2672, column: 26, scope: !4620)
!4695 = !DILocation(line: 2673, column: 5, scope: !4620)
!4696 = distinct !DISubprogram(name: "forward<std::allocator<char> >", linkageName: "??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z", scope: !8, file: !2156, line: 1453, type: !4697, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4703, retainedNodes: !53)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!4603, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_reference_t<std::allocator<char> >", scope: !8, file: !50, line: 225, baseType: !4701)
!4701 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4702, file: !50, line: 208, baseType: !160)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::allocator<char> >", scope: !8, file: !50, line: 207, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !4703, identifier: ".?AU?$remove_reference@V?$allocator@D@std@@@std@@")
!4703 = !{!4704}
!4704 = !DITemplateTypeParameter(name: "_Ty", type: !160)
!4705 = !DILocalVariable(name: "_Arg", arg: 1, scope: !4696, file: !2156, line: 1454, type: !4699)
!4706 = !DILocation(line: 1454, column: 30, scope: !4696)
!4707 = !DILocation(line: 1455, column: 31, scope: !4696)
!4708 = !DILocation(line: 1455, column: 5, scope: !4696)
!4709 = distinct !DISubprogram(name: "_Myptr", linkageName: "?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ", scope: !201, file: !141, line: 2143, type: !263, scopeLine: 2143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !262, retainedNodes: !53)
!4710 = !DILocalVariable(name: "this", arg: 1, scope: !4709, type: !3634, flags: DIFlagArtificial | DIFlagObjectPointer)
!4711 = !DILocation(line: 0, scope: !4709)
!4712 = !DILocalVariable(name: "_Result", scope: !4709, file: !141, line: 2144, type: !265)
!4713 = !DILocation(line: 2144, column: 27, scope: !4709)
!4714 = !DILocation(line: 2144, column: 37, scope: !4709)
!4715 = !DILocation(line: 2144, column: 41, scope: !4709)
!4716 = !DILocation(line: 2145, column: 13, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4709, file: !141, line: 2145, column: 13)
!4718 = !DILocation(line: 2145, column: 13, scope: !4709)
!4719 = !DILocation(line: 2146, column: 32, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4717, file: !141, line: 2145, column: 38)
!4721 = !DILocation(line: 2146, column: 36, scope: !4720)
!4722 = !DILocation(line: 2146, column: 23, scope: !4720)
!4723 = !DILocation(line: 2146, column: 21, scope: !4720)
!4724 = !DILocation(line: 2147, column: 9, scope: !4720)
!4725 = !DILocation(line: 2149, column: 16, scope: !4709)
!4726 = !DILocation(line: 2149, column: 9, scope: !4709)
!4727 = distinct !DISubprogram(name: "basic_string", linkageName: "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@U_String_constructor_concat_tag@1@AEAV01@1@Z", scope: !142, file: !141, line: 2468, type: !395, scopeLine: 2469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !394, retainedNodes: !53)
!4728 = !DILocalVariable(name: "_Right", arg: 4, scope: !4727, file: !141, line: 2468, type: !397)
!4729 = !DILocation(line: 2468, column: 85, scope: !4727)
!4730 = !DILocalVariable(name: "_Left", arg: 3, scope: !4727, file: !141, line: 2468, type: !397)
!4731 = !DILocation(line: 2468, column: 64, scope: !4727)
!4732 = !DILocalVariable(arg: 2, scope: !4727, file: !141, line: 2468, type: !388)
!4733 = !DILocation(line: 2468, column: 48, scope: !4727)
!4734 = !DILocalVariable(name: "this", arg: 1, scope: !4727, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!4735 = !DILocation(line: 0, scope: !4727)
!4736 = !DILocation(line: 2469, column: 11, scope: !4727)
!4737 = !DILocation(line: 2469, column: 48, scope: !4727)
!4738 = !DILocation(line: 2469, column: 54, scope: !4727)
!4739 = !DILocalVariable(name: "_My_data", scope: !4740, file: !141, line: 2470, type: !4640)
!4740 = distinct !DILexicalBlock(scope: !4727, file: !141, line: 2469, column: 64)
!4741 = !DILocation(line: 2470, column: 15, scope: !4740)
!4742 = !DILocation(line: 2470, column: 29, scope: !4740)
!4743 = !DILocation(line: 2470, column: 37, scope: !4740)
!4744 = !DILocalVariable(name: "_Left_data", scope: !4740, file: !141, line: 2471, type: !4640)
!4745 = !DILocation(line: 2471, column: 15, scope: !4740)
!4746 = !DILocation(line: 2471, column: 29, scope: !4740)
!4747 = !DILocation(line: 2471, column: 35, scope: !4740)
!4748 = !DILocation(line: 2471, column: 43, scope: !4740)
!4749 = !DILocalVariable(name: "_Right_data", scope: !4740, file: !141, line: 2472, type: !4640)
!4750 = !DILocation(line: 2472, column: 15, scope: !4740)
!4751 = !DILocation(line: 2472, column: 29, scope: !4740)
!4752 = !DILocation(line: 2472, column: 36, scope: !4740)
!4753 = !DILocation(line: 2472, column: 44, scope: !4740)
!4754 = !DILocation(line: 2473, column: 9, scope: !4740)
!4755 = !DILocation(line: 2473, column: 20, scope: !4740)
!4756 = !DILocation(line: 2474, column: 9, scope: !4740)
!4757 = !DILocation(line: 2474, column: 21, scope: !4740)
!4758 = !DILocalVariable(name: "_Left_size", scope: !4740, file: !141, line: 2475, type: !145)
!4759 = !DILocation(line: 2475, column: 20, scope: !4740)
!4760 = !DILocation(line: 2475, column: 34, scope: !4740)
!4761 = !DILocation(line: 2475, column: 45, scope: !4740)
!4762 = !DILocalVariable(name: "_Right_size", scope: !4740, file: !141, line: 2476, type: !145)
!4763 = !DILocation(line: 2476, column: 20, scope: !4740)
!4764 = !DILocation(line: 2476, column: 34, scope: !4740)
!4765 = !DILocation(line: 2476, column: 46, scope: !4740)
!4766 = !DILocalVariable(name: "_Left_capacity", scope: !4740, file: !141, line: 2478, type: !145)
!4767 = !DILocation(line: 2478, column: 20, scope: !4740)
!4768 = !DILocation(line: 2478, column: 38, scope: !4740)
!4769 = !DILocation(line: 2478, column: 49, scope: !4740)
!4770 = !DILocalVariable(name: "_Right_capacity", scope: !4740, file: !141, line: 2479, type: !145)
!4771 = !DILocation(line: 2479, column: 20, scope: !4740)
!4772 = !DILocation(line: 2479, column: 38, scope: !4740)
!4773 = !DILocation(line: 2479, column: 50, scope: !4740)
!4774 = !DILocalVariable(name: "_New_size", scope: !4740, file: !141, line: 2481, type: !145)
!4775 = !DILocation(line: 2481, column: 20, scope: !4740)
!4776 = !DILocation(line: 2481, column: 59, scope: !4740)
!4777 = !DILocation(line: 2481, column: 72, scope: !4740)
!4778 = !DILocation(line: 2481, column: 70, scope: !4740)
!4779 = !DILocalVariable(name: "_Fits_in_left", scope: !4740, file: !141, line: 2482, type: !148)
!4780 = !DILocation(line: 2482, column: 20, scope: !4740)
!4781 = !DILocation(line: 2482, column: 36, scope: !4740)
!4782 = !DILocation(line: 2482, column: 51, scope: !4740)
!4783 = !DILocation(line: 2482, column: 68, scope: !4740)
!4784 = !DILocation(line: 2482, column: 66, scope: !4740)
!4785 = !DILocation(line: 2482, column: 48, scope: !4740)
!4786 = !DILocation(line: 2483, column: 13, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4740, file: !141, line: 2483, column: 13)
!4788 = !DILocation(line: 2483, column: 27, scope: !4787)
!4789 = !DILocation(line: 2483, column: 30, scope: !4787)
!4790 = !DILocation(line: 2483, column: 49, scope: !4787)
!4791 = !DILocation(line: 2483, column: 46, scope: !4787)
!4792 = !DILocation(line: 2483, column: 13, scope: !4740)
!4793 = !DILocation(line: 2485, column: 13, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4787, file: !141, line: 2483, column: 65)
!4795 = !DILocation(line: 2485, column: 22, scope: !4794)
!4796 = !DILocation(line: 2486, column: 28, scope: !4794)
!4797 = !DILocation(line: 2486, column: 13, scope: !4794)
!4798 = !DILocalVariable(name: "_Ptr", scope: !4794, file: !141, line: 2487, type: !186)
!4799 = !DILocation(line: 2487, column: 24, scope: !4794)
!4800 = !DILocation(line: 2487, column: 31, scope: !4794)
!4801 = !DILocation(line: 2487, column: 40, scope: !4794)
!4802 = !DILocation(line: 2488, column: 68, scope: !4794)
!4803 = !DILocation(line: 2488, column: 80, scope: !4794)
!4804 = !DILocation(line: 2488, column: 46, scope: !4794)
!4805 = !DILocation(line: 2488, column: 58, scope: !4794)
!4806 = !DILocation(line: 2488, column: 27, scope: !4794)
!4807 = !DILocation(line: 2488, column: 34, scope: !4794)
!4808 = !DILocation(line: 2488, column: 32, scope: !4794)
!4809 = !DILocation(line: 2488, column: 13, scope: !4794)
!4810 = !DILocation(line: 2489, column: 32, scope: !4794)
!4811 = !DILocation(line: 2489, column: 13, scope: !4794)
!4812 = !DILocation(line: 2489, column: 22, scope: !4794)
!4813 = !DILocation(line: 2489, column: 30, scope: !4794)
!4814 = !DILocation(line: 2490, column: 13, scope: !4794)
!4815 = !DILocalVariable(name: "_Fits_in_right", scope: !4740, file: !141, line: 2493, type: !148)
!4816 = !DILocation(line: 2493, column: 20, scope: !4740)
!4817 = !DILocation(line: 2493, column: 37, scope: !4740)
!4818 = !DILocation(line: 2493, column: 51, scope: !4740)
!4819 = !DILocation(line: 2493, column: 69, scope: !4740)
!4820 = !DILocation(line: 2493, column: 67, scope: !4740)
!4821 = !DILocation(line: 2493, column: 48, scope: !4740)
!4822 = !DILocation(line: 2494, column: 41, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4740, file: !141, line: 2494, column: 13)
!4824 = !DILocation(line: 2494, column: 48, scope: !4823)
!4825 = !DILocation(line: 2494, column: 31, scope: !4823)
!4826 = !DILocation(line: 2494, column: 13, scope: !4823)
!4827 = !DILocation(line: 2494, column: 58, scope: !4823)
!4828 = !DILocation(line: 2494, column: 61, scope: !4823)
!4829 = !DILocation(line: 2494, column: 13, scope: !4740)
!4830 = !DILocation(line: 2505, column: 13, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4823, file: !141, line: 2494, column: 77)
!4832 = !DILocation(line: 2505, column: 22, scope: !4831)
!4833 = !DILocation(line: 2506, column: 28, scope: !4831)
!4834 = !DILocation(line: 2506, column: 13, scope: !4831)
!4835 = !DILocalVariable(name: "_Ptr", scope: !4831, file: !141, line: 2507, type: !186)
!4836 = !DILocation(line: 2507, column: 24, scope: !4831)
!4837 = !DILocation(line: 2507, column: 40, scope: !4831)
!4838 = !DILocation(line: 2507, column: 49, scope: !4831)
!4839 = !DILocation(line: 2507, column: 53, scope: !4831)
!4840 = !DILocation(line: 2507, column: 31, scope: !4831)
!4841 = !DILocation(line: 2508, column: 52, scope: !4831)
!4842 = !DILocation(line: 2508, column: 64, scope: !4831)
!4843 = !DILocation(line: 2508, column: 46, scope: !4831)
!4844 = !DILocation(line: 2508, column: 27, scope: !4831)
!4845 = !DILocation(line: 2508, column: 34, scope: !4831)
!4846 = !DILocation(line: 2508, column: 32, scope: !4831)
!4847 = !DILocation(line: 2508, column: 13, scope: !4831)
!4848 = !DILocation(line: 2509, column: 54, scope: !4831)
!4849 = !DILocation(line: 2509, column: 33, scope: !4831)
!4850 = !DILocation(line: 2509, column: 44, scope: !4831)
!4851 = !DILocation(line: 2509, column: 27, scope: !4831)
!4852 = !DILocation(line: 2509, column: 13, scope: !4831)
!4853 = !DILocation(line: 2510, column: 32, scope: !4831)
!4854 = !DILocation(line: 2510, column: 13, scope: !4831)
!4855 = !DILocation(line: 2510, column: 22, scope: !4831)
!4856 = !DILocation(line: 2510, column: 30, scope: !4831)
!4857 = !DILocation(line: 2511, column: 13, scope: !4831)
!4858 = !DILocalVariable(name: "_Max", scope: !4740, file: !141, line: 2515, type: !145)
!4859 = !DILocation(line: 2515, column: 20, scope: !4740)
!4860 = !DILocation(line: 2515, column: 27, scope: !4740)
!4861 = !DILocation(line: 2516, column: 13, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4740, file: !141, line: 2516, column: 13)
!4863 = !DILocation(line: 2516, column: 20, scope: !4862)
!4864 = !DILocation(line: 2516, column: 18, scope: !4862)
!4865 = !DILocation(line: 2516, column: 33, scope: !4862)
!4866 = !DILocation(line: 2516, column: 31, scope: !4862)
!4867 = !DILocation(line: 2516, column: 13, scope: !4740)
!4868 = !DILocation(line: 2517, column: 13, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4862, file: !141, line: 2516, column: 46)
!4870 = !DILocalVariable(name: "_New_capacity", scope: !4740, file: !141, line: 2520, type: !145)
!4871 = !DILocation(line: 2520, column: 20, scope: !4740)
!4872 = !DILocation(line: 2520, column: 80, scope: !4740)
!4873 = !DILocation(line: 2520, column: 54, scope: !4740)
!4874 = !DILocation(line: 2520, column: 36, scope: !4740)
!4875 = !DILocalVariable(name: "_Alproxy", scope: !4740, file: !141, line: 2521, type: !2271)
!4876 = !DILocation(line: 2521, column: 16, scope: !4740)
!4877 = !DILocalVariable(name: "_Proxy", scope: !4740, file: !141, line: 2522, type: !2274)
!4878 = !DILocation(line: 2522, column: 37, scope: !4740)
!4879 = !DILocation(line: 2522, column: 54, scope: !4740)
!4880 = !DILocation(line: 2522, column: 44, scope: !4740)
!4881 = !DILocalVariable(name: "_Fancyptr", scope: !4740, file: !141, line: 2523, type: !3580)
!4882 = !DILocation(line: 2523, column: 23, scope: !4740)
!4883 = !DILocation(line: 2523, column: 35, scope: !4740)
!4884 = !DILocation(line: 2523, column: 53, scope: !4740)
!4885 = !DILocation(line: 2523, column: 67, scope: !4740)
!4886 = !DILocation(line: 2523, column: 44, scope: !4740)
!4887 = !DILocation(line: 2525, column: 29, scope: !4740)
!4888 = !DILocation(line: 2525, column: 38, scope: !4740)
!4889 = !DILocation(line: 2525, column: 42, scope: !4740)
!4890 = !DILocation(line: 2525, column: 9, scope: !4740)
!4891 = !DILocation(line: 2526, column: 28, scope: !4740)
!4892 = !DILocation(line: 2526, column: 9, scope: !4740)
!4893 = !DILocation(line: 2526, column: 18, scope: !4740)
!4894 = !DILocation(line: 2526, column: 26, scope: !4740)
!4895 = !DILocation(line: 2527, column: 28, scope: !4740)
!4896 = !DILocation(line: 2527, column: 9, scope: !4740)
!4897 = !DILocation(line: 2527, column: 18, scope: !4740)
!4898 = !DILocation(line: 2527, column: 26, scope: !4740)
!4899 = !DILocalVariable(name: "_Ptr", scope: !4740, file: !141, line: 2528, type: !186)
!4900 = !DILocation(line: 2528, column: 20, scope: !4740)
!4901 = !DILocation(line: 2528, column: 37, scope: !4740)
!4902 = !DILocation(line: 2528, column: 28, scope: !4740)
!4903 = !DILocation(line: 2529, column: 50, scope: !4740)
!4904 = !DILocation(line: 2529, column: 29, scope: !4740)
!4905 = !DILocation(line: 2529, column: 40, scope: !4740)
!4906 = !DILocation(line: 2529, column: 23, scope: !4740)
!4907 = !DILocation(line: 2529, column: 9, scope: !4740)
!4908 = !DILocation(line: 2530, column: 64, scope: !4740)
!4909 = !DILocation(line: 2530, column: 76, scope: !4740)
!4910 = !DILocation(line: 2530, column: 42, scope: !4740)
!4911 = !DILocation(line: 2530, column: 54, scope: !4740)
!4912 = !DILocation(line: 2530, column: 23, scope: !4740)
!4913 = !DILocation(line: 2530, column: 30, scope: !4740)
!4914 = !DILocation(line: 2530, column: 28, scope: !4740)
!4915 = !DILocation(line: 2530, column: 9, scope: !4740)
!4916 = !DILocation(line: 2531, column: 16, scope: !4740)
!4917 = !DILocation(line: 2532, column: 5, scope: !4727)
!4918 = !DILocation(line: 2532, column: 5, scope: !4740)
!4919 = distinct !DISubprogram(name: "_Compressed_pair<std::allocator<char> &>", linkageName: "??$?0AEAV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEAV?$allocator@D@1@@Z", scope: !156, file: !157, line: 1339, type: !4920, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4923, declaration: !4922, retainedNodes: !53)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !288, !4597, !287}
!4922 = !DISubprogram(name: "_Compressed_pair<std::allocator<char> &>", scope: !156, file: !157, line: 1339, type: !4920, scopeLine: 1339, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !4923)
!4923 = !{!4924, !3410}
!4924 = !DITemplateTypeParameter(name: "_Other1", type: !287)
!4925 = !DILocalVariable(name: "_Val1", arg: 3, scope: !4919, file: !157, line: 1339, type: !287)
!4926 = !DILocation(line: 1339, column: 69, scope: !4919)
!4927 = !DILocalVariable(arg: 2, scope: !4919, file: !157, line: 1339, type: !4597)
!4928 = !DILocation(line: 1339, column: 57, scope: !4919)
!4929 = !DILocalVariable(name: "this", arg: 1, scope: !4919, type: !3623, flags: DIFlagArtificial | DIFlagObjectPointer)
!4930 = !DILocation(line: 0, scope: !4919)
!4931 = !DILocation(line: 1341, column: 88, scope: !4919)
!4932 = !DILocation(line: 1341, column: 38, scope: !4919)
!4933 = !DILocation(line: 1341, column: 16, scope: !4919)
!4934 = !DILocation(line: 1341, column: 47, scope: !4919)
!4935 = !DILocation(line: 1341, column: 89, scope: !4919)
!4936 = !DILocation(line: 1341, column: 89, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4919, file: !157, line: 1341, column: 88)
!4938 = distinct !DISubprogram(name: "_Alloc_proxy", linkageName: "?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z", scope: !205, file: !157, line: 1067, type: !216, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !215, retainedNodes: !53)
!4939 = !DILocalVariable(arg: 2, scope: !4938, file: !157, line: 1067, type: !218)
!4940 = !DILocation(line: 1067, column: 45, scope: !4938)
!4941 = !DILocalVariable(name: "this", arg: 1, scope: !4938, type: !2304, flags: DIFlagArtificial | DIFlagObjectPointer)
!4942 = !DILocation(line: 0, scope: !4938)
!4943 = !DILocation(line: 1067, column: 57, scope: !4938)
!4944 = distinct !DISubprogram(name: "_Take_contents", linkageName: "?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z", scope: !142, file: !141, line: 2609, type: !445, scopeLine: 2609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !444, retainedNodes: !53)
!4945 = !DILocalVariable(arg: 3, scope: !4944, file: !141, line: 2609, type: !406)
!4946 = !DILocation(line: 2609, column: 56, scope: !4944)
!4947 = !DILocalVariable(name: "_Right", arg: 2, scope: !4944, file: !141, line: 2609, type: !397)
!4948 = !DILocation(line: 2609, column: 39, scope: !4944)
!4949 = !DILocalVariable(name: "this", arg: 1, scope: !4944, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!4950 = !DILocation(line: 0, scope: !4944)
!4951 = !DILocation(line: 2624, column: 26, scope: !4944)
!4952 = !DILocation(line: 2624, column: 9, scope: !4944)
!4953 = !DILocation(line: 2625, column: 9, scope: !4944)
!4954 = !DILocation(line: 2625, column: 16, scope: !4944)
!4955 = !DILocation(line: 2626, column: 5, scope: !4944)
!4956 = distinct !DISubprogram(name: "_Allocators_equal<std::allocator<char> >", linkageName: "??$_Allocators_equal@V?$allocator@D@std@@@std@@YA_NAEBV?$allocator@D@0@0@Z", scope: !8, file: !157, line: 1999, type: !4957, scopeLine: 1999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !343, retainedNodes: !53)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!56, !182, !182}
!4959 = !DILocalVariable(name: "_Rhs", arg: 2, scope: !4956, file: !157, line: 1999, type: !182)
!4960 = !DILocation(line: 1999, column: 79, scope: !4956)
!4961 = !DILocalVariable(name: "_Lhs", arg: 1, scope: !4956, file: !157, line: 1999, type: !182)
!4962 = !DILocation(line: 1999, column: 59, scope: !4956)
!4963 = !DILocation(line: 2001, column: 9, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !157, line: 2000, column: 73)
!4965 = distinct !DILexicalBlock(scope: !4956, file: !157, line: 2000, column: 23)
!4966 = distinct !DISubprogram(name: "forward<std::allocator<char> &>", linkageName: "??$forward@AEAV?$allocator@D@std@@@std@@YAAEAV?$allocator@D@0@AEAV10@@Z", scope: !8, file: !2156, line: 1453, type: !4967, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4973, retainedNodes: !53)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!287, !4969}
!4969 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4970, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_reference_t<std::allocator<char> &>", scope: !8, file: !50, line: 225, baseType: !4971)
!4971 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4972, file: !50, line: 214, baseType: !160)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::allocator<char> &>", scope: !8, file: !50, line: 213, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !4973, identifier: ".?AU?$remove_reference@AEAV?$allocator@D@std@@@std@@")
!4973 = !{!4974}
!4974 = !DITemplateTypeParameter(name: "_Ty", type: !287)
!4975 = !DILocalVariable(name: "_Arg", arg: 1, scope: !4966, file: !2156, line: 1454, type: !4969)
!4976 = !DILocation(line: 1454, column: 30, scope: !4966)
!4977 = !DILocation(line: 1455, column: 31, scope: !4966)
!4978 = !DILocation(line: 1455, column: 5, scope: !4966)
!4979 = distinct !DISubprogram(name: "_Memcpy_val_from", linkageName: "?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z", scope: !142, file: !141, line: 2600, type: !298, scopeLine: 2600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !443, retainedNodes: !53)
!4980 = !DILocalVariable(name: "_Right", arg: 2, scope: !4979, file: !141, line: 2600, type: !301)
!4981 = !DILocation(line: 2600, column: 47, scope: !4979)
!4982 = !DILocalVariable(name: "this", arg: 1, scope: !4979, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!4983 = !DILocation(line: 0, scope: !4979)
!4984 = !DILocalVariable(name: "_My_data_mem", scope: !4979, file: !141, line: 2602, type: !4985)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!4986 = !DILocation(line: 2602, column: 20, scope: !4979)
!4987 = !DILocation(line: 2603, column: 61, scope: !4979)
!4988 = !DILocation(line: 2603, column: 69, scope: !4979)
!4989 = !DILocation(line: 2603, column: 46, scope: !4979)
!4990 = !DILocation(line: 2603, column: 13, scope: !4979)
!4991 = !DILocation(line: 2603, column: 79, scope: !4979)
!4992 = !DILocalVariable(name: "_Right_data_mem", scope: !4979, file: !141, line: 2604, type: !4993)
!4993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!4994 = !DILocation(line: 2604, column: 20, scope: !4979)
!4995 = !DILocation(line: 2605, column: 67, scope: !4979)
!4996 = !DILocation(line: 2605, column: 74, scope: !4979)
!4997 = !DILocation(line: 2605, column: 82, scope: !4979)
!4998 = !DILocation(line: 2605, column: 52, scope: !4979)
!4999 = !DILocation(line: 2605, column: 13, scope: !4979)
!5000 = !DILocation(line: 2605, column: 92, scope: !4979)
!5001 = !DILocation(line: 2606, column: 22, scope: !4979)
!5002 = !DILocation(line: 2606, column: 36, scope: !4979)
!5003 = !DILocation(line: 2606, column: 9, scope: !4979)
!5004 = !DILocation(line: 2607, column: 5, scope: !4979)
!5005 = distinct !DISubprogram(name: "addressof<std::_String_val<std::_Simple_types<char> > >", linkageName: "??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z", scope: !8, file: !4143, line: 274, type: !5006, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !5008, retainedNodes: !53)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!3750, !4640}
!5008 = !{!5009}
!5009 = !DITemplateTypeParameter(name: "_Ty", type: !201)
!5010 = !DILocalVariable(name: "_Val", arg: 1, scope: !5005, file: !4143, line: 274, type: !4640)
!5011 = !DILocation(line: 274, column: 42, scope: !5005)
!5012 = !DILocation(line: 275, column: 32, scope: !5005)
!5013 = !DILocation(line: 275, column: 5, scope: !5005)
!5014 = distinct !DISubprogram(name: "addressof<const std::_String_val<std::_Simple_types<char> > >", linkageName: "??$addressof@$$CBV?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEBV?$_String_val@U?$_Simple_types@D@std@@@0@AEBV10@@Z", scope: !8, file: !4143, line: 274, type: !5015, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !5017, retainedNodes: !53)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!3634, !4626}
!5017 = !{!5018}
!5018 = !DITemplateTypeParameter(name: "_Ty", type: !268)
!5019 = !DILocalVariable(name: "_Val", arg: 1, scope: !5014, file: !4143, line: 274, type: !4626)
!5020 = !DILocation(line: 274, column: 42, scope: !5014)
!5021 = !DILocation(line: 275, column: 32, scope: !5014)
!5022 = !DILocation(line: 275, column: 5, scope: !5014)
!5023 = distinct !DISubprogram(name: "move<std::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", linkageName: "??$move@AEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YA$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z", scope: !8, file: !2156, line: 1466, type: !5024, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !5030, retainedNodes: !53)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!5026, !397}
!5026 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5027, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_typedef, name: "remove_reference_t<std::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", scope: !8, file: !50, line: 225, baseType: !5028)
!5028 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !5029, file: !50, line: 214, baseType: !142)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", scope: !8, file: !50, line: 213, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !5030, identifier: ".?AU?$remove_reference@AEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@")
!5030 = !{!5031}
!5031 = !DITemplateTypeParameter(name: "_Ty", type: !397)
!5032 = !DILocalVariable(name: "_Arg", arg: 1, scope: !5023, file: !2156, line: 1466, type: !397)
!5033 = !DILocation(line: 1466, column: 59, scope: !5023)
!5034 = !DILocation(line: 1467, column: 51, scope: !5023)
!5035 = !DILocation(line: 1467, column: 5, scope: !5023)
!5036 = distinct !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z", scope: !142, file: !141, line: 2879, type: !486, scopeLine: 2879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !503, retainedNodes: !53)
!5037 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !5036, file: !141, line: 2879, type: !351)
!5038 = !DILocation(line: 2879, column: 52, scope: !5036)
!5039 = !DILocalVariable(name: "this", arg: 1, scope: !5036, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5040 = !DILocation(line: 0, scope: !5036)
!5041 = !DILocation(line: 2880, column: 70, scope: !5036)
!5042 = !DILocation(line: 2880, column: 54, scope: !5036)
!5043 = !DILocation(line: 2880, column: 29, scope: !5036)
!5044 = !DILocation(line: 2880, column: 23, scope: !5036)
!5045 = !DILocation(line: 2880, column: 16, scope: !5036)
!5046 = !DILocation(line: 2880, column: 9, scope: !5036)
!5047 = distinct !DISubprogram(name: "basic_string", linkageName: "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z", scope: !142, file: !141, line: 2418, type: !379, scopeLine: 2418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !378, retainedNodes: !53)
!5048 = !DILocalVariable(name: "_Right", arg: 2, scope: !5047, file: !141, line: 2418, type: !381)
!5049 = !DILocation(line: 2418, column: 33, scope: !5047)
!5050 = !DILocalVariable(name: "this", arg: 1, scope: !5047, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5051 = !DILocation(line: 0, scope: !5047)
!5052 = !DILocation(line: 2418, column: 52, scope: !5047)
!5053 = !DILocation(line: 2418, column: 99, scope: !5047)
!5054 = !DILocation(line: 2418, column: 106, scope: !5047)
!5055 = !DILocation(line: 2418, column: 89, scope: !5047)
!5056 = !DILocation(line: 2419, column: 9, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5047, file: !141, line: 2418, column: 117)
!5058 = !DILocation(line: 2419, column: 17, scope: !5057)
!5059 = !DILocation(line: 2419, column: 25, scope: !5057)
!5060 = !DILocation(line: 2420, column: 24, scope: !5057)
!5061 = !DILocation(line: 2420, column: 9, scope: !5057)
!5062 = !DILocation(line: 2421, column: 5, scope: !5047)
!5063 = !DILocation(line: 2421, column: 5, scope: !5057)
!5064 = distinct !DISubprogram(name: "append", linkageName: "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z", scope: !142, file: !141, line: 2857, type: !501, scopeLine: 2857, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !500, retainedNodes: !53)
!5065 = !DILocalVariable(name: "_Count", arg: 3, scope: !5064, file: !141, line: 2857, type: !315)
!5066 = !DILocation(line: 2857, column: 105, scope: !5064)
!5067 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !5064, file: !141, line: 2857, type: !351)
!5068 = !DILocation(line: 2857, column: 64, scope: !5064)
!5069 = !DILocalVariable(name: "this", arg: 1, scope: !5064, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5070 = !DILocation(line: 0, scope: !5064)
!5071 = !DILocalVariable(name: "_Old_size", scope: !5064, file: !141, line: 2859, type: !315)
!5072 = !DILocation(line: 2859, column: 25, scope: !5064)
!5073 = !DILocation(line: 2859, column: 37, scope: !5064)
!5074 = !DILocation(line: 2859, column: 45, scope: !5064)
!5075 = !DILocation(line: 2859, column: 53, scope: !5064)
!5076 = !DILocation(line: 2860, column: 13, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5064, file: !141, line: 2860, column: 13)
!5078 = !DILocation(line: 2860, column: 23, scope: !5077)
!5079 = !DILocation(line: 2860, column: 31, scope: !5077)
!5080 = !DILocation(line: 2860, column: 39, scope: !5077)
!5081 = !DILocation(line: 2860, column: 48, scope: !5077)
!5082 = !DILocation(line: 2860, column: 46, scope: !5077)
!5083 = !DILocation(line: 2860, column: 20, scope: !5077)
!5084 = !DILocation(line: 2860, column: 13, scope: !5064)
!5085 = !DILocation(line: 2861, column: 39, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5077, file: !141, line: 2860, column: 59)
!5087 = !DILocation(line: 2861, column: 51, scope: !5086)
!5088 = !DILocation(line: 2861, column: 49, scope: !5086)
!5089 = !DILocation(line: 2861, column: 13, scope: !5086)
!5090 = !DILocation(line: 2861, column: 21, scope: !5086)
!5091 = !DILocation(line: 2861, column: 29, scope: !5086)
!5092 = !DILocation(line: 2861, column: 37, scope: !5086)
!5093 = !DILocalVariable(name: "_Old_ptr", scope: !5086, file: !141, line: 2862, type: !186)
!5094 = !DILocation(line: 2862, column: 26, scope: !5086)
!5095 = !DILocation(line: 2862, column: 39, scope: !5086)
!5096 = !DILocation(line: 2862, column: 47, scope: !5086)
!5097 = !DILocation(line: 2862, column: 55, scope: !5086)
!5098 = !DILocation(line: 2863, column: 55, scope: !5086)
!5099 = !DILocation(line: 2863, column: 49, scope: !5086)
!5100 = !DILocation(line: 2863, column: 27, scope: !5086)
!5101 = !DILocation(line: 2863, column: 38, scope: !5086)
!5102 = !DILocation(line: 2863, column: 36, scope: !5086)
!5103 = !DILocation(line: 2863, column: 13, scope: !5086)
!5104 = !DILocation(line: 2864, column: 59, scope: !5086)
!5105 = !DILocation(line: 2864, column: 29, scope: !5086)
!5106 = !DILocation(line: 2864, column: 38, scope: !5086)
!5107 = !DILocation(line: 2864, column: 50, scope: !5086)
!5108 = !DILocation(line: 2864, column: 48, scope: !5086)
!5109 = !DILocation(line: 2864, column: 13, scope: !5086)
!5110 = !DILocation(line: 2865, column: 13, scope: !5086)
!5111 = !DILocation(line: 2876, column: 19, scope: !5064)
!5112 = !DILocation(line: 2876, column: 13, scope: !5064)
!5113 = !DILocation(line: 2869, column: 13, scope: !5064)
!5114 = !DILocation(line: 2868, column: 16, scope: !5064)
!5115 = !DILocation(line: 2868, column: 9, scope: !5064)
!5116 = !DILocation(line: 2877, column: 5, scope: !5064)
!5117 = distinct !DISubprogram(name: "_Reallocate_grow_by<(lambda at C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\stl\\xstring:2870:13), const char *, unsigned long long>", linkageName: "??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z", scope: !142, file: !141, line: 4244, type: !5118, scopeLine: 4244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !5122, declaration: !5121, retainedNodes: !53)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!397, !300, !315, !5120, !172, !24}
!5120 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !5064, file: !141, line: 2870, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !53, identifier: ".?AV<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@")
!5121 = !DISubprogram(name: "_Reallocate_grow_by<(lambda at C:\\temp2\\llvm-project\\WindbgPlugin\\ExecutableTest\\stl\\xstring:2870:13), const char *, unsigned long long>", linkageName: "??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z", scope: !142, file: !141, line: 4244, type: !5118, scopeLine: 4244, flags: DIFlagPrototyped, spFlags: 0, templateParams: !5122)
!5122 = !{!5123, !5124}
!5123 = !DITemplateTypeParameter(name: "_Fty", type: !5120)
!5124 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_ArgTys", value: !5125)
!5125 = !{!4063, !5126}
!5126 = !DITemplateTypeParameter(type: !24)
!5127 = !DILocalVariable(name: "_Args", arg: 5, scope: !5117, file: !141, line: 4244, type: !24)
!5128 = !DILocation(line: 4244, column: 92, scope: !5117)
!5129 = !DILocalVariable(name: "_Args", arg: 4, scope: !5117, file: !141, line: 4244, type: !172)
!5130 = !DILocalVariable(name: "_Fn", arg: 3, scope: !5117, file: !141, line: 4244, type: !5120)
!5131 = !DILocation(line: 4244, column: 76, scope: !5117)
!5132 = !DILocalVariable(name: "_Size_increase", arg: 2, scope: !5117, file: !141, line: 4244, type: !315)
!5133 = !DILocation(line: 4244, column: 55, scope: !5117)
!5134 = !DILocalVariable(name: "this", arg: 1, scope: !5117, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5135 = !DILocation(line: 0, scope: !5117)
!5136 = !DILocalVariable(name: "_My_data", scope: !5117, file: !141, line: 4247, type: !4640)
!5137 = !DILocation(line: 4247, column: 15, scope: !5117)
!5138 = !DILocation(line: 4247, column: 37, scope: !5117)
!5139 = !DILocation(line: 4247, column: 45, scope: !5117)
!5140 = !DILocalVariable(name: "_Old_size", scope: !5117, file: !141, line: 4248, type: !315)
!5141 = !DILocation(line: 4248, column: 25, scope: !5117)
!5142 = !DILocation(line: 4248, column: 37, scope: !5117)
!5143 = !DILocation(line: 4248, column: 46, scope: !5117)
!5144 = !DILocation(line: 4249, column: 13, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5117, file: !141, line: 4249, column: 13)
!5146 = !DILocation(line: 4249, column: 26, scope: !5145)
!5147 = !DILocation(line: 4249, column: 24, scope: !5145)
!5148 = !DILocation(line: 4249, column: 38, scope: !5145)
!5149 = !DILocation(line: 4249, column: 36, scope: !5145)
!5150 = !DILocation(line: 4249, column: 13, scope: !5117)
!5151 = !DILocation(line: 4250, column: 13, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5145, file: !141, line: 4249, column: 54)
!5153 = !DILocalVariable(name: "_New_size", scope: !5117, file: !141, line: 4253, type: !315)
!5154 = !DILocation(line: 4253, column: 25, scope: !5117)
!5155 = !DILocation(line: 4253, column: 41, scope: !5117)
!5156 = !DILocation(line: 4253, column: 53, scope: !5117)
!5157 = !DILocation(line: 4253, column: 51, scope: !5117)
!5158 = !DILocalVariable(name: "_Old_capacity", scope: !5117, file: !141, line: 4254, type: !315)
!5159 = !DILocation(line: 4254, column: 25, scope: !5117)
!5160 = !DILocation(line: 4254, column: 41, scope: !5117)
!5161 = !DILocation(line: 4254, column: 50, scope: !5117)
!5162 = !DILocalVariable(name: "_New_capacity", scope: !5117, file: !141, line: 4255, type: !315)
!5163 = !DILocation(line: 4255, column: 25, scope: !5117)
!5164 = !DILocation(line: 4255, column: 59, scope: !5117)
!5165 = !DILocation(line: 4255, column: 41, scope: !5117)
!5166 = !DILocalVariable(name: "_Al", scope: !5117, file: !141, line: 4256, type: !287)
!5167 = !DILocation(line: 4256, column: 15, scope: !5117)
!5168 = !DILocation(line: 4256, column: 41, scope: !5117)
!5169 = !DILocalVariable(name: "_New_ptr", scope: !5117, file: !141, line: 4257, type: !3580)
!5170 = !DILocation(line: 4257, column: 23, scope: !5117)
!5171 = !DILocation(line: 4257, column: 41, scope: !5117)
!5172 = !DILocation(line: 4257, column: 54, scope: !5117)
!5173 = !DILocation(line: 4257, column: 68, scope: !5117)
!5174 = !DILocation(line: 4257, column: 45, scope: !5117)
!5175 = !DILocation(line: 4258, column: 9, scope: !5117)
!5176 = !DILocation(line: 4258, column: 18, scope: !5117)
!5177 = !DILocation(line: 4259, column: 33, scope: !5117)
!5178 = !DILocation(line: 4259, column: 9, scope: !5117)
!5179 = !DILocation(line: 4259, column: 18, scope: !5117)
!5180 = !DILocation(line: 4259, column: 31, scope: !5117)
!5181 = !DILocation(line: 4260, column: 33, scope: !5117)
!5182 = !DILocation(line: 4260, column: 9, scope: !5117)
!5183 = !DILocation(line: 4260, column: 18, scope: !5117)
!5184 = !DILocation(line: 4260, column: 31, scope: !5117)
!5185 = !DILocalVariable(name: "_Raw_new", scope: !5117, file: !141, line: 4261, type: !186)
!5186 = !DILocation(line: 4261, column: 22, scope: !5117)
!5187 = !DILocation(line: 4261, column: 42, scope: !5117)
!5188 = !DILocation(line: 4261, column: 33, scope: !5117)
!5189 = !DILocation(line: 4262, column: 26, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5117, file: !141, line: 4262, column: 13)
!5191 = !DILocation(line: 4262, column: 23, scope: !5190)
!5192 = !DILocation(line: 4262, column: 13, scope: !5117)
!5193 = !DILocalVariable(name: "_Old_ptr", scope: !5194, file: !141, line: 4263, type: !3580)
!5194 = distinct !DILexicalBlock(scope: !5190, file: !141, line: 4262, column: 41)
!5195 = !DILocation(line: 4263, column: 27, scope: !5194)
!5196 = !DILocation(line: 4263, column: 38, scope: !5194)
!5197 = !DILocation(line: 4263, column: 47, scope: !5194)
!5198 = !DILocation(line: 4263, column: 51, scope: !5194)
!5199 = !DILocation(line: 4264, column: 58, scope: !5194)
!5200 = !DILocation(line: 4264, column: 47, scope: !5194)
!5201 = !DILocation(line: 4264, column: 36, scope: !5194)
!5202 = !DILocation(line: 4264, column: 27, scope: !5194)
!5203 = !DILocation(line: 4264, column: 17, scope: !5194)
!5204 = !DILocation(line: 4264, column: 13, scope: !5194)
!5205 = !DILocation(line: 4265, column: 13, scope: !5194)
!5206 = !DILocation(line: 4265, column: 38, scope: !5194)
!5207 = !DILocation(line: 4265, column: 52, scope: !5194)
!5208 = !DILocation(line: 4265, column: 28, scope: !5194)
!5209 = !DILocation(line: 4265, column: 17, scope: !5194)
!5210 = !DILocation(line: 4266, column: 33, scope: !5194)
!5211 = !DILocation(line: 4266, column: 13, scope: !5194)
!5212 = !DILocation(line: 4266, column: 22, scope: !5194)
!5213 = !DILocation(line: 4266, column: 26, scope: !5194)
!5214 = !DILocation(line: 4266, column: 31, scope: !5194)
!5215 = !DILocation(line: 4267, column: 9, scope: !5194)
!5216 = !DILocation(line: 4268, column: 57, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5190, file: !141, line: 4267, column: 16)
!5218 = !DILocation(line: 4268, column: 46, scope: !5217)
!5219 = !DILocation(line: 4268, column: 27, scope: !5217)
!5220 = !DILocation(line: 4268, column: 36, scope: !5217)
!5221 = !DILocation(line: 4268, column: 40, scope: !5217)
!5222 = !DILocation(line: 4268, column: 17, scope: !5217)
!5223 = !DILocation(line: 4268, column: 13, scope: !5217)
!5224 = !DILocation(line: 4269, column: 33, scope: !5217)
!5225 = !DILocation(line: 4269, column: 42, scope: !5217)
!5226 = !DILocation(line: 4269, column: 46, scope: !5217)
!5227 = !DILocation(line: 4269, column: 13, scope: !5217)
!5228 = !DILocation(line: 4272, column: 9, scope: !5117)
!5229 = distinct !DISubprogram(name: "operator()", linkageName: "??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z", scope: !5120, file: !141, line: 2870, type: !5230, scopeLine: 2871, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !5234, retainedNodes: !53)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{null, !5232, !186, !351, !315, !351, !315}
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5120)
!5234 = !DISubprogram(name: "operator()", scope: !5120, file: !141, line: 2870, type: !5235, scopeLine: 2870, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!4197, !5232, !186, !351, !315, !351, !315}
!5237 = !DILocalVariable(name: "_Count", arg: 6, scope: !5229, file: !141, line: 2871, type: !315)
!5238 = !DILocation(line: 2871, column: 33, scope: !5229)
!5239 = !DILocalVariable(name: "_Ptr", arg: 5, scope: !5229, file: !141, line: 2870, type: !351)
!5240 = !DILocation(line: 2870, column: 114, scope: !5229)
!5241 = !DILocalVariable(name: "_Old_size", arg: 4, scope: !5229, file: !141, line: 2870, type: !315)
!5242 = !DILocation(line: 2870, column: 84, scope: !5229)
!5243 = !DILocalVariable(name: "_Old_ptr", arg: 3, scope: !5229, file: !141, line: 2870, type: !351)
!5244 = !DILocation(line: 2870, column: 58, scope: !5229)
!5245 = !DILocalVariable(name: "_New_ptr", arg: 2, scope: !5229, file: !141, line: 2870, type: !186)
!5246 = !DILocation(line: 2870, column: 29, scope: !5229)
!5247 = !DILocalVariable(name: "this", arg: 1, scope: !5229, type: !5248, flags: DIFlagArtificial | DIFlagObjectPointer)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5249 = !DILocation(line: 0, scope: !5229)
!5250 = !DILocation(line: 2872, column: 51, scope: !5229)
!5251 = !DILocation(line: 2872, column: 41, scope: !5229)
!5252 = !DILocation(line: 2872, column: 31, scope: !5229)
!5253 = !DILocation(line: 2872, column: 17, scope: !5229)
!5254 = !DILocation(line: 2873, column: 59, scope: !5229)
!5255 = !DILocation(line: 2873, column: 53, scope: !5229)
!5256 = !DILocation(line: 2873, column: 31, scope: !5229)
!5257 = !DILocation(line: 2873, column: 42, scope: !5229)
!5258 = !DILocation(line: 2873, column: 40, scope: !5229)
!5259 = !DILocation(line: 2873, column: 17, scope: !5229)
!5260 = !DILocation(line: 2874, column: 63, scope: !5229)
!5261 = !DILocation(line: 2874, column: 33, scope: !5229)
!5262 = !DILocation(line: 2874, column: 42, scope: !5229)
!5263 = !DILocation(line: 2874, column: 54, scope: !5229)
!5264 = !DILocation(line: 2874, column: 52, scope: !5229)
!5265 = !DILocation(line: 2874, column: 17, scope: !5229)
!5266 = !DILocation(line: 2875, column: 13, scope: !5229)
!5267 = distinct !DISubprogram(name: "move<std::allocator<char> &>", linkageName: "??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z", scope: !8, file: !2156, line: 1466, type: !5268, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4973, retainedNodes: !53)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!5270, !287}
!5270 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4970, size: 64)
!5271 = !DILocalVariable(name: "_Arg", arg: 1, scope: !5267, file: !2156, line: 1466, type: !287)
!5272 = !DILocation(line: 1466, column: 59, scope: !5267)
!5273 = !DILocation(line: 1467, column: 51, scope: !5267)
!5274 = !DILocation(line: 1467, column: 5, scope: !5267)
!5275 = distinct !DISubprogram(name: "addressof<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >", linkageName: "??$addressof@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@YAPEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEAV10@@Z", scope: !8, file: !4143, line: 274, type: !5276, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !5278, retainedNodes: !53)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!2266, !397}
!5278 = !{!5279}
!5279 = !DITemplateTypeParameter(name: "_Ty", type: !142)
!5280 = !DILocalVariable(name: "_Val", arg: 1, scope: !5275, file: !4143, line: 274, type: !397)
!5281 = !DILocation(line: 274, column: 42, scope: !5275)
!5282 = !DILocation(line: 275, column: 32, scope: !5275)
!5283 = !DILocation(line: 275, column: 5, scope: !5275)
!5284 = distinct !DISubprogram(name: "_Move_assign", linkageName: "?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z", scope: !142, file: !141, line: 2558, type: !399, scopeLine: 2558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !398, retainedNodes: !53)
!5285 = !DILocalVariable(arg: 3, scope: !5284, file: !141, line: 2558, type: !401)
!5286 = !DILocation(line: 2558, column: 62, scope: !5284)
!5287 = !DILocalVariable(name: "_Right", arg: 2, scope: !5284, file: !141, line: 2558, type: !397)
!5288 = !DILocation(line: 2558, column: 37, scope: !5284)
!5289 = !DILocalVariable(name: "this", arg: 1, scope: !5284, type: !2266, flags: DIFlagArtificial | DIFlagObjectPointer)
!5290 = !DILocation(line: 0, scope: !5284)
!5291 = !DILocation(line: 2559, column: 9, scope: !5284)
!5292 = !DILocation(line: 2560, column: 26, scope: !5284)
!5293 = !DILocation(line: 2560, column: 33, scope: !5284)
!5294 = !DILocation(line: 2560, column: 16, scope: !5284)
!5295 = !DILocation(line: 2560, column: 9, scope: !5284)
!5296 = !DILocation(line: 2561, column: 24, scope: !5284)
!5297 = !DILocation(line: 2561, column: 9, scope: !5284)
!5298 = !DILocation(line: 2562, column: 5, scope: !5284)
!5299 = distinct !DISubprogram(name: "_Pocma<std::allocator<char> >", linkageName: "??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z", scope: !8, file: !157, line: 901, type: !5300, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !343, retainedNodes: !53)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{null, !287, !287}
!5302 = !DILocalVariable(name: "_Right", arg: 2, scope: !5299, file: !157, line: 901, type: !287)
!5303 = !DILocation(line: 901, column: 36, scope: !5299)
!5304 = !DILocalVariable(name: "_Left", arg: 1, scope: !5299, file: !157, line: 901, type: !287)
!5305 = !DILocation(line: 901, column: 21, scope: !5299)
!5306 = !DILocation(line: 903, column: 27, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5308, file: !157, line: 902, column: 92)
!5308 = distinct !DILexicalBlock(scope: !5299, file: !157, line: 902, column: 19)
!5309 = !DILocation(line: 903, column: 17, scope: !5307)
!5310 = !DILocation(line: 903, column: 9, scope: !5307)
!5311 = !DILocation(line: 905, column: 1, scope: !5299)
!5312 = distinct !DISubprogram(name: "has_value", linkageName: "?has_value@?$optional@H@std@@QEBA_NXZ", scope: !42, file: !43, line: 363, type: !133, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !135, retainedNodes: !53)
!5313 = !DILocalVariable(name: "this", arg: 1, scope: !5312, type: !5314, flags: DIFlagArtificial | DIFlagObjectPointer)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!5315 = !DILocation(line: 0, scope: !5312)
!5316 = !DILocation(line: 364, column: 22, scope: !5312)
!5317 = !DILocation(line: 364, column: 9, scope: !5312)
!5318 = distinct !DISubprogram(name: "operator*", linkageName: "??D?$optional@H@std@@QEGBAAEBHXZ", scope: !42, file: !43, line: 347, type: !117, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !116, retainedNodes: !53)
!5319 = !DILocalVariable(name: "this", arg: 1, scope: !5318, type: !5314, flags: DIFlagArtificial | DIFlagObjectPointer)
!5320 = !DILocation(line: 0, scope: !5318)
!5321 = !DILocation(line: 348, column: 22, scope: !5318)
!5322 = !DILocation(line: 348, column: 9, scope: !5318)
!5323 = distinct !DISubprogram(name: "_Ref_count_obj2<int>", linkageName: "??$?0H@?$_Ref_count_obj2@H@std@@QEAA@$$QEAH@Z", scope: !2883, file: !2073, line: 1898, type: !5324, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3445, declaration: !5326, retainedNodes: !53)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{null, !2896, !127}
!5326 = !DISubprogram(name: "_Ref_count_obj2<int>", scope: !2883, file: !2073, line: 1898, type: !5324, scopeLine: 1898, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !3445)
!5327 = !DILocalVariable(name: "_Args", arg: 2, scope: !5323, file: !2073, line: 1898, type: !127)
!5328 = !DILocation(line: 1898, column: 41, scope: !5323)
!5329 = !DILocalVariable(name: "this", arg: 1, scope: !5323, type: !2882, flags: DIFlagArtificial | DIFlagObjectPointer)
!5330 = !DILocation(line: 0, scope: !5323)
!5331 = !DILocation(line: 1898, column: 68, scope: !5323)
!5332 = !DILocation(line: 1898, column: 50, scope: !5323)
!5333 = !DILocation(line: 1899, column: 63, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5323, file: !2073, line: 1898, column: 68)
!5335 = !DILocation(line: 1899, column: 42, scope: !5334)
!5336 = !DILocation(line: 1899, column: 25, scope: !5334)
!5337 = !DILocation(line: 1899, column: 34, scope: !5334)
!5338 = !DILocation(line: 1899, column: 5, scope: !5334)
!5339 = !DILocation(line: 1900, column: 3, scope: !5323)
!5340 = distinct !DISubprogram(name: "_Set_ptr_rep_and_enable_shared<int>", linkageName: "??$_Set_ptr_rep_and_enable_shared@H@?$shared_ptr@H@std@@AEAAXQEAHQEAV_Ref_count_base@1@@Z", scope: !2747, file: !2073, line: 1622, type: !5341, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !5345, declaration: !5344, retainedNodes: !53)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{null, !2834, !5343, !2867}
!5343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!5344 = !DISubprogram(name: "_Set_ptr_rep_and_enable_shared<int>", linkageName: "??$_Set_ptr_rep_and_enable_shared@H@?$shared_ptr@H@std@@AEAAXQEAHQEAV_Ref_count_base@1@@Z", scope: !2747, file: !2073, line: 1622, type: !5341, scopeLine: 1622, flags: DIFlagPrototyped, spFlags: 0, templateParams: !5345)
!5345 = !{!5346}
!5346 = !DITemplateTypeParameter(name: "_Ux", type: !5)
!5347 = !DILocalVariable(name: "_Rx", arg: 3, scope: !5340, file: !2073, line: 1624, type: !2867)
!5348 = !DILocation(line: 1624, column: 30, scope: !5340)
!5349 = !DILocalVariable(name: "_Px", arg: 2, scope: !5340, file: !2073, line: 1623, type: !5343)
!5350 = !DILocation(line: 1623, column: 18, scope: !5340)
!5351 = !DILocalVariable(name: "this", arg: 1, scope: !5340, type: !2959, flags: DIFlagArtificial | DIFlagObjectPointer)
!5352 = !DILocation(line: 0, scope: !5340)
!5353 = !DILocation(line: 1625, column: 18, scope: !5340)
!5354 = !DILocation(line: 1625, column: 11, scope: !5340)
!5355 = !DILocation(line: 1625, column: 16, scope: !5340)
!5356 = !DILocation(line: 1626, column: 18, scope: !5340)
!5357 = !DILocation(line: 1626, column: 11, scope: !5340)
!5358 = !DILocation(line: 1626, column: 16, scope: !5340)
!5359 = !DILocation(line: 1643, column: 3, scope: !5340)
!5360 = distinct !DISubprogram(name: "addressof<int>", linkageName: "??$addressof@H@std@@YAPEAHAEAH@Z", scope: !8, file: !4143, line: 274, type: !5361, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !72, retainedNodes: !53)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{!115, !123}
!5363 = !DILocalVariable(name: "_Val", arg: 1, scope: !5360, file: !4143, line: 274, type: !123)
!5364 = !DILocation(line: 274, column: 42, scope: !5360)
!5365 = !DILocation(line: 275, column: 32, scope: !5360)
!5366 = !DILocation(line: 275, column: 5, scope: !5360)
!5367 = distinct !DISubprogram(name: "_Ref_count_base", linkageName: "??0_Ref_count_base@std@@IEAA@XZ", scope: !2760, file: !2073, line: 537, type: !2770, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2774, retainedNodes: !53)
!5368 = !DILocalVariable(name: "this", arg: 1, scope: !5367, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!5369 = !DILocation(line: 0, scope: !5367)
!5370 = !DILocation(line: 537, column: 48, scope: !5367)
!5371 = !DILocation(line: 533, column: 21, scope: !5367)
!5372 = !DILocation(line: 534, column: 21, scope: !5367)
!5373 = distinct !DISubprogram(name: "_Construct_in_place<int, int>", linkageName: "??$_Construct_in_place@HH@std@@YAXAEAH$$QEAH@Z", scope: !8, file: !157, line: 228, type: !5374, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2874, retainedNodes: !53)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !123, !127}
!5376 = !DILocalVariable(name: "_Args", arg: 2, scope: !5373, file: !157, line: 228, type: !127)
!5377 = !DILocation(line: 228, column: 49, scope: !5373)
!5378 = !DILocalVariable(name: "_Obj", arg: 1, scope: !5373, file: !157, line: 228, type: !123)
!5379 = !DILocation(line: 228, column: 31, scope: !5373)
!5380 = !DILocation(line: 229, column: 79, scope: !5373)
!5381 = !DILocation(line: 229, column: 64, scope: !5373)
!5382 = !DILocation(line: 229, column: 5, scope: !5373)
!5383 = !DILocation(line: 230, column: 34, scope: !5373)
!5384 = !DILocation(line: 230, column: 13, scope: !5373)
!5385 = !DILocation(line: 231, column: 1, scope: !5373)
!5386 = distinct !DISubprogram(name: "_Destroy", linkageName: "?_Destroy@?$_Ref_count_obj2@H@std@@EEAAXXZ", scope: !2883, file: !2073, line: 1916, type: !2894, scopeLine: 1916, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2897, retainedNodes: !53)
!5387 = !DILocalVariable(name: "this", arg: 1, scope: !5386, type: !2882, flags: DIFlagArtificial | DIFlagObjectPointer)
!5388 = !DILocation(line: 0, scope: !5386)
!5389 = !DILocation(line: 1917, column: 23, scope: !5386)
!5390 = !DILocation(line: 1917, column: 32, scope: !5386)
!5391 = !DILocation(line: 1917, column: 5, scope: !5386)
!5392 = !DILocation(line: 1918, column: 3, scope: !5386)
!5393 = distinct !DISubprogram(name: "_Delete_this", linkageName: "?_Delete_this@?$_Ref_count_obj2@H@std@@EEAAXXZ", scope: !2883, file: !2073, line: 1920, type: !2894, scopeLine: 1920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2898, retainedNodes: !53)
!5394 = !DILocalVariable(name: "this", arg: 1, scope: !5393, type: !2882, flags: DIFlagArtificial | DIFlagObjectPointer)
!5395 = !DILocation(line: 0, scope: !5393)
!5396 = !DILocation(line: 1921, column: 5, scope: !5393)
!5397 = !DILocation(line: 1922, column: 3, scope: !5393)
!5398 = distinct !DISubprogram(name: "~_Ref_count_obj2", linkageName: "??_G?$_Ref_count_obj2@H@std@@UEAAPEAXI@Z", scope: !2883, file: !2073, line: 1902, type: !2894, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2893, retainedNodes: !53)
!5399 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !5398, type: !5, flags: DIFlagArtificial)
!5400 = !DILocation(line: 0, scope: !5398)
!5401 = !DILocalVariable(name: "this", arg: 1, scope: !5398, type: !2882, flags: DIFlagArtificial | DIFlagObjectPointer)
!5402 = !DILocation(line: 1902, column: 22, scope: !5398)
!5403 = !DILocation(line: 1909, column: 3, scope: !5398)
!5404 = distinct !DISubprogram(name: "_Get_deleter", linkageName: "?_Get_deleter@_Ref_count_base@std@@UEBAPEAXAEBVtype_info@@@Z", scope: !2760, file: !2073, line: 586, type: !2797, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2796, retainedNodes: !53)
!5405 = !DILocalVariable(arg: 2, scope: !5404, file: !2073, line: 586, type: !2799)
!5406 = !DILocation(line: 586, column: 47, scope: !5404)
!5407 = !DILocalVariable(name: "this", arg: 1, scope: !5404, type: !5408, flags: DIFlagArtificial | DIFlagObjectPointer)
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!5409 = !DILocation(line: 0, scope: !5404)
!5410 = !DILocation(line: 587, column: 5, scope: !5404)
!5411 = distinct !DISubprogram(name: "~_Ref_count_base", linkageName: "??_G_Ref_count_base@std@@UEAAPEAXI@Z", scope: !2760, file: !2073, line: 543, type: !2770, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2784, retainedNodes: !53)
!5412 = !DILocalVariable(name: "should_call_delete", arg: 2, scope: !5411, type: !5, flags: DIFlagArtificial)
!5413 = !DILocation(line: 0, scope: !5411)
!5414 = !DILocalVariable(name: "this", arg: 1, scope: !5411, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!5415 = !DILocation(line: 543, column: 39, scope: !5411)
!5416 = distinct !DISubprogram(name: "_Destroy_in_place<int>", linkageName: "??$_Destroy_in_place@H@std@@YAXAEAH@Z", scope: !8, file: !157, line: 267, type: !5417, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !72, retainedNodes: !53)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{null, !123}
!5419 = !DILocalVariable(name: "_Obj", arg: 1, scope: !5416, file: !157, line: 267, type: !123)
!5420 = !DILocation(line: 267, column: 29, scope: !5416)
!5421 = !DILocation(line: 268, column: 5, scope: !5416)
!5422 = !DILocation(line: 269, column: 1, scope: !5416)
!5423 = distinct !DISubprogram(name: "~_Ref_count_obj2", linkageName: "??1?$_Ref_count_obj2@H@std@@UEAA@XZ", scope: !2883, file: !2073, line: 1902, type: !2894, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2893, retainedNodes: !53)
!5424 = !DILocalVariable(name: "this", arg: 1, scope: !5423, type: !2882, flags: DIFlagArtificial | DIFlagObjectPointer)
!5425 = !DILocation(line: 0, scope: !5423)
!5426 = !DILocation(line: 1902, column: 22, scope: !5423)
!5427 = !DILocation(line: 1909, column: 3, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5423, file: !2073, line: 1902, column: 22)
!5429 = !DILocation(line: 1909, column: 3, scope: !5423)
!5430 = distinct !DISubprogram(name: "~_Ref_count_base", linkageName: "??1_Ref_count_base@std@@UEAA@XZ", scope: !2760, file: !2073, line: 543, type: !2770, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2784, retainedNodes: !53)
!5431 = !DILocalVariable(name: "this", arg: 1, scope: !5430, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!5432 = !DILocation(line: 0, scope: !5430)
!5433 = !DILocation(line: 543, column: 40, scope: !5430)
!5434 = distinct !DISubprogram(name: "_Decref", linkageName: "?_Decref@?$_Ptr_base@H@std@@IEAAXXZ", scope: !2750, file: !2073, line: 803, type: !2819, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2825, retainedNodes: !53)
!5435 = !DILocalVariable(name: "this", arg: 1, scope: !5434, type: !3550, flags: DIFlagArtificial | DIFlagObjectPointer)
!5436 = !DILocation(line: 0, scope: !5434)
!5437 = !DILocation(line: 804, column: 9, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5434, file: !2073, line: 804, column: 9)
!5439 = !DILocation(line: 804, column: 9, scope: !5434)
!5440 = !DILocation(line: 805, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5438, file: !2073, line: 804, column: 15)
!5442 = !DILocation(line: 805, column: 13, scope: !5441)
!5443 = !DILocation(line: 806, column: 5, scope: !5441)
!5444 = !DILocation(line: 807, column: 3, scope: !5434)
!5445 = distinct !DISubprogram(name: "_Decref", linkageName: "?_Decref@_Ref_count_base@std@@QEAAXXZ", scope: !2760, file: !2073, line: 571, type: !2770, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2790, retainedNodes: !53)
!5446 = !DILocalVariable(name: "this", arg: 1, scope: !5445, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!5447 = !DILocation(line: 0, scope: !5445)
!5448 = !DILocation(line: 572, column: 9, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5445, file: !2073, line: 572, column: 9)
!5450 = !DILocation(line: 572, column: 25, scope: !5449)
!5451 = !DILocation(line: 572, column: 9, scope: !5445)
!5452 = !DILocation(line: 573, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5449, file: !2073, line: 572, column: 31)
!5454 = !DILocation(line: 574, column: 7, scope: !5453)
!5455 = !DILocation(line: 575, column: 5, scope: !5453)
!5456 = !DILocation(line: 576, column: 3, scope: !5445)
!5457 = distinct !DISubprogram(name: "_Decwref", linkageName: "?_Decwref@_Ref_count_base@std@@QEAAXXZ", scope: !2760, file: !2073, line: 578, type: !2770, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2791, retainedNodes: !53)
!5458 = !DILocalVariable(name: "this", arg: 1, scope: !5457, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!5459 = !DILocation(line: 0, scope: !5457)
!5460 = !DILocation(line: 579, column: 9, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5457, file: !2073, line: 579, column: 9)
!5462 = !DILocation(line: 579, column: 26, scope: !5461)
!5463 = !DILocation(line: 579, column: 9, scope: !5457)
!5464 = !DILocation(line: 580, column: 7, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5461, file: !2073, line: 579, column: 32)
!5466 = !DILocation(line: 581, column: 5, scope: !5465)
!5467 = !DILocation(line: 582, column: 3, scope: !5457)
!5468 = distinct !DISubprogram(name: "_Copy_construct_from<int>", linkageName: "??$_Copy_construct_from@H@?$_Ptr_base@H@std@@IEAAXAEBV?$shared_ptr@H@1@@Z", scope: !2750, file: !2073, line: 754, type: !5469, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !5472, declaration: !5471, retainedNodes: !53)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{null, !2809, !2841}
!5471 = !DISubprogram(name: "_Copy_construct_from<int>", linkageName: "??$_Copy_construct_from@H@?$_Ptr_base@H@std@@IEAAXAEBV?$shared_ptr@H@1@@Z", scope: !2750, file: !2073, line: 754, type: !5469, scopeLine: 754, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0, templateParams: !5472)
!5472 = !{!2211}
!5473 = !DILocalVariable(name: "_Other", arg: 2, scope: !5468, file: !2073, line: 754, type: !2841)
!5474 = !DILocation(line: 754, column: 53, scope: !5468)
!5475 = !DILocalVariable(name: "this", arg: 1, scope: !5468, type: !3550, flags: DIFlagArtificial | DIFlagObjectPointer)
!5476 = !DILocation(line: 0, scope: !5468)
!5477 = !DILocation(line: 756, column: 5, scope: !5468)
!5478 = !DILocation(line: 756, column: 12, scope: !5468)
!5479 = !DILocation(line: 758, column: 12, scope: !5468)
!5480 = !DILocation(line: 758, column: 19, scope: !5468)
!5481 = !DILocation(line: 758, column: 5, scope: !5468)
!5482 = !DILocation(line: 758, column: 10, scope: !5468)
!5483 = !DILocation(line: 759, column: 12, scope: !5468)
!5484 = !DILocation(line: 759, column: 19, scope: !5468)
!5485 = !DILocation(line: 759, column: 5, scope: !5468)
!5486 = !DILocation(line: 759, column: 10, scope: !5468)
!5487 = !DILocation(line: 760, column: 3, scope: !5468)
!5488 = distinct !DISubprogram(name: "_Incref", linkageName: "?_Incref@?$_Ptr_base@H@std@@IEBAXXZ", scope: !2750, file: !2073, line: 797, type: !2823, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2822, retainedNodes: !53)
!5489 = !DILocalVariable(name: "this", arg: 1, scope: !5488, type: !3010, flags: DIFlagArtificial | DIFlagObjectPointer)
!5490 = !DILocation(line: 0, scope: !5488)
!5491 = !DILocation(line: 798, column: 9, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !2073, line: 798, column: 9)
!5493 = !DILocation(line: 798, column: 9, scope: !5488)
!5494 = !DILocation(line: 799, column: 7, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5492, file: !2073, line: 798, column: 15)
!5496 = !DILocation(line: 799, column: 13, scope: !5495)
!5497 = !DILocation(line: 800, column: 5, scope: !5495)
!5498 = !DILocation(line: 801, column: 3, scope: !5488)
!5499 = distinct !DISubprogram(name: "_Incref", linkageName: "?_Incref@_Ref_count_base@std@@QEAAXXZ", scope: !2760, file: !2073, line: 563, type: !2770, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2788, retainedNodes: !53)
!5500 = !DILocalVariable(name: "this", arg: 1, scope: !5499, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!5501 = !DILocation(line: 0, scope: !5499)
!5502 = !DILocation(line: 564, column: 5, scope: !5499)
!5503 = !DILocation(line: 565, column: 3, scope: !5499)
!5504 = distinct !DISubprogram(name: "get", linkageName: "?get@?$_Ptr_base@H@std@@IEBAPEAHXZ", scope: !2750, file: !2073, line: 737, type: !2816, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2815, retainedNodes: !53)
!5505 = !DILocalVariable(name: "this", arg: 1, scope: !5504, type: !3010, flags: DIFlagArtificial | DIFlagObjectPointer)
!5506 = !DILocation(line: 0, scope: !5504)
!5507 = !DILocation(line: 737, column: 58, scope: !5504)
!5508 = !DILocation(line: 737, column: 51, scope: !5504)
!5509 = distinct !DISubprogram(name: "_Use_count", linkageName: "?_Use_count@_Ref_count_base@std@@QEBAJXZ", scope: !2760, file: !2073, line: 584, type: !2793, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2792, retainedNodes: !53)
!5510 = !DILocalVariable(name: "this", arg: 1, scope: !5509, type: !5408, flags: DIFlagArtificial | DIFlagObjectPointer)
!5511 = !DILocation(line: 0, scope: !5509)
!5512 = !DILocation(line: 584, column: 63, scope: !5509)
!5513 = !DILocation(line: 584, column: 38, scope: !5509)
!5514 = distinct !DISubprogram(name: "_Get_first", linkageName: "?_Get_first@?$_Compressed_pair@U?$default_delete@H@std@@PEAH$00@std@@QEAAAEAU?$default_delete@H@2@XZ", scope: !3030, file: !157, line: 1343, type: !3046, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3045, retainedNodes: !53)
!5515 = !DILocalVariable(name: "this", arg: 1, scope: !5514, type: !3562, flags: DIFlagArtificial | DIFlagObjectPointer)
!5516 = !DILocation(line: 0, scope: !5514)
!5517 = !DILocation(line: 1344, column: 16, scope: !5514)
!5518 = !DILocation(line: 1344, column: 9, scope: !5514)
!5519 = distinct !DISubprogram(name: "operator()", linkageName: "??R?$default_delete@H@std@@QEBAXPEAH@Z", scope: !3033, file: !2073, line: 961, type: !3040, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3039, retainedNodes: !53)
!5520 = !DILocalVariable(name: "_Ptr", arg: 2, scope: !5519, file: !2073, line: 961, type: !115)
!5521 = !DILocation(line: 961, column: 24, scope: !5519)
!5522 = !DILocalVariable(name: "this", arg: 1, scope: !5519, type: !5523, flags: DIFlagArtificial | DIFlagObjectPointer)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!5524 = !DILocation(line: 0, scope: !5519)
!5525 = !DILocation(line: 964, column: 12, scope: !5519)
!5526 = !DILocation(line: 964, column: 5, scope: !5519)
!5527 = !DILocation(line: 965, column: 3, scope: !5519)
