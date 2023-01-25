(*
Assign00-03: 10 points
Please implement a function that converts a given
integer to a string that represents the integer:
fun int2str(i0: int): string
*)

fun int2str(i0: int): string = 
    let
        val i1 = i0 mod 10
    in
    if i0 < 10
    then
        str((chr(ord(#"0") + i1)))
    else
        int2str(i0 div 10: int)^str((chr(ord(#"0") + i1)))
    end

