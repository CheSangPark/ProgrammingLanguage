calculate(SIGMA(INT 1, ADD(X,X), X));;
(*Exception: FreeVariable.*)

calculate(INTEGRAL(REAL 1.0, REAL (-5.0), X));;
(*- : float = 12.3000000000000114*)

(* TC added by JS YOO ========================================*)
 calculate(ADD(X,X));;
(*Exception: FreeVariable.*)
 calculate(SIGMA(INT 1, ADD(X,X), X));;
(*Exception: FreeVariable.*)
 calculate(INTEGRAL(SUB(INT 1, X), REAL 0.4, X));;
(*Exception: FreeVariable.*)
 calculate(REAL 0.3);;
(*- : float = 0.3*)
 calculate(INT 342);; 
(*- : float = 342.0*)
 calculate(ADD(INT 342, REAL 0.3));;
(*- : float = 342.3*)
 calculate(SUB(INT 342, REAL 0.3));;
(*- : float = 341.7*)
 calculate(MUL(INT 342, REAL 0.3));;   
(*- : float = 102.6*)
 calculate(DIV(INT 342, REAL 0.3));;   
(*- : float = 1140.*)
 calculate(SIGMA(INT 5, INT 2, X));;
(*- : float = 0.*)
 calculate(SIGMA(INT 5, INT 2, ADD(X,X)));;
(*- : float = 0.*)
 calculate(ADD(X,SIGMA(INT 5, INT 2, ADD(X,X))));;
(*Exception: FreeVariable.*)
 calculate(SIGMA(REAL 2.4, REAL 2.9, ADD(X,X)));; 
(*- : float = 4.*)
 
 calculate(SIGMA(REAL 2.0, REAL 2.0, ADD(X,X)));;
(*- : float = 4.*)
 calculate(INTEGRAL(REAL 2.1, REAL 2.12, ADD(X,X)));;
(*- : float = 0.*)
 calculate(INTEGRAL(REAL 2.12, REAL 2.1, ADD(X,X)));; 
(*- : float = 0.*)
 calculate(INTEGRAL(REAL 2.0, REAL 2.12, ADD(X,X)));;
(*- : float = 0.4*)
 calculate(INTEGRAL(REAL 2.12, REAL 2.0, ADD(X,X)));; 
(*- : float = -0.4*)
 
 (*=====TRY IF YOU HAVE TIME ====*)
 calculate(INTEGRAL(INT 40, INT 3025, ADD(X,X)));;
(*- : float = 9148726.4999970682*)

calculate(INTEGRAL(SIGMA(INT 1, INT 10, MUL(MUL(X,X),X)), INTEGRAL(INT 1, INT 5, MUL(X,X)), ADD(X,X)));;
(*- : float = -9148352.30399713665*)

(*========================================*)
