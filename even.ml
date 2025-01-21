let rec even list =
  match list with
  [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest else even rest

let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [2] = [2]
let test4 = even [1; 2] = [2]
let test5 = even [2; 2] = [2; 2]
