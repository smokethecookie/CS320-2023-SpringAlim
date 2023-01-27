(*
Assign00-05: 10 points
Please implement a function that returns the reverse of
a given string:
fun stringrev(cs: string): string
*)

fun helperReverse(cs: char list): string = 
    let 
        val ch = List.nth(cs, 0)
    in
        if List.length(cs) = 1
            then    
                str(ch)
        else
            helperReverse(List.drop(cs, 1): char list) ^ str(ch)
    end

fun stringrev(cs: string): string =
    let
    in
        if String.size(cs) < 1
            then ""
        else
            helperReverse(explode cs)
    end
