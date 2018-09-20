let exp =SUM ([TIMES [CONST 5; TIMES([VAR "x";VAR "x"])]; CONST 1]) in 
 diff(exp, "x");;
 (* - : ae =SUM [TIMES [CONST 5; SUM [TIMES [CONST 1; TIMES [VAR "x"]]; TIMES [VAR "x"; CONST 1]]]; CONST 0] *)
