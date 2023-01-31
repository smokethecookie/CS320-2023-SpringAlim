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

use "./../assign01.sml";
use "./../MySolution/assign01-01.sml";

fun xlist_sub(xs: 'a xlist, i0: int): 'a = 
    (
    case xs of
    xlist_nil => raise XlistSubscript
    |
    xlist_cons(x1, ys) => if i0=0 then x1 else xlist_sub(ys, i0-1)
    |
    xlist_snoc(ys, x1) => if i0+1 = xlist_size(xs) then x1 else xlist_sub(ys, i0)
    |
    xlist_append(ys, zs) => if i0<xlist_size(ys) then xlist_sub(ys, i0) else xlist_sub(zs, i0-xlist_size(ys))
    |
    xlist_reverse(ys) => xlist_sub(ys, xlist_size(xs)-1-i0)
    )
    

    