(*
//
Assign01-04: 10 points
//
Please recall the following question in Assign00:
Assign00-04: 10 points
Please implement a function that converts a given
string to an integer:
fun str2int(cs: string): int
In particular, it is expected that str2int(int2str(x)) = x
//
This time you are asked to implement the following
function that only turns a legal representation of an integer
into an integer. By a legal representation of an integer, we
mean a string consisting of a non-empty sequence of digits (where
the digit '0' can be a leading digit).
//
fun str2int_opt(cs: string): int option
//
*)

val ord = Char.ord;
val strsub = String.sub;
val strlen = String.size;

fun converter(cs: string, i: int, x: int): int option = 
    (
        if i >= strlen(cs) 
            then SOME(x)
        else if ord(strsub(cs, i)) <= 57 andalso ord(strsub(cs, i)) >= 48
            then converter(cs, i+1, x*10 + ord(strsub(cs, i)) - 48)
        else
            NONE
    )
fun str2int_opt(cs: string): int option = 
    (
        if strlen(cs) = 0 
            then NONE
        else
            converter(cs, 0, 0)
    )


