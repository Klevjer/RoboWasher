
with nRF.GPIO; use nRF.GPIO;
with Ada.Real_Time; use Ada.Real_Time;
with nRF.Device; use nRF.Device;

with NRF52_DK.Buttons;

procedure Main is

   function get_distance_2 (trig, echo : GPIO_Point) return Integer is
      trig_pin : GPIO_Point := trig;
      echo_pin : GPIO_Point := echo;

      timeNow : Ada.Real_Time.Time;
      timeOutStart : Ada.Real_Time.Time;

      DeadlineMicrosec : constant Integer := 2000;

      result : Duration;
      pulse : Boolean;
      pulse_compare : Boolean;

      distanceLimit : constant Integer := 100;
   begin
      timeOutStart := Ada.Real_Time.Clock;
      timeNow := Ada.Real_Time.Clock;

      clear(trig_pin);

      Delay until timeNow +Ada.Real_Time.Microseconds(2);

      timeNow := Ada.Real_Time.Clock;
      pulse := set(echo_pin);
      pulse_compare := set(echo_pin);

      Set(trig_pin);
      delay until timeNow + Ada.Real_Time.Microseconds(50);
      clear(trig_pin);

      loop
         pulse := set(echo_pin);
         exit when pulse = pulse_compare;
      end loop;

      result := Ada.Real_Time.To_Duration(ada.Real_Time.Clock - timeNow);

      return Integer(result);

   end get_distance_2;

-------------------------------------------------------------------------------------------------------------------

   Trig_pin : GPIO_Point := (P21);
   Trig_pin_conf : GPIO_Configuration;

   Echo_pin : GPIO_Point := (P27);
   Echo_pin_conf : GPIO_Configuration;

   Debug_led : GPIO_Point := (P13);
   Debug_led_conf : GPIO_Configuration;

   Int : Integer;
begin
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

   Debug_led_conf.Mode         := Mode_out;
   Debug_led_conf.Resistors    := No_Pull;
   Debug_led_conf.Input_Buffer := Input_Buffer_Connect;
   Debug_led_conf.Sense        := Sense_Disabled;

   Debug_led.Configure_IO(Debug_led_conf);

   loop
      int := get_distance_2(Trig_pin,Echo_pin);
   end loop;
end Main;
