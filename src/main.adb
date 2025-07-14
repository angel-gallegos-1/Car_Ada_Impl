with Car;use Car;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is

   car : Car_State;
   procedure drive_car is begin
      
      Put_Line ("Starting Car");
      Start(car);
      Put_Line ("Car_Started");

   end drive_car;
      


begin

   drive_car;

end Main;