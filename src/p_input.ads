with add_types; use add_types;

package P_Input is

   type Input_Array is array (1..10) of comp_Input;

   Input : Input_Array :=
     ( 1 => (In1 => 1.0, In2 =>  2.0),
       2 => (In1 => 21.0, In2 =>  7.0),
       3 => (In1 => 100.0, In2 =>  4.0),
       4 => (In1 => 9.0, In2 =>  2.0),
       5 => (In1 => 77.0, In2 =>  99.0),
       6 => (In1 => 8.0, In2 =>  12.0),
       7 => (In1 => 5.0, In2 =>  4.0),
       8 => (In1 => 3.0, In2 =>  2.0),
       9 => (In1 => 2.0, In2 =>  2.0),
       10 => (In1 => 1.0, In2 =>  1.0));
end P_Input;
