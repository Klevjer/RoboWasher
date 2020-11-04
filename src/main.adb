
with nRF.GPIO; use nRF.GPIO;
with Ada.Real_Time; use Ada.Real_Time;
with nRF.Device; use nRF.Device;

procedure Main is


   Led : GPIO_Point := (P13);
   conf : GPIO_Configuration;

   clockNow : Ada.Real_Time.Time;

begin
   conf.Mode         := Mode_Out;
   conf.Resistors    := No_Pull;
   conf.Input_Buffer := Input_Buffer_Connect;
   conf.Sense        := Sense_Disabled;

   P13.Configure_IO(conf);
   loop
      clockNow := Ada.Real_Time.clock;
      Delay until clockNow + Ada.Real_Time.Milliseconds(200);
      set(Led);
      clockNow := Ada.Real_Time.clock;
      Delay until clockNow + Ada.Real_Time.Milliseconds(200);
      Clear(Led);
   end loop;
end Main;
