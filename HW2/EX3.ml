let heap1 = NODE (1, 1, NODE (0, 5, EMPTY, EMPTY), NODE (0, 3, EMPTY, EMPTY)) in 
let heap2 = NODE (0, 2, NODE (0, 4, EMPTY, EMPTY), EMPTY) in 
findMin(merge (heap1, heap2));;
(*- : value = 1*)

let heap1 = NODE(0, 2, EMPTY, EMPTY) in
let heap2 = NODE(0, 3, EMPTY, EMPTY) in
findMin(merge (heap1, heap2));;
(*- : value = 2*)

(*function for verifying lefthip j*)

let getval : heap -> value = fun x ->
	match x with
		| EMPTY -> -1999999999
		| NODE (_, i, _, _) -> i

let rec verfy : heap -> bool = fun x ->
	match x with
	|EMPTY -> true
	|NODE (_, _, EMPTY, EMPTY) -> true
	|NODE (_, _, EMPTY, NODE _) -> false
	|NODE (_, _, NODE _ , EMPTY) -> true
	| NODE (i, j, k, l) -> 
		if ((verfy k) && (verfy l)=true) then
			let lv= getval k in
			let rv=getval l in
			let lr=rank k in
			let rr=rank l in
			if ((j<=lv)&&(j<=rv))&&(lr>=rr) then true
			else
			false
		else
			false
(********************************)

(* TC added by JS YOO ========================================*)
 findMin(EMPTY);;
(*Exception: EmptyHeap.*)
 deleteMin(EMPTY);;
(* Exception: EmptyHeap. *)
 let one = insert(1, EMPTY);;
(* val one : heap = NODE (0, 1, EMPTY, EMPTY)*)
 rank one;;
(*val - : rank = 0 *)



let one = NODE (0, 1, EMPTY, EMPTY);;
let two = NODE (0, 2, EMPTY, EMPTY);;
let three = NODE (0, 3, EMPTY, EMPTY);;
let four = NODE (0, 4, EMPTY, EMPTY);;   
let five = NODE (0, 5, EMPTY, EMPTY);;    
let six = NODE (0, 6, EMPTY, EMPTY);; 
let seven = NODE (0, 7, EMPTY, EMPTY);;   
let eight = NODE (0, 8, EMPTY, EMPTY);;
let nine = NODE (0, 9, EMPTY, EMPTY);;    
let ten = NODE (0, 10, EMPTY, EMPTY);;


 findMin(ten);;
(*- :  value = 10*)
 merge(one, three);;
(*- : heap = NODE (0, 1, NODE (0, 3, EMPTY, EMPTY), EMPTY)*)
 let temp = merge(one, three);;
(* val temp : heap = NODE (0, 1, NODE (0, 3, EMPTY, EMPTY), EMPTY)*)
 let temp' = merge(temp, five);;
