(**************************************************************************)
(*                                                                        *)
(*  GOSPEL -- A Specification Language for OCaml                          *)
(*                                                                        *)
(*  Copyright (c) 2018- The VOCaL Project                                 *)
(*                                                                        *)
(*  This software is free software, distributed under the MIT license     *)
(*  (as described in file LICENSE enclosed).                              *)
(**************************************************************************)

(*@ function int_of_float (x:float): int *)
(*@ function to_float (i: integer): float *)

(*@ function i (a:float):float =
      to_float (int_of_float a + 1) *)
(*@ requires int_of_float a > 0
    ensures let old_a [@ athing] = int_of_float (old a) in
            a = old_a + 1 *)

(* ERROR:
   Line 18
   type mysmatch float with integer
   replace in line 9 "a" by "int_of_float a"
*)
