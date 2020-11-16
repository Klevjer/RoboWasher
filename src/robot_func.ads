with robot_IOs; use robot_IOs;
with nRF.GPIO; use nRF.GPIO;
package robot_func is

   procedure one_stepp(Stepper_P1_in, Stepper_P2_in, Stepper_P3_in,Stepper_P4_in :  GPIO_Point);

   function get_distance_0(Echo_pin : GPIO_Point) return Boolean;


end robot_func;
