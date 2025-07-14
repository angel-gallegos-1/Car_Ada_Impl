with Starter;use Starter;

package Alarm is

   

   type A_State is (Disabled, Enabled);
   for A_State use (Disabled => 0, Enabled => 1);
   

   type Alarm_State is tagged record
      state : A_State := Disabled;
   end record;

   function Transition(
      inp_state    : A_State;
      start_state : Starter_State;
      Alarm_Button  : Boolean
   ) return A_State;

   procedure step(
      a_state       : in out Alarm_State;
      start_state : Starter_State;
      Alarm_Button  : Boolean
   );

end Alarm;
