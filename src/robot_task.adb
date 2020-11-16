with Ada.Real_Time; use Ada.Real_Time;
with nRF.GPIO; use nRF.GPIO;
with nRF.Device; use nRF.Device;

package body robot_task is

   task body blink is
      timeNow : Time;
   begin
      loop

         set(P13);
         TimeNow := Clock;
         delay until Clock + Ada.Real_Time.Milliseconds(500);

         clear(P13);
         timeNow := Clock;
         delay until Clock + Ada.Real_Time.Milliseconds(500);

      end loop;
   end blink;


end robot_task;
