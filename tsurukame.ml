(* 鶴と亀の合計の頭数と足の数から鶴の頭数を計算する *)
(* int -> int -> int *)
let tsurukame h f = (4 * h - f) / 2

let test1 = tsurukame 0 0 = 0
let test2 = tsurukame 1 2 = 1
let test3 = tsurukame 1 4 = 0
let test4 = tsurukame 2 4 = 2
let test5 = tsurukame 3 8 = 2
