with nRF.GPIO; use nRF.GPIO;
with nRF.Device; use nRF.Device;

package robot_IOs is

   ----------------------------------------------
   --                                          --
   --         DECLARE THE HC-SR04 PINS         --
   --                                          --
   ----------------------------------------------

   Trig_pin : GPIO_Point := (P01);--not true pin

   Echo_pin : GPIO_Point := (P02);--not true pin

   ----------------------------------------------
   --                                          --
   --  DECLARATION OF RIGHT STEPPER MOTOR PINs --
   --                                          --
   ----------------------------------------------

   Stepper_R_P1 : constant GPIO_Point := P04;

   Stepper_R_P2 : constant GPIO_Point := P05;

   Stepper_R_P3 : constant GPIO_Point := P30;

   Stepper_R_P4 : constant GPIO_Point := P29;

   ----------------------------------------------
   --                                          --
   --  DECLARATION OF LEFT STEPPER MOTOR PINs  --
   --                                          --
   ----------------------------------------------

   Stepper_L_P1 : constant GPIO_Point := P27;

   Stepper_L_P2 : constant GPIO_Point := P21;

   Stepper_L_P3 : constant GPIO_Point := P23;

   Stepper_L_P4 : constant GPIO_Point := P13;

   procedure Initialize;
end robot_IOs;
