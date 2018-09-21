let exp =SUM ([TIMES [CONST 5; TIMES([VAR "x";VAR "x"])]; CONST 1]) in 
 diff(exp, "x");;
 (* - : ae =SUM [TIMES [CONST 5; SUM [TIMES [CONST 1; TIMES [VAR "x"]]; TIMES [VAR "x"; CONST 1]]]; CONST 0] *)
 
 (* TC added by JS YOO ========================================*)
diff(TIMES[VAR "X"; VAR "Y"; VAR "Z"; CONST 5],"X");;
(* 5yz*)
diff(POWER("XY", 5), "X");;
(*0*)
diff(POWER("XY",0),"XY");;
(*0*)
diff(POWER("XY", 5), "XY");;
(*5(xy)^4*)
diff(diff(diff(diff(diff(POWER("X",5),"X"),"X"),"X"),"X"),"X");;
(*120*)
diff(diff(diff(diff(POWER("X",5),"X"),"X"),"X"),"X");;
(*120x*)
diff(diff(diff(POWER("X",5),"X"),"X"),"X");;
(*60x^2*)
diff(diff(POWER("X",5),"X"),"X");;
(*20x^3*)
diff(POWER("X",5),"X");;
(*5x^4*)
diff(CONST 1000, "X");;
(*0*)
diff(VAR "ASFSD", "ASFSD");;
(*1*)
diff(TIMES[SUM[VAR "X";VAR"Y"];VAR "X";VAR"Y";CONST 10;POWER("Z",4)],"X");;
(*10yz^4 (2x + y)*)
diff(SUM[VAR "X";VAR "Y"; TIMES[CONST 2; POWER("X",4)];CONST 2],"X");;
(* 1 + 8x^3 *)
(* ========================================*)
