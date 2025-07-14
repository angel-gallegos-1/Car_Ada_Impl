with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Handling;
package body Alarm is

function transition(inp_state: A_State; start_state: Starter_State ;Alarm_Button: Boolean) return A_State is 
   begin
      return inp_state;
   end transition;

   procedure step(a_state: in out Alarm_State;start_state: Starter_State; Alarm_Button: Boolean)is
   begin
      a_state.state := transition(a_state.state,start_state,Alarm_Button);
   end step;
   
end Alarm;