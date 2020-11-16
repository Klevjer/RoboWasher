with nRF.GPIO; use nRF.GPIO;
with nRF.Device; use nRF.Device;
package body robot_IOs is
   procedure Initialize is
   ----------------------------------------------
   --                                          --
   --       DECLARING THE HC-SR04 CONIGF VAR   --
   --                                          --
   ----------------------------------------------

      Trig_pin_conf : GPIO_Configuration;
      Echo_pin_conf : GPIO_Configuration;

   ----------------------------------------------
   --                                          --
   --     DECLARING THE RIGHT STEPPER MOTOR    --
   --                  CONF VAR                --
   --                                          --
   ----------------------------------------------

      Stepper_R_P1_conf : GPIO_Configuration;
      Stepper_R_P2_conf : GPIO_Configuration;
      Stepper_R_P3_conf : GPIO_Configuration;
      Stepper_R_P4_conf : GPIO_Configuration;

   ----------------------------------------------
   --                                          --
   --     DECLARING THE RIGHT STEPPER MOTOR    --
   --                  CONF VAR                --
   --                                          --
   ----------------------------------------------

      Stepper_L_P1_conf : GPIO_Configuration;
      Stepper_L_P2_conf : GPIO_Configuration;
      Stepper_L_P3_conf : GPIO_Configuration;
      Stepper_L_P4_conf : GPIO_Configuration;

   begin
   ----------------------------------------------
   --                                          --
   --         INITATE THE HC-SR04 PINS         --
   --                                          --
   ----------------------------------------------

   Trig_pin_conf.Mode         := Mode_Out;
   Trig_pin_conf.Resistors    := Pull_Up;
   Trig_pin_conf.Input_Buffer := Input_Buffer_Connect;
   Trig_pin_conf.Sense        := Sense_Disabled;

   Trig_pin.Configure_IO(Trig_pin_conf);

   Echo_pin_conf.Mode         := Mode_in;
   Echo_pin_conf.Resistors    := Pull_Up;
   Echo_pin_conf.Input_Buffer := Input_Buffer_Connect;
   Echo_pin_conf.Sense        := Sense_Disabled;

   Echo_pin.Configure_IO(Echo_pin_conf);

   ----------------------------------------------
   --                                          --
   --  CONFIGURE THE RIGHT STEPPER MOTOR PINs  --
   --                                          --
   ----------------------------------------------

   Stepper_R_P1_conf.Mode         := Mode_Out;
   Stepper_R_P1_conf.Resistors    := No_Pull;
   Stepper_R_P1_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_R_P1_conf.Sense        := Sense_Disabled;

   Stepper_R_P1.Configure_IO(Stepper_R_P1_conf);

   Stepper_R_P2_conf.Mode         := Mode_Out;
   Stepper_R_P2_conf.Resistors    := No_Pull;
   Stepper_R_P2_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_R_P2_conf.Sense        := Sense_Disabled;

   Stepper_R_P2.Configure_IO(Stepper_R_P2_conf);

   Stepper_R_P3_conf.Mode         := Mode_Out;
   Stepper_R_P3_conf.Resistors    := No_Pull;
   Stepper_R_P3_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_R_P3_conf.Sense        := Sense_Disabled;

   Stepper_R_P3.Configure_IO(Stepper_R_P3_conf);

   Stepper_R_P4_conf.Mode := Mode_Out;
   Stepper_R_P4_conf.Resistors := No_Pull;
   Stepper_R_P4_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_R_P4_conf.Sense := Sense_Disabled;

   Stepper_R_P4.Configure_IO(Stepper_R_P4_conf);


   ----------------------------------------------
   --                                          --
   --  CONFIGURE THE LEFT STEPPER MOTOR PINs   --
   --                                          --
   ----------------------------------------------

   Stepper_L_P1_conf.Mode         := Mode_Out;
   Stepper_L_P1_conf.Resistors    := No_Pull;
   Stepper_L_P1_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_L_P1_conf.Sense        := Sense_Disabled;

   Stepper_L_P1.Configure_IO(Stepper_L_P1_conf);

   Stepper_L_P2_conf.Mode         := Mode_Out;
   Stepper_L_P2_conf.Resistors    := No_Pull;
   Stepper_L_P2_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_L_P2_conf.Sense        := Sense_Disabled;

   Stepper_L_P2.Configure_IO(Stepper_L_P2_conf);

   Stepper_L_P3_conf.Mode         := Mode_Out;
   Stepper_L_P3_conf.Resistors    := No_Pull;
   Stepper_L_P3_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_L_P3_conf.Sense        := Sense_Disabled;

   Stepper_L_P3.Configure_IO(Stepper_L_P3_conf);

   Stepper_L_P4_conf.Mode         := Mode_Out;
   Stepper_L_P4_conf.Resistors    := No_Pull;
   Stepper_L_P4_conf.Input_Buffer := Input_Buffer_Connect;
   Stepper_L_P4_conf.Sense        := Sense_Disabled;

   Stepper_L_P4.Configure_IO(Stepper_L_P4_conf);

   end Initialize;
begin
   Initialize;
end robot_IOs;
