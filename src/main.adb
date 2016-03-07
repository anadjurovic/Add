with add_types; use add_types;
with add; use add;
with  Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use  Ada.Calendar;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Calendar.Formatting;

procedure Main is



   task  Direction;
   task body Direction is
      Delai_Attente: Duration := 0.1;
      var : comp_Input:= (1.0, 2.0);
      vout : comp_Output;
      i : Integer:=0;
   begin
      loop
         exit when i = 10;
         delay until (clock + Delai_Attente);
         comp(var, vout);
         i := i+1;
      end loop;
   end Direction;

begin

   null;

end Main;
