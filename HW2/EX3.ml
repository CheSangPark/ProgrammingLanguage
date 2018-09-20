let heap1 = NODE (1, 1, NODE (0, 5, EMPTY, EMPTY), NODE (0, 3, EMPTY, EMPTY)) in 
let heap2 = NODE (0, 2, NODE (0, 4, EMPTY, EMPTY), EMPTY) in 
findMin(merge (heap1, heap2));;
(*- : value = 1*)

let heap1 = NODE(0, 2, EMPTY, EMPTY) in
let heap2 = NODE(0, 3, EMPTY, EMPTY) in
findMin(merge (heap1, heap2));;
(*- : value = 2*)
