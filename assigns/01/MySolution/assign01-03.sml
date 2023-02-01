(*
//
Assign01-03: 10 points
//
Please implement a function that converts a given
xlist 'xs' into another xlist 'ys' by removing the
constructor 'mylist_reverse':
//
fun xlist_remove_reverse(xs: 'a xlist): 'a xlist
//
In particular, your implementation should guarantee:
1. 'xs' and 'ys' represent the same list
2. 'ys' does NOT make any use of 'mylist_reverse'
3. 'xs' and 'ys' use the same number of 'mylist_append'
//
*)
use "./../assign01.sml";
fun xlist_remove_reverse(xs: 'a xlist): 'a xlist =
    (
    case xs of
    xlist_nil => 
    |
    xlist_cons(x1, ys) => 
    |
    xlist_snoc(ys, x1) => 
    |
    xlist_append(xs, ys) => 
    |
    xlist_reverse(ys) => 
    )