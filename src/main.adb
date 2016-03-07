with add_types; use add_types;
with add;       use add;

with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Long_Float_Text_IO; use Ada.Long_Float_Text_IO;

with Ada.Calendar;  use Ada.Calendar;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Calendar.Formatting;

with P_Input; use P_Input;

procedure Main is

   -----------------------------------------------------------------------------
   task Addition;

   -----------------------------------------------------------------------------
   task body Addition is

      --------------------------------------------------------------------------
      Waiting_Delay : Duration := 0.1;

      --------------------------------------------------------------------------
      File_Input, Expected : File_Type;


      --------------------------------------------------------------------------
      Vinput     : Input_Array;

      --------------------------------------------------------------------------
      Output     : comp_Output;

      --------------------------------------------------------------------------
      Index_Task, Index_Input : Integer := 1;
      C, D, E    : Long_Float;
      B          : String (1 .. 1);

   begin

      -----------------------------------------------------------------------------
      Ada.Text_IO.Open (File_Input, Mode => In_File, Name => "input.csv");

      loop

         if End_Of_File (File_Input) = False then

            Ada.Long_Float_Text_IO.Get (File_Input, C);
            Ada.Text_IO.Get (File_Input, B);
            Ada.Long_Float_Text_IO.Get (File_Input, D);
            Vinput (Index_Input) := (In1 => C, In2 => D);
            Skip_Line (File_Input, 1);

         end if;

         Index_Input := Index_Input + 1;

         exit when Index_Input = 11;

      end loop;

      Ada.Text_IO.Close (File_Input);

      -----------------------------------------------------------------------------
      Ada.Text_IO.Open (Expected, Mode => In_File, Name => "expected.csv");

      loop

         exit when Index_Task = 11;
         delay until (Clock + Waiting_Delay);

         comp (Vinput (Index_Task), Output);
         Ada.Long_Float_Text_IO.Get (Expected, E);
         Put_Line ("  " & Boolean'Image (E = Output.Out1));
         Skip_Line (Expected, 1);
         Index_Task := Index_Task + 1;

      end loop;

      Ada.Text_IO.Close (Expected);

   end Addition;

begin
   null;
end Main;
