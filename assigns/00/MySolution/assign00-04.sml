(*
Assign00-04: 10 points
Please implement a function that converts a given
string to an integer:
fun str2int(cs: string): int
In particular, it is expected that str2int(int2str(x)) = x
*)

fun helper(cs: char list): int =
    let
        val ch = List.nth(cs, 0)
    in
        if List.length(cs) = 1
    then   
        ord(ch) - ord(#"0")
    else    
        helper(List.drop(cs, 1): char list)
        + ((ord(ch) - ord(#"0")) * Real.floor(Math.pow(10.0, Real.fromInt(List.length(cs) - 1))))
    end

fun str2int(cs: string): int = 
    let
    in
        helper(explode cs)
    end

    