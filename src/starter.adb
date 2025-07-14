package body Starter is

    --Initialization function for state
   function Initialize_State return S_State is
   begin
      return Off;
   end Initialize_State;

  


   function transition(inp_state: in out S_State; start_button: Boolean;speed : Integer) return S_State is 
   begin
      return inp_state;
   end transition;

   procedure step(s_state: in out  Starter_State;start_button: Boolean; speed : Integer)is
   begin
      s_state.state := transition(s_state.state,start_button,speed);
   end step;
   
end Starter;