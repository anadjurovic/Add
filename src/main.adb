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
      Input : Input_Array;

      --------------------------------------------------------------------------
      Output : comp_Output;

      --------------------------------------------------------------------------
      Index_Task, Index_Input : Integer := 1;
      C, D, E                 : Long_Float;
      B                       : String (1 .. 1);
      --------------------------------------------------------------------------
      start_time, current_time                   : Ada.Real_Time.Time;
      elapsed_time_computing, elapsed_time_cycle : Float;

      --------------------------------------------------------------------------
      type T_array is array (0 .. 90) of Ada.Real_Time.Time;
      Time_array : T_array;

   begin

      --------------------------------------------------------------------------
      Ada.Text_IO.Open (File_Input, Mode => In_File, Name => "input.csv");

      loop

         if End_Of_File (File_Input) = False then

            Ada.Long_Float_Text_IO.Get (File_Input, C);
            Ada.Text_IO.Get (File_Input, B);
            Ada.Long_Float_Text_IO.Get (File_Input, D);
            Input (Index_Input) := (In1 => C, In2 => D);
            Skip_Line (File_Input, 1);

         end if;

         Index_Input := Index_Input + 1;

         exit when Index_Input = 11;

      end loop;

      Ada.Text_IO.Close (File_Input);

      --------------------------------------------------------------------------
      Ada.Text_IO.Open (Expected, Mode => In_File, Name => "expected.csv");

      loop

         exit when Index_Task = 11;
         delay until (Clock + Waiting_Delay);

         start_time := Ada.Real_Time.Clock;

         Time_array (Index_Task) := start_time;

         comp (Input (Index_Task), Output);
         Ada.Long_Float_Text_IO.Get (Expected, E);
         Put ("     Expected : " & Long_Float'Image (E));
         Put ("  " & Boolean'Image (E = Output.Out1));

         current_time := Ada.Real_Time.Clock;

         elapsed_time_computing :=
           Float (To_Duration (current_time - Time_array (Index_Task)));

         Put
           ("       Computing time : " &
            Float'Image (elapsed_time_computing) &
            " s");

         elapsed_time_cycle :=
           Float
             (To_Duration
                (Time_array (Index_Task) - Time_array (Index_Task - 1)));
         case Index_Task is
            when 1 =>
               New_Line;
            when others =>
               Put_Line
                 ("       Cycle time : " &
                  Float'Image (elapsed_time_cycle) &
                  " s");
         end case;
         Skip_Line (Expected, 1);
         Index_Task := Index_Task + 1;

      end loop;

      Ada.Text_IO.Close (Expected);

   end Addition;

begin
   null;
end Main;
