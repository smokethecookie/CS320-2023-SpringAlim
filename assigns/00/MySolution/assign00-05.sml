(*
Assign00-05: 10 points
Please implement a function that returns the reverse of
a given string:
fun stringrev(cs: string): string
*)

fun stringrev(cs: string): string =
    let
        val strlen = String.size(cs)
    in
      if strlen = 0
    then
        cs
    else
        stringrev(String.extract(cs, 1, NONE)) ^ str(String.sub(cs, 0))
    end