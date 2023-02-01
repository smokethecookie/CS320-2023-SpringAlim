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


(* fun helper(cs: char list): int option =
    let
        val ch = List.nth(cs, 0)
    in
        if Char.ord(ch) < 48 
            then NONE
        else if Char.ord(ch) > 57
            then NONE
        else if List.length(cs) = 1
            then   
                Char.ord(ch) - Char.ord(#"0")
        else    
            helper(List.drop(cs, 1): char list)
            + (valOf((Char.ord(ch) - Char.ord(#"0"))) * Real.floor(Math.pow(10.0, Real.fromInt(List.length(cs) - 1))))
    end

fun str2int_opt(cs: string): int option = 
    let
    in
        helper(explode cs)
        handle NONE => NONE
    end *)

