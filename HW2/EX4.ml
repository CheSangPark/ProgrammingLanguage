let (n, queue') = IntListQ.deQ (IntListQ.enQ(IntListQ.enQ(IntListQ.emptyQ, [1;2;3]), [4;5]));; 
(*
val n : int list = [1; 2; 3] 
val queue' : int list list * int list list = ([], [[4; 5]])
*)
