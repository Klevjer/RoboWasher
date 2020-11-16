with robot_IOs; use robot_IOs;
with nRF.GPIO; use nRF.GPIO;
with nRF.Device; use nRF.Device;
with Ada.Real_Time; use Ada.Real_Time;

package body robot_func is

   procedure one_stepp(Stepper_P1_in, Stepper_P2_in, Stepper_P3_in,Stepper_P4_in : GPIO_Point ) is
      Stepper_P1 : GPIO_Point := Stepper_P1_in;
      Stepper_P2 : GPIO_Point := Stepper_P2_in;
      Stepper_P3 : GPIO_Point := Stepper_P3_in;
      Stepper_P4 : GPIO_Point := Stepper_P4_in;

      timeNow : Time;
   begin
      Set(Stepper_P1);
      Clear(Stepper_P2);
      Clear(Stepper_P3);
      Clear(Stepper_P4);
      Set(p13);

      timeNow := Clock;
      Delay until timeNow + Milliseconds(500);

      Set(Stepper_P1);
      Set(Stepper_P2);
      Clear(Stepper_P3);
      Clear(Stepper_P4);
      Clear(p13);

      timeNow := Clock;
      Delay until timeNow + Milliseconds(500);

      Clear(Stepper_P1);
      Set(Stepper_P2);
      Clear(Stepper_P3);
      Clear(Stepper_P4);
      Set(p13);

      timeNow := Clock;
      Delay until timeNow + Milliseconds(500);

      Clear(Stepper_P1);
      Set(Stepper_P2);
      Set(Stepper_P3);
      Clear(Stepper_P4);
      clear(P13);

      timeNow := CLOCK;
      Delay until timeNow + Milliseconds(500);

      Clear(Stepper_P1);
      Clear(Stepper_P2);
      Set(Stepper_P3);
      Clear(Stepper_P4);
      set(P13);

      timeNow := CLOCK;
      Delay until timeNow + Milliseconds(500);

      Clear(Stepper_P1);
      Clear(Stepper_P2);
      Set(Stepper_P3);
      Set(Stepper_P4);
      Clear(P13);

      timeNow := CLOCK;
      Delay until timeNow + Milliseconds(500);

      Clear(Stepper_P1);
      Clear(Stepper_P2);
      Clear(Stepper_P3);
      Set(Stepper_P4);

      timeNow := CLOCK;
      Delay until timeNow + Milliseconds(5);

      Set(Stepper_P1);
      Clear(Stepper_P2);
      Clear(Stepper_P3);
      Set(Stepper_P4);
   end one_stepp;

   function get_distance_0(Echo_pin : GPIO_Point) return Boolean is
   begin
      if set(Echo_pin) = True then
         return True;
      else
         return False;
      end if;
   end get_distance_0;
end robot_func;