(* val temp' : heap =
  NODE (1, 1, NODE (0, 3, EMPTY, EMPTY), NODE (0, 5, EMPTY, EMPTY))*)
 let temp = merge(temp', four);; 
(* val temp : heap =
  NODE (1, 1, NODE (0, 3, EMPTY, EMPTY),
   NODE (0, 4, NODE (0, 5, EMPTY, EMPTY), EMPTY))*)
 let temp' = merge(temp, seven);;
(* val temp' : heap =
  NODE (1, 1,
   NODE (1, 4, NODE (0, 5, EMPTY, EMPTY), NODE (0, 7, EMPTY, EMPTY)),
   NODE (0, 3, EMPTY, EMPTY))*)
 let temp = merge(temp', ten);;
(* val temp : heap =
  NODE (1, 1,
   NODE (1, 4, NODE (0, 5, EMPTY, EMPTY), NODE (0, 7, EMPTY, EMPTY)),
   NODE (0, 3, NODE (0, 10, EMPTY, EMPTY), EMPTY))*)
 let temp' = merge(temp, two);;
(* val temp' : heap =
  NODE (1, 1,
   NODE (1, 4, NODE (0, 5, EMPTY, EMPTY), NODE (0, 7, EMPTY, EMPTY)),
   NODE (0, 2, NODE (0, 3, NODE (0, 10, EMPTY, EMPTY), EMPTY), EMPTY))*)
 let temp = merge(temp', eight);;   
(* val temp : heap =
  NODE (2, 1,
   NODE (1, 4, NODE (0, 5, EMPTY, EMPTY), NODE (0, 7, EMPTY, EMPTY)),
   NODE (1, 2, NODE (0, 3, NODE (0, 10, EMPTY, EMPTY), EMPTY),
    NODE (0, 8, EMPTY, EMPTY)))*)
 let temp' = merge(temp, nine);; 
(* val temp' : heap =
  NODE (2, 1,
   NODE (1, 4, NODE (0, 5, EMPTY, EMPTY), NODE (0, 7, EMPTY, EMPTY)),
   NODE (1, 2, NODE (0, 3, NODE (0, 10, EMPTY, EMPTY), EMPTY),
    NODE (0, 8, NODE (0, 9, EMPTY, EMPTY), EMPTY)))*)
 
 rank temp;;
(*rank = 2*)

 let left = merge(merge(merge(merge(merge(merge(one, three), four), six), eight), nine), ten);;
(* val left : heap =
  NODE (2, 1,
   NODE (1, 4, NODE (0, 6, EMPTY, EMPTY), NODE (0, 8, EMPTY, EMPTY)),
   NODE (1, 3, NODE (0, 9, EMPTY, EMPTY), NODE (0, 10, EMPTY, EMPTY)))*)
 let right = merge(merge(merge(merge(two, four), five), eight), ten);;
(* val right : heap =
  NODE (1, 2,
   NODE (1, 5, NODE (0, 8, EMPTY, EMPTY), NODE (0, 10, EMPTY, EMPTY)),
   NODE (0, 4, EMPTY, EMPTY))*)
 let temp = merge(left, right);;
(* val temp : heap =
  NODE (2, 1,
   NODE (2, 2,
    NODE (1, 5, NODE (0, 8, EMPTY, EMPTY), NODE (0, 10, EMPTY, EMPTY)),
    NODE (1, 3, NODE (0, 9, EMPTY, EMPTY),
     NODE (0, 4, NODE (0, 10, EMPTY, EMPTY), EMPTY))),
   NODE (1, 4, NODE (0, 6, EMPTY, EMPTY), NODE (0, 8, EMPTY, EMPTY)))*)

 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (2, 2,
   NODE (1, 5, NODE (0, 8, EMPTY, EMPTY), NODE (0, 10, EMPTY, EMPTY)),
   NODE (1, 3,
    NODE (1, 4,
     NODE (1, 4, NODE (0, 10, EMPTY, EMPTY), NODE (0, 8, EMPTY, EMPTY)),
     NODE (0, 6, EMPTY, EMPTY)),
    NODE (0, 9, EMPTY, EMPTY)))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (2, 3,
   NODE (1, 4,
    NODE (1, 4, NODE (0, 10, EMPTY, EMPTY), NODE (0, 8, EMPTY, EMPTY)),
    NODE (0, 6, EMPTY, EMPTY)),
   NODE (1, 5, NODE (0, 8, EMPTY, EMPTY),
    NODE (0, 9, NODE (0, 10, EMPTY, EMPTY), EMPTY)))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (2, 4,
   NODE (1, 4, NODE (0, 10, EMPTY, EMPTY), NODE (0, 8, EMPTY, EMPTY)),
   NODE (1, 5, NODE (0, 8, EMPTY, EMPTY),
    NODE (0, 6, NODE (0, 9, NODE (0, 10, EMPTY, EMPTY), EMPTY), EMPTY)))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (1, 4,
   NODE (1, 5,
    NODE (1, 6, NODE (0, 9, NODE (0, 10, EMPTY, EMPTY), EMPTY),
     NODE (0, 8, EMPTY, EMPTY)),
    NODE (0, 8, EMPTY, EMPTY)),
   NODE (0, 10, EMPTY, EMPTY))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (1, 5,
   NODE (1, 6, NODE (0, 9, NODE (0, 10, EMPTY, EMPTY), EMPTY),
    NODE (0, 8, EMPTY, EMPTY)),
   NODE (0, 8, NODE (0, 10, EMPTY, EMPTY), EMPTY))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (1, 6,
   NODE (1, 8, NODE (0, 10, EMPTY, EMPTY), NODE (0, 8, EMPTY, EMPTY)),
   NODE (0, 9, NODE (0, 10, EMPTY, EMPTY), EMPTY))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (1, 8, NODE (0, 10, EMPTY, EMPTY),
   NODE (0, 8, NODE (0, 9, NODE (0, 10, EMPTY, EMPTY), EMPTY), EMPTY))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (1, 8, NODE (0, 9, NODE (0, 10, EMPTY, EMPTY), EMPTY),
   NODE (0, 10, EMPTY, EMPTY))*)
 let temp = deleteMin(temp);;
(* val temp : heap =
  NODE (1, 9, NODE (0, 10, EMPTY, EMPTY), NODE (0, 10, EMPTY, EMPTY))*)
 let temp = deleteMin(temp);;
(* val temp : heap = NODE (0, 10, NODE (0, 10, EMPTY, EMPTY), EMPTY)*)
 let temp = deleteMin(temp);;
(* val temp : heap = NODE (0, 10, EMPTY, EMPTY)*)
 let temp = deleteMin(temp);;
(* val temp : heap = EMPTY*)
 let temp = deleteMin(temp);;
(* Exception: EmptyHeap.*)

(*  ========================================*)
