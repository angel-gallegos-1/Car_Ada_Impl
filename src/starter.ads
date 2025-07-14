package Starter is

   type S_State is (Started,Starting, Off );
   for S_State use (Started => 0,Starting => 1, Off => 2 );

   
   function Initialize_State return S_State;

   type Starter_State is tagged record
      state : S_State := Initialize_State;
   end record;

   function Transition(
      inp_state   : in out S_State;
      start_button : Boolean;
      speed : Integer
   ) return S_State;

   procedure step(
      s_state     : in out Starter_State;
      start_button : Boolean;
      speed : Integer
   );

end Starter;
