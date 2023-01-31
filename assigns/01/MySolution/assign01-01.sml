(*
//
Assign01-01: 10 points
//
Please implement a function
that computes the size of an xlist DIRECTLY:
//
fun xlist_size(xs: 'a xlist): int
//
That is, you should NOT convert xlist into list
and then compute the size of the converted list
//
*)

use "./../assign01.sml";
fun xlist_size(cs: 'a xlist): int =
    (
    case cs of
    xlist_nil => 0
    |
    xlist_cons(x1, cs) => 1 + xlist_size(cs)
    |
    xlist_snoc(cs, x1) => xlist_size(cs) + 1
    |
    xlist_append(cs, ys) => xlist_size(cs) + xlist_size(ys)
    |
    xlist_reverse(cs) => xlist_size(cs)
    )
