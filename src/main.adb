with add_types; use add_types;
with add; use add;
with  Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use  Ada.Calendar;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Calendar.Formatting;
with P_Input; use P_Input;

procedure Main is

   task  Addition;
   task body Addition is
      Waiting_Delay: Duration := 0.1;

      Output : comp_Output;
      Index_Task : Integer:=1;
   begin
      loop
         exit when Index_Task = 11;
         delay until (clock + Waiting_Delay);

         comp(Input(Index_Task), Output);

         Index_Task := Index_Task + 1;

      end loop;
   end Addition;

begin
   null;
end Main;
