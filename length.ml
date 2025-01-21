let rec length list =
  match list with
  [] -> 0
  | first :: rest -> 1 + length rest

let test1 = length [] = 0
let test2 = length [1] = 1
let test3 = length [1; 2] = 2