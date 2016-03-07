with Ada.Text_IO; use Ada.Text_IO;
--  Copyright (C) Your Company Name
--
--  @generated with QGen Code Generator 2.1.1 (20160106)
--  Command line arguments:
--    --from-simulink
--    --language ada
--    --prettyprint 80
--    --wrap-io
--    --steps psgoxcd
--    --clean C:/Users/Maxence/Documents/MATLAB/remove.slx
--    --typing C:/Users/Maxence/Documents/MATLAB/remove_types.txt
--    --output remove.slx_generated
--    --matlab C:/Users/Maxence/Documents/MATLAB/remove_base_ws.m

pragma Style_Checks ("M999");  --  ignore long lines

package body remove is

   procedure comp (Input : comp_Input; Output : out comp_Output) is
      use type Long_Float;
      use type comp_Input;
      use type comp_Output;
   begin
      --  Block remove/Add
      --  Block remove/In1
      --  Block remove/In2
      --  Block remove/Out1
      Output.Out1 := (Input.In1) - (Input.In2);
      Put(Long_Float'Image(Output.Out1));
      --  End Block remove/Out1
      --  End Block remove/In2
      --  End Block remove/In1
      --  End Block remove/Add
   end comp;
end remove;
--  @EOF

