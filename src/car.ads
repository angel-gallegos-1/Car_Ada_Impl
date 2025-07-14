with Starter;use Starter;
with Alarm; use Alarm;

package Car is

   type Car_State is tagged record
      starter : Starter_State;
      alarm : Alarm_State;
      start_button : Boolean := False;
      braking : Boolean := False;
      alarm_button : Boolean := False;
   end record;

   procedure Step(c_state : in out Car_State; speed : Integer);
   procedure Start(c_state : in out Car_State);

end Car;
