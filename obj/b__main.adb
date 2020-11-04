pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E095 : Short_Integer; pragma Import (Ada, E095, "ada__tags_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "system__bb__timing_events_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__soft_links_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "system__exception_table_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "ada__streams_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__finalization_root_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "ada__finalization_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__storage_pools_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "system__finalization_masters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__pool_global_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "hal__gpio_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "hal__i2c_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "hal__spi_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "hal__uart_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "nrf__gpio_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "nrf__rtc_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "nrf__spi_master_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "nrf__timers_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "nrf__twi_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "nrf__uart_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "nrf__device_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := 'F';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 1;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      System.Bb.Timing_Events'Elab_Spec;
      E109 := E109 + 1;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E095 := E095 + 1;
      System.Exception_Table'Elab_Body;
      E048 := E048 + 1;
      E050 := E050 + 1;
      Ada.Streams'Elab_Spec;
      E133 := E133 + 1;
      System.Finalization_Root'Elab_Spec;
      E142 := E142 + 1;
      Ada.Finalization'Elab_Spec;
      E140 := E140 + 1;
      System.Storage_Pools'Elab_Spec;
      E144 := E144 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E137 := E137 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      System.Pool_Global'Elab_Spec;
      E146 := E146 + 1;
      HAL.GPIO'ELAB_SPEC;
      E135 := E135 + 1;
      HAL.I2C'ELAB_SPEC;
      E164 := E164 + 1;
      HAL.SPI'ELAB_SPEC;
      E157 := E157 + 1;
      HAL.UART'ELAB_SPEC;
      E168 := E168 + 1;
      Nrf.Gpio'Elab_Spec;
      Nrf.Gpio'Elab_Body;
      E128 := E128 + 1;
      E152 := E152 + 1;
      Nrf.Spi_Master'Elab_Spec;
      Nrf.Spi_Master'Elab_Body;
      E155 := E155 + 1;
      Nrf.Timers'Elab_Spec;
      Nrf.Timers'Elab_Body;
      E159 := E159 + 1;
      Nrf.Twi'Elab_Spec;
      Nrf.Twi'Elab_Body;
      E162 := E162 + 1;
      Nrf.Uart'Elab_Spec;
      Nrf.Uart'Elab_Body;
      E166 := E166 + 1;
      Nrf.Device'Elab_Spec;
      Nrf.Device'Elab_Body;
      E118 := E118 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   procedure main is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
   end;

--  BEGIN Object file/option list
   --   C:\Users\Hansi\Desktop\RoboWasher\RoboWasher\obj\main.o
   --   -LC:\Users\Hansi\Desktop\RoboWasher\RoboWasher\obj\
   --   -LC:\Users\Hansi\Desktop\RoboWasher\RoboWasher\obj\
   --   -LC:\Users\Hansi\Downloads\Ada_Drivers_Library-master_1\Ada_Drivers_Library-master\boards\NRF52_DK\obj\zfp_lib_Debug\
   --   -LC:\gnat\2019-arm-elf\arm-eabi\lib\gnat\ravenscar-full-nrf52840\adalib\
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
