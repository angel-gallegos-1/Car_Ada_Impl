
package body Car is 


   procedure Step(c_state: in out Car_State; speed : Integer) is 
   begin
      Starter.step(c_state.starter,c_state.start_button, speed);
      Alarm.step(c_state.alarm,c_state.starter, c_state.alarm_button);
   end Step;

   procedure Start(c_state: in out Car_State) is 

   begin

   c_state.start_button:=True;
   Step(c_state, 0);
   c_state.start_button:=False;
   Step(c_state, 0);

   end Start;



end Car;