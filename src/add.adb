--  Copyright (C) Your Company Name
--
--  @generated with QGen Code Generator 2.1.1 (20160106)
--  Command line arguments:
--    --from-simulink
--    --language ada
--    --prettyprint 80
--    --wrap-io
--    --steps psgoxcd
--    --clean C:/Users/Maxence/Documents/MATLAB/add.slx
--    --typing C:/Users/Maxence/Documents/MATLAB/add_types.txt
--    --output add.slx_generated
--    --matlab C:/Users/Maxence/Documents/MATLAB/add_base_ws.m
with ada.Text_IO; use ada.Text_IO;
pragma Style_Checks ("M999");  --  ignore long lines

package body add is

   procedure comp (Input : comp_Input; Output : out comp_Output) is
      use type Long_Float;
      use type comp_Input;
      use type comp_Output;
   begin
      --  Block add/Add
      --  Block add/In1
      --  Block add/In2
      --  Block add/Out1
      Output.Out1 := (Input.In1) + (Input.In2);
      Put_Line(Long_Float'Image(Output.Out1));
      --  End Block add/Out1
      --  End Block add/In2
      --  End Block add/In1
      --  End Block add/Add
   end comp;
end add;
--  @EOF

