pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 9.3.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_the_controller" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#5a28f699#;
   pragma Export (C, u00001, "the_controllerB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#4113f22b#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#f77a07a6#;
   pragma Export (C, u00004, "polyorb_hiS");
   u00005 : constant Version_32 := 16#76f3c1a4#;
   pragma Export (C, u00005, "polyorb_hi__suspendersB");
   u00006 : constant Version_32 := 16#010fee78#;
   pragma Export (C, u00006, "polyorb_hi__suspendersS");
   u00007 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00007, "adaS");
   u00008 : constant Version_32 := 16#2353cf5b#;
   pragma Export (C, u00008, "ada__real_time__delaysB");
   u00009 : constant Version_32 := 16#0a5c26d7#;
   pragma Export (C, u00009, "ada__real_time__delaysS");
   u00010 : constant Version_32 := 16#9762c9f2#;
   pragma Export (C, u00010, "ada__exceptionsB");
   u00011 : constant Version_32 := 16#585ef86b#;
   pragma Export (C, u00011, "ada__exceptionsS");
   u00012 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerB");
   u00013 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerS");
   u00014 : constant Version_32 := 16#4635ec04#;
   pragma Export (C, u00014, "systemS");
   u00015 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00015, "system__soft_linksB");
   u00016 : constant Version_32 := 16#0336e7b2#;
   pragma Export (C, u00016, "system__soft_linksS");
   u00017 : constant Version_32 := 16#f32b4133#;
   pragma Export (C, u00017, "system__secondary_stackB");
   u00018 : constant Version_32 := 16#03a1141d#;
   pragma Export (C, u00018, "system__secondary_stackS");
   u00019 : constant Version_32 := 16#86dbf443#;
   pragma Export (C, u00019, "system__parametersB");
   u00020 : constant Version_32 := 16#0ed9b82f#;
   pragma Export (C, u00020, "system__parametersS");
   u00021 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00021, "system__storage_elementsB");
   u00022 : constant Version_32 := 16#6bf6a600#;
   pragma Export (C, u00022, "system__storage_elementsS");
   u00023 : constant Version_32 := 16#75bf515c#;
   pragma Export (C, u00023, "system__soft_links__initializeB");
   u00024 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00024, "system__soft_links__initializeS");
   u00025 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00025, "system__stack_checkingB");
   u00026 : constant Version_32 := 16#c88a87ec#;
   pragma Export (C, u00026, "system__stack_checkingS");
   u00027 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00027, "system__exception_tableB");
   u00028 : constant Version_32 := 16#1b9b8546#;
   pragma Export (C, u00028, "system__exception_tableS");
   u00029 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00029, "system__exceptionsB");
   u00030 : constant Version_32 := 16#2e5681f2#;
   pragma Export (C, u00030, "system__exceptionsS");
   u00031 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00031, "system__exceptions__machineB");
   u00032 : constant Version_32 := 16#d27d9682#;
   pragma Export (C, u00032, "system__exceptions__machineS");
   u00033 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00033, "system__exceptions_debugB");
   u00034 : constant Version_32 := 16#38bf15c0#;
   pragma Export (C, u00034, "system__exceptions_debugS");
   u00035 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00035, "system__img_intB");
   u00036 : constant Version_32 := 16#44ee0cc6#;
   pragma Export (C, u00036, "system__img_intS");
   u00037 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00037, "system__tracebackB");
   u00038 : constant Version_32 := 16#181732c0#;
   pragma Export (C, u00038, "system__tracebackS");
   u00039 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00039, "system__traceback_entriesB");
   u00040 : constant Version_32 := 16#466e1a74#;
   pragma Export (C, u00040, "system__traceback_entriesS");
   u00041 : constant Version_32 := 16#448e9548#;
   pragma Export (C, u00041, "system__traceback__symbolicB");
   u00042 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00042, "system__traceback__symbolicS");
   u00043 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00043, "ada__containersS");
   u00044 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00044, "ada__exceptions__tracebackB");
   u00045 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00045, "ada__exceptions__tracebackS");
   u00046 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00046, "interfacesS");
   u00047 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00047, "interfaces__cB");
   u00048 : constant Version_32 := 16#467817d8#;
   pragma Export (C, u00048, "interfaces__cS");
   u00049 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00049, "system__bounded_stringsB");
   u00050 : constant Version_32 := 16#31c8cd1d#;
   pragma Export (C, u00050, "system__bounded_stringsS");
   u00051 : constant Version_32 := 16#0062635e#;
   pragma Export (C, u00051, "system__crtlS");
   u00052 : constant Version_32 := 16#bba79bcb#;
   pragma Export (C, u00052, "system__dwarf_linesB");
   u00053 : constant Version_32 := 16#9a78d181#;
   pragma Export (C, u00053, "system__dwarf_linesS");
   u00054 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00054, "ada__charactersS");
   u00055 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00055, "ada__characters__handlingB");
   u00056 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00056, "ada__characters__handlingS");
   u00057 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00057, "ada__characters__latin_1S");
   u00058 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00058, "ada__stringsS");
   u00059 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00059, "ada__strings__mapsB");
   u00060 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00060, "ada__strings__mapsS");
   u00061 : constant Version_32 := 16#d68fb8f1#;
   pragma Export (C, u00061, "system__bit_opsB");
   u00062 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00062, "system__bit_opsS");
   u00063 : constant Version_32 := 16#72b39087#;
   pragma Export (C, u00063, "system__unsigned_typesS");
   u00064 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00064, "ada__strings__maps__constantsS");
   u00065 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00065, "system__address_imageB");
   u00066 : constant Version_32 := 16#e7d9713e#;
   pragma Export (C, u00066, "system__address_imageS");
   u00067 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00067, "system__img_unsB");
   u00068 : constant Version_32 := 16#ed47ac70#;
   pragma Export (C, u00068, "system__img_unsS");
   u00069 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00069, "system__ioB");
   u00070 : constant Version_32 := 16#d8771b4b#;
   pragma Export (C, u00070, "system__ioS");
   u00071 : constant Version_32 := 16#f790d1ef#;
   pragma Export (C, u00071, "system__mmapB");
   u00072 : constant Version_32 := 16#7c445363#;
   pragma Export (C, u00072, "system__mmapS");
   u00073 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00073, "ada__io_exceptionsS");
   u00074 : constant Version_32 := 16#0cdaa54a#;
   pragma Export (C, u00074, "system__mmap__os_interfaceB");
   u00075 : constant Version_32 := 16#82f29877#;
   pragma Export (C, u00075, "system__mmap__os_interfaceS");
   u00076 : constant Version_32 := 16#834dfe5e#;
   pragma Export (C, u00076, "system__mmap__unixS");
   u00077 : constant Version_32 := 16#fa90b46b#;
   pragma Export (C, u00077, "system__os_libB");
   u00078 : constant Version_32 := 16#4542b55d#;
   pragma Export (C, u00078, "system__os_libS");
   u00079 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00079, "system__case_utilB");
   u00080 : constant Version_32 := 16#79e05a50#;
   pragma Export (C, u00080, "system__case_utilS");
   u00081 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00081, "system__stringsB");
   u00082 : constant Version_32 := 16#2623c091#;
   pragma Export (C, u00082, "system__stringsS");
   u00083 : constant Version_32 := 16#5a3f5337#;
   pragma Export (C, u00083, "system__object_readerB");
   u00084 : constant Version_32 := 16#82413105#;
   pragma Export (C, u00084, "system__object_readerS");
   u00085 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00085, "system__val_lliB");
   u00086 : constant Version_32 := 16#dc110aa4#;
   pragma Export (C, u00086, "system__val_lliS");
   u00087 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00087, "system__val_lluB");
   u00088 : constant Version_32 := 16#0841c7f5#;
   pragma Export (C, u00088, "system__val_lluS");
   u00089 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00089, "system__val_utilB");
   u00090 : constant Version_32 := 16#ea955afa#;
   pragma Export (C, u00090, "system__val_utilS");
   u00091 : constant Version_32 := 16#d7bf3f29#;
   pragma Export (C, u00091, "system__exception_tracesB");
   u00092 : constant Version_32 := 16#62eacc9e#;
   pragma Export (C, u00092, "system__exception_tracesS");
   u00093 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00093, "system__wch_conB");
   u00094 : constant Version_32 := 16#5d48ced6#;
   pragma Export (C, u00094, "system__wch_conS");
   u00095 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00095, "system__wch_stwB");
   u00096 : constant Version_32 := 16#7059e2d7#;
   pragma Export (C, u00096, "system__wch_stwS");
   u00097 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00097, "system__wch_cnvB");
   u00098 : constant Version_32 := 16#52ff7425#;
   pragma Export (C, u00098, "system__wch_cnvS");
   u00099 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00099, "system__wch_jisB");
   u00100 : constant Version_32 := 16#d28f6d04#;
   pragma Export (C, u00100, "system__wch_jisS");
   u00101 : constant Version_32 := 16#eb4fc41d#;
   pragma Export (C, u00101, "ada__real_timeB");
   u00102 : constant Version_32 := 16#69ea8064#;
   pragma Export (C, u00102, "ada__real_timeS");
   u00103 : constant Version_32 := 16#c05c480c#;
   pragma Export (C, u00103, "system__taskingB");
   u00104 : constant Version_32 := 16#d15fc24c#;
   pragma Export (C, u00104, "system__taskingS");
   u00105 : constant Version_32 := 16#c333d44f#;
   pragma Export (C, u00105, "system__task_primitivesS");
   u00106 : constant Version_32 := 16#02d5b781#;
   pragma Export (C, u00106, "system__os_interfaceB");
   u00107 : constant Version_32 := 16#8b11eeee#;
   pragma Export (C, u00107, "system__os_interfaceS");
   u00108 : constant Version_32 := 16#ff1f7771#;
   pragma Export (C, u00108, "system__linuxS");
   u00109 : constant Version_32 := 16#198dbba9#;
   pragma Export (C, u00109, "system__os_constantsS");
   u00110 : constant Version_32 := 16#3d3b214a#;
   pragma Export (C, u00110, "system__task_primitives__operationsB");
   u00111 : constant Version_32 := 16#69ee9f34#;
   pragma Export (C, u00111, "system__task_primitives__operationsS");
   u00112 : constant Version_32 := 16#71c5de81#;
   pragma Export (C, u00112, "system__interrupt_managementB");
   u00113 : constant Version_32 := 16#24a21b5f#;
   pragma Export (C, u00113, "system__interrupt_managementS");
   u00114 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00114, "system__multiprocessorsB");
   u00115 : constant Version_32 := 16#7e997377#;
   pragma Export (C, u00115, "system__multiprocessorsS");
   u00116 : constant Version_32 := 16#51f2d040#;
   pragma Export (C, u00116, "system__os_primitivesB");
   u00117 : constant Version_32 := 16#41c889f2#;
   pragma Export (C, u00117, "system__os_primitivesS");
   u00118 : constant Version_32 := 16#375a3ef7#;
   pragma Export (C, u00118, "system__task_infoB");
   u00119 : constant Version_32 := 16#1c069690#;
   pragma Export (C, u00119, "system__task_infoS");
   u00120 : constant Version_32 := 16#f2eb7df6#;
   pragma Export (C, u00120, "system__tasking__debugB");
   u00121 : constant Version_32 := 16#aea59d30#;
   pragma Export (C, u00121, "system__tasking__debugS");
   u00122 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00122, "system__concat_2B");
   u00123 : constant Version_32 := 16#44953bd4#;
   pragma Export (C, u00123, "system__concat_2S");
   u00124 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00124, "system__concat_3B");
   u00125 : constant Version_32 := 16#4d45b0a1#;
   pragma Export (C, u00125, "system__concat_3S");
   u00126 : constant Version_32 := 16#273384e4#;
   pragma Export (C, u00126, "system__img_enum_newB");
   u00127 : constant Version_32 := 16#2779eac4#;
   pragma Export (C, u00127, "system__img_enum_newS");
   u00128 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00128, "system__img_lliB");
   u00129 : constant Version_32 := 16#577ab9d5#;
   pragma Export (C, u00129, "system__img_lliS");
   u00130 : constant Version_32 := 16#6ec3c867#;
   pragma Export (C, u00130, "system__stack_usageB");
   u00131 : constant Version_32 := 16#3a3ac346#;
   pragma Export (C, u00131, "system__stack_usageS");
   u00132 : constant Version_32 := 16#d10be6c8#;
   pragma Export (C, u00132, "ada__synchronous_task_controlB");
   u00133 : constant Version_32 := 16#e712f9fd#;
   pragma Export (C, u00133, "ada__synchronous_task_controlS");
   u00134 : constant Version_32 := 16#d398a95f#;
   pragma Export (C, u00134, "ada__tagsB");
   u00135 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00135, "ada__tagsS");
   u00136 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00136, "system__htableB");
   u00137 : constant Version_32 := 16#c2f75fee#;
   pragma Export (C, u00137, "system__htableS");
   u00138 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00138, "system__string_hashB");
   u00139 : constant Version_32 := 16#60a93490#;
   pragma Export (C, u00139, "system__string_hashS");
   u00140 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00140, "ada__finalizationS");
   u00141 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00141, "ada__streamsB");
   u00142 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00142, "ada__streamsS");
   u00143 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00143, "system__finalization_rootB");
   u00144 : constant Version_32 := 16#09c79f94#;
   pragma Export (C, u00144, "system__finalization_rootS");
   u00145 : constant Version_32 := 16#70d2b7f2#;
   pragma Export (C, u00145, "ada__task_identificationB");
   u00146 : constant Version_32 := 16#4a7baeef#;
   pragma Export (C, u00146, "ada__task_identificationS");
   u00147 : constant Version_32 := 16#e9f46e92#;
   pragma Export (C, u00147, "system__tasking__utilitiesB");
   u00148 : constant Version_32 := 16#0f670827#;
   pragma Export (C, u00148, "system__tasking__utilitiesS");
   u00149 : constant Version_32 := 16#e8c12513#;
   pragma Export (C, u00149, "system__tasking__initializationB");
   u00150 : constant Version_32 := 16#fc2303e6#;
   pragma Export (C, u00150, "system__tasking__initializationS");
   u00151 : constant Version_32 := 16#d99cdb5c#;
   pragma Export (C, u00151, "system__soft_links__taskingB");
   u00152 : constant Version_32 := 16#e939497e#;
   pragma Export (C, u00152, "system__soft_links__taskingS");
   u00153 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00153, "ada__exceptions__is_null_occurrenceB");
   u00154 : constant Version_32 := 16#e1d7566f#;
   pragma Export (C, u00154, "ada__exceptions__is_null_occurrenceS");
   u00155 : constant Version_32 := 16#80ce688e#;
   pragma Export (C, u00155, "system__tasking__task_attributesB");
   u00156 : constant Version_32 := 16#e81a3c25#;
   pragma Export (C, u00156, "system__tasking__task_attributesS");
   u00157 : constant Version_32 := 16#cc950a30#;
   pragma Export (C, u00157, "system__tasking__queuingB");
   u00158 : constant Version_32 := 16#6dba2805#;
   pragma Export (C, u00158, "system__tasking__queuingS");
   u00159 : constant Version_32 := 16#7d12d4bb#;
   pragma Export (C, u00159, "system__tasking__protected_objectsB");
   u00160 : constant Version_32 := 16#15001baf#;
   pragma Export (C, u00160, "system__tasking__protected_objectsS");
   u00161 : constant Version_32 := 16#7010f8c6#;
   pragma Export (C, u00161, "system__tasking__protected_objects__entriesB");
   u00162 : constant Version_32 := 16#7daf93e7#;
   pragma Export (C, u00162, "system__tasking__protected_objects__entriesS");
   u00163 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00163, "system__restrictionsB");
   u00164 : constant Version_32 := 16#0d473555#;
   pragma Export (C, u00164, "system__restrictionsS");
   u00165 : constant Version_32 := 16#d96e3c40#;
   pragma Export (C, u00165, "system__finalization_mastersB");
   u00166 : constant Version_32 := 16#1dc9d5ce#;
   pragma Export (C, u00166, "system__finalization_mastersS");
   u00167 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00167, "system__img_boolB");
   u00168 : constant Version_32 := 16#b3ec9def#;
   pragma Export (C, u00168, "system__img_boolS");
   u00169 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00169, "system__storage_poolsB");
   u00170 : constant Version_32 := 16#65d872a9#;
   pragma Export (C, u00170, "system__storage_poolsS");
   u00171 : constant Version_32 := 16#32a22d97#;
   pragma Export (C, u00171, "polyorb_hi_generatedS");
   u00172 : constant Version_32 := 16#2db86dd4#;
   pragma Export (C, u00172, "polyorb_hi_generated__deploymentS");
   u00173 : constant Version_32 := 16#632288c9#;
   pragma Export (C, u00173, "polyorb_hi_generated__activityB");
   u00174 : constant Version_32 := 16#2adae444#;
   pragma Export (C, u00174, "polyorb_hi_generated__activityS");
   u00175 : constant Version_32 := 16#9a911172#;
   pragma Export (C, u00175, "polyorb_hi__errorsS");
   u00176 : constant Version_32 := 16#64e6701d#;
   pragma Export (C, u00176, "polyorb_hi__messagesB");
   u00177 : constant Version_32 := 16#71a82f09#;
   pragma Export (C, u00177, "polyorb_hi__messagesS");
   u00178 : constant Version_32 := 16#72aaafa3#;
   pragma Export (C, u00178, "polyorb_hi__utilsB");
   u00179 : constant Version_32 := 16#b05d984e#;
   pragma Export (C, u00179, "polyorb_hi__utilsS");
   u00180 : constant Version_32 := 16#52f1910f#;
   pragma Export (C, u00180, "system__assertionsB");
   u00181 : constant Version_32 := 16#8bb8c090#;
   pragma Export (C, u00181, "system__assertionsS");
   u00182 : constant Version_32 := 16#a37b83d6#;
   pragma Export (C, u00182, "polyorb_hi__streamsS");
   u00183 : constant Version_32 := 16#84b43228#;
   pragma Export (C, u00183, "polyorb_hi__outputB");
   u00184 : constant Version_32 := 16#65693053#;
   pragma Export (C, u00184, "polyorb_hi__outputS");
   u00185 : constant Version_32 := 16#e16b1aef#;
   pragma Export (C, u00185, "polyorb_hi__output_low_levelB");
   u00186 : constant Version_32 := 16#51afa983#;
   pragma Export (C, u00186, "polyorb_hi__output_low_levelS");
   u00187 : constant Version_32 := 16#276453b7#;
   pragma Export (C, u00187, "system__img_lldB");
   u00188 : constant Version_32 := 16#b517e56d#;
   pragma Export (C, u00188, "system__img_lldS");
   u00189 : constant Version_32 := 16#bd3715ff#;
   pragma Export (C, u00189, "system__img_decB");
   u00190 : constant Version_32 := 16#e818e5df#;
   pragma Export (C, u00190, "system__img_decS");
   u00191 : constant Version_32 := 16#69f8553b#;
   pragma Export (C, u00191, "polyorb_hi__port_kindsB");
   u00192 : constant Version_32 := 16#2eff63f0#;
   pragma Export (C, u00192, "polyorb_hi__port_kindsS");
   u00193 : constant Version_32 := 16#82fe6eb4#;
   pragma Export (C, u00193, "polyorb_hi__port_type_marshallersB");
   u00194 : constant Version_32 := 16#58e5d84d#;
   pragma Export (C, u00194, "polyorb_hi__port_type_marshallersS");
   u00195 : constant Version_32 := 16#3be68761#;
   pragma Export (C, u00195, "polyorb_hi__marshallers_gB");
   u00196 : constant Version_32 := 16#4d67080d#;
   pragma Export (C, u00196, "polyorb_hi__marshallers_gS");
   u00197 : constant Version_32 := 16#06d59d25#;
   pragma Export (C, u00197, "polyorb_hi__thread_interrogatorsB");
   u00198 : constant Version_32 := 16#e5bb6562#;
   pragma Export (C, u00198, "polyorb_hi__thread_interrogatorsS");
   u00199 : constant Version_32 := 16#5d51f498#;
   pragma Export (C, u00199, "polyorb_hi__time_marshallersB");
   u00200 : constant Version_32 := 16#dfbfec7a#;
   pragma Export (C, u00200, "polyorb_hi__time_marshallersS");
   u00201 : constant Version_32 := 16#87e11ef2#;
   pragma Export (C, u00201, "polyorb_hi__unprotected_queueB");
   u00202 : constant Version_32 := 16#0efd5e5a#;
   pragma Export (C, u00202, "polyorb_hi__unprotected_queueS");
   u00203 : constant Version_32 := 16#13884c81#;
   pragma Export (C, u00203, "polyorb_hi_generated__marshallersB");
   u00204 : constant Version_32 := 16#2f13f8cd#;
   pragma Export (C, u00204, "polyorb_hi_generated__marshallersS");
   u00205 : constant Version_32 := 16#527e7c6c#;
   pragma Export (C, u00205, "polyorb_hi_generated__typesS");
   u00206 : constant Version_32 := 16#31c6fa76#;
   pragma Export (C, u00206, "polyorb_hi_generated__subprogramsS");
   u00207 : constant Version_32 := 16#4a9c4404#;
   pragma Export (C, u00207, "polyorb_hi_generated__transportB");
   u00208 : constant Version_32 := 16#15cf0022#;
   pragma Export (C, u00208, "polyorb_hi_generated__transportS");
   u00209 : constant Version_32 := 16#81b5daee#;
   pragma Export (C, u00209, "system__tasking__protected_objects__operationsB");
   u00210 : constant Version_32 := 16#ba36ad85#;
   pragma Export (C, u00210, "system__tasking__protected_objects__operationsS");
   u00211 : constant Version_32 := 16#6bc03304#;
   pragma Export (C, u00211, "system__tasking__entry_callsB");
   u00212 : constant Version_32 := 16#6342024e#;
   pragma Export (C, u00212, "system__tasking__entry_callsS");
   u00213 : constant Version_32 := 16#915f61e7#;
   pragma Export (C, u00213, "system__tasking__rendezvousB");
   u00214 : constant Version_32 := 16#5618a4d0#;
   pragma Export (C, u00214, "system__tasking__rendezvousS");
   u00215 : constant Version_32 := 16#2032c5c8#;
   pragma Export (C, u00215, "polyorb_hi__periodic_taskB");
   u00216 : constant Version_32 := 16#5853489f#;
   pragma Export (C, u00216, "polyorb_hi__periodic_taskS");
   u00217 : constant Version_32 := 16#8bf4f526#;
   pragma Export (C, u00217, "system__tasking__stagesB");
   u00218 : constant Version_32 := 16#14e0647c#;
   pragma Export (C, u00218, "system__tasking__stagesS");
   u00219 : constant Version_32 := 16#2323a8af#;
   pragma Export (C, u00219, "system__memoryB");
   u00220 : constant Version_32 := 16#1f488a30#;
   pragma Export (C, u00220, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_dec%s
   --  system.img_dec%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.img_lld%s
   --  system.img_lld%b
   --  system.io%s
   --  system.io%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.case_util%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%s
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  system.secondary_stack%s
   --  system.case_util%b
   --  system.address_image%s
   --  system.bounded_strings%s
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  ada.exceptions.last_chance_handler%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.wch_stw%b
   --  system.val_util%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.os_lib%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  interfaces.c%s
   --  ada.exceptions.traceback%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.standard_library%b
   --  system.mmap%s
   --  ada.strings.maps%b
   --  interfaces.c%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.mmap.unix%s
   --  system.mmap.os_interface%s
   --  system.mmap%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  system.mmap.os_interface%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.linux%s
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.os_constants%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking%b
   --  system.task_primitives.operations%b
   --  system.tasking.debug%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.initialization%b
   --  system.tasking.task_attributes%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%s
   --  system.tasking.utilities%b
   --  ada.task_identification%s
   --  ada.task_identification%b
   --  ada.synchronous_task_control%s
   --  ada.synchronous_task_control%b
   --  system.tasking.entry_calls%s
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.entry_calls%b
   --  system.tasking.rendezvous%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  polyorb_hi%s
   --  polyorb_hi.streams%s
   --  polyorb_hi_generated%s
   --  polyorb_hi_generated.deployment%s
   --  polyorb_hi.utils%s
   --  polyorb_hi.utils%b
   --  polyorb_hi.messages%s
   --  polyorb_hi.messages%b
   --  polyorb_hi.errors%s
   --  polyorb_hi.marshallers_g%s
   --  polyorb_hi.marshallers_g%b
   --  polyorb_hi.output_low_level%s
   --  polyorb_hi.output_low_level%b
   --  polyorb_hi.port_kinds%s
   --  polyorb_hi.port_kinds%b
   --  polyorb_hi.port_type_marshallers%s
   --  polyorb_hi.port_type_marshallers%b
   --  polyorb_hi.suspenders%s
   --  polyorb_hi.suspenders%b
   --  polyorb_hi.output%s
   --  polyorb_hi.output%b
   --  polyorb_hi.periodic_task%s
   --  polyorb_hi.periodic_task%b
   --  polyorb_hi.time_marshallers%s
   --  polyorb_hi.time_marshallers%b
   --  polyorb_hi.unprotected_queue%s
   --  polyorb_hi.unprotected_queue%b
   --  polyorb_hi.thread_interrogators%s
   --  polyorb_hi.thread_interrogators%b
   --  polyorb_hi_generated.types%s
   --  polyorb_hi_generated.subprograms%s
   --  polyorb_hi_generated.activity%s
   --  polyorb_hi_generated.transport%s
   --  polyorb_hi_generated.marshallers%s
   --  polyorb_hi_generated.marshallers%b
   --  polyorb_hi_generated.transport%b
   --  polyorb_hi_generated.activity%b
   --  the_controller%b
   --  END ELABORATION ORDER

end ada_main;
