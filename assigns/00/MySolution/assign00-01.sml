(*
Assign00-01: 10 points
Please find the first integer N such that the
evaluation of fact(N) in SML/NJ yields an Overflow
exception.
*)
fun findOverflow() = 
    let
        fun fact(n:int) : int = 
            if n = 0 then 1 
            else n * fact(n-1)
        fun find(n:int) : int = 
            if n < 0 then n
            else if (fact(n) < 0) then n
            else find(n+1)
    in
        find(0)
    end