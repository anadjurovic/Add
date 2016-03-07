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

pragma Style_Checks ("M999");  --  ignore long lines

package add_types is

   type comp_Input is record
      In1 : Long_Float;
      In2 : Long_Float;
   end record;

   type comp_Output is record
      Out1 : Long_Float;
   end record;

end add_types;
--  @EOF

