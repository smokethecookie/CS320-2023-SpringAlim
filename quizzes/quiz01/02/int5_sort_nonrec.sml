(* ****** ****** *)
(*
HX-2023-02-07: 50 points
*)
(* ****** ****** *)

type int2 = int * int
type int3 = int * int * int
type int4 = int * int * int * int
type int5 = int * int * int * int * int

(* ****** ****** *)

(*
The following function int5_sort
is based on ListMergeSort.sort, which is
defined recursively. Given a tuple of 5
integers, int5_sort returns an ordered tuple
of the same 5 integers. For instance,
int5_sort(1, 2, 1, 2, 2) = (1, 1, 2, 2, 2)
int5_sort(3, 1, 2, 5, 2) = (1, 2, 2, 3, 5)
int5_sort(3, 1, 2, 5, 4) = (1, 2, 3, 4, 5)
*)

(*
val
int5_sort =
fn(xs: int5): int5 =
let
val (x1, x2, x3, x4, x5) = xs
val ys =
ListMergeSort.sort(op>=)[x1,x2,x3,x4,x5]
val y1 = hd(ys) and ys = tl(ys)
val y2 = hd(ys) and ys = tl(ys)
val y3 = hd(ys) and ys = tl(ys)
val y4 = hd(ys) and ys = tl(ys)
val y5 = hd(ys) and ys = tl(ys)
in
  (y1, y2, y3, y4, y5)
end
*)

(* ****** ****** *)
(*
Please give a non-recursive implementation of int5_sort
as int5_sort_nr. That is, please implement int5_sort_nr
in a non-recursive manner such that int5_sort(xs) equals
int5_sort_nr(xs) for every 5-tuple xs of the type int5.
*)
(* ****** ****** *)

fun
int5_sort_nr(xs: int5): int5 =
(*
Please Give your implementation as follows:
*)
  let 
    val x1 = (#1(xs))
    val x2 = (#2(xs))
    val x3 = (#3(xs))
    val x4 = (#4(xs))
    val x5 = (#5(xs))

    fun int2sort(cs: int2): int2 =
      let
        val c1 = (#1(cs))
        val c2 = (#2(cs))
      in
        if c1 > c2
          then (c2, c1)
        else
          (c1, c2)
      end
    fun combine(left: int2, right: int2): int4 =
      let
        val l1 = #1(left)
        val l2 = #2(left)
        val r1 = #1(right)
        val r2 = #2(right) 
      in
        if r1 > l1
        then 
          if r1 > l2
          then (l1, l2, r1, r2)
          else
            if r2 > l2
            then (l1, r1, l2, r2)
            else (l1, r1, r2, l2)
        else
          if l1 > r2
          then (r1, r2, l1, l2)
          else 
            if l2 > r2
            then (r1, l1, r2, l2)
            else (r1, l1, l2, r2)
      end
      fun helper(fs: int4, x5: int): int5 =
        let
          val f1 = #1(fs)
          val f2 = #2(fs)
          val f3 = #3(fs)
          val f4 = #4(fs)
        in
          if x5 > f4
          then (f1, f2, f3, f4, x5)
          else
            if x5 > f3
            then (f1, f2, f3, x5, f4)
            else
              if x5 > f2
              then (f1, f2, x5, f3, f4)
              else
                if x5 > f1
                then (f1, x5, f2, f3, f4)
                else (x5, f1, f2, f3, f4)
        end
    in
      helper(combine(int2sort((x1, x2)),int2sort((x3, x4))), x5)
    end
(* ****** ****** *)

(* end of [CS320-2023-Spring-quiz01-int5_sort_nonrec.sml] *)
