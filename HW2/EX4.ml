let (n, queue') = IntListQ.deQ (IntListQ.enQ(IntListQ.enQ(IntListQ.emptyQ, [1;2;3]), [4;5]));; 
(*
val n : int list = [1; 2; 3] 
val queue' : int list list * int list list = ([], [[4; 5]])
*)

(* TC added by JS YOO ========================================*)
# let (n, que') = IntListQ.deQ(IntListQ.emptyQ);;
(*Exception: IntListQ.EMPTY_Q.*)
# let (que') = IntListQ.enQ(IntListQ.emptyQ, []);;
(*val que' : IntListQ.queue = ([[]], [])*)
# let (n, temp) = IntListQ.deQ(que');;               
(*val n : IntListQ.element = []*)
(*val temp : IntListQ.queue = ([], [])*)
# let (n, temp') = IntListQ.deQ(temp);;
(*Exception: IntListQ.EMPTY_Q.*)
# let (n, temp) = IntListQ.deQ(que');; 
(*val n : IntListQ.element = []*)
(*val temp : IntListQ.queue = ([], [])*)
# temp;;
(*- : IntListQ.queue = ([], [])*)
# let temp' = IntListQ.enQ(temp, [1;2;3]);;
(*val temp' : IntListQ.queue = ([[1; 2; 3]], [])*)
# let temp = IntListQ.enQ(temp', [1;2;3]);; 
(*val temp : IntListQ.queue = ([[1; 2; 3]; [1; 2; 3]], [])*)
# let temp' = IntListQ.enQ(temp, [1;2;3]);; 
(*val temp' : IntListQ.queue = ([[1; 2; 3]; [1; 2; 3]; [1; 2; 3]], [])*)
# let (n, temp) = IntListQ.deQ(temp');;
(*val n : IntListQ.element = [1; 2; 3]*)
(*val temp : IntListQ.queue = ([], [[1; 2; 3]; [1; 2; 3]])*)
# let temp' = IntListQ.enQ(temp, [4]);;
(*val temp' : IntListQ.queue = ([[4]], [[1; 2; 3]; [1; 2; 3]])*)
# let temp = IntListQ.enQ(temp', [4;5]);;
(*val temp : IntListQ.queue = ([[4; 5]; [4]], [[1; 2; 3]; [1; 2; 3]])*)
# let temp' = IntListQ.enQ(temp, [4;5;6]);;
(*val temp' : IntListQ.queue =
  ([[4; 5; 6]; [4; 5]; [4]], [[1; 2; 3]; [1; 2; 3]])*)
# let temp = IntListQ.enQ(temp', [4;5;6;7]);;
(*val temp : IntListQ.queue =
  ([[4; 5; 6; 7]; [4; 5; 6]; [4; 5]; [4]], [[1; 2; 3]; [1; 2; 3]])*)
# let (n,temp') = IntListQ.deQ(temp);;       
(*val n : IntListQ.element = [1; 2; 3]*)
(*val temp' : IntListQ.queue =
  ([[4; 5; 6; 7]; [4; 5; 6]; [4; 5]; [4]], [[1; 2; 3]])*)
# let (n,temp) = IntListQ.deQ(temp');;
(*val n : IntListQ.element = [1; 2; 3]*)
(*val temp : IntListQ.queue = ([[4; 5; 6; 7]; [4; 5; 6]; [4; 5]; [4]], [])*)
# let (n,temp') = IntListQ.deQ(temp);; 
(*val n : IntListQ.element = [4]*)
(*val temp' : IntListQ.queue = ([], [[4; 5]; [4; 5; 6]; [4; 5; 6; 7]])*)
# let (n,temp) = IntListQ.deQ(temp');;
(*val n : IntListQ.element = [4; 5]*)
(*val temp : IntListQ.queue = ([], [[4; 5; 6]; [4; 5; 6; 7]])*)

# let temp = IntListQ.enQ(IntListQ.enQ(([[1];[1;2];[1;2;3]],[[1;2;3;4];[3;2]]),[3;2;1]),[5;4;2]);;
(*val temp : IntListQ.queue =
  ([[5; 4; 2]; [3; 2; 1]; [1]; [1; 2]; [1; 2; 3]], [[1; 2; 3; 4]; [3; 2]])*)
# let (n, fork) = IntListQ.deQ(temp);;
(*val n : IntListQ.element = [1; 2; 3; 4]*)
(*val fork : IntListQ.queue =
  ([[5; 4; 2]; [3; 2; 1]; [1]; [1; 2]; [1; 2; 3]], [[3; 2]])*)
# let (n, fork') = IntListQ.deQ(fork);;
(*val n : IntListQ.element = [3; 2]*)
(*val fork' : IntListQ.queue =
  ([[5; 4; 2]; [3; 2; 1]; [1]; [1; 2]; [1; 2; 3]], [])*)
# let temp = IntListQ.enQ(fork', n);;
(*val temp : IntListQ.queue =
  ([[3; 2]; [5; 4; 2]; [3; 2; 1]; [1]; [1; 2]; [1; 2; 3]], [])*)
  
(*==========================================================================++*)
