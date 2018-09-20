let exp =SUM ([TIMES [CONST 5; TIMES([VAR "x";VAR "x"])]; CONST 1]) in 
 diff(exp, "x");;
 (**)
