with robot_func; use robot_func;
with robot_IOs; use robot_IOs;
with nRF.GPIO; use nRF.GPIO;
with nRF.Device; use nRF.Device;
with NRF52_DK.Time; use NRF52_DK.Time;

procedure Main is
begin
   loop
      one_stepp(Stepper_R_P1,Stepper_R_P2,Stepper_R_P3,Stepper_R_P4);
   end loop;
end Main;
