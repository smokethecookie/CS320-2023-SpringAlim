(*
Assign00-01: 10 points
Please find the first integer N such that the
evaluation of fact(N) in SML/NJ yields an Overflow
exception.
*)
fun fact(x: int): int =
  if x > 0 then x * fact(x-1) else 1

fun checkOverflow(n0: int): int =
    let 
    in
        if fact(n0: int) > valOf Int.maxInt
            then
                raise Overflow
        else    
            checkOverflow(n0+1: int)
            handle Overflow => n0+1
    end
val N = checkOverflow(0);

