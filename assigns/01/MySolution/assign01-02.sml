(*
//
Assign01-02: 10 points
//
Please implement a function
that does subscripting on xlist DIRECTLY:
//
fun xlist_sub(xs: 'a xlist, i0: int): 'a
//
If 'i0' is an illegal index, then xlist_sub
should raise the Subscript exception.
//
You should NOT convert xlist into list and
then do subscripting.
//
*)

fun xlist_sub(xs: 'a xlist, i0: int): 'a = 