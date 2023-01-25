(*
Assign00-02: 10 points
Please implement a function that tests whether a
given natural number is a prime:
fun isPrime(n0: int): bool
*)

fun isPrime(n0: int): bool =
    if  2 > n0
        then false
    else if n0 = 2
        then true
    else
        let fun helperCounter(n1: int) =
            if n0 mod n1 = 0 
                then false
            else if n0 <= n1*n1 
                then true
            else helperCounter(n1+1)
        in
            helperCounter(2)
        end