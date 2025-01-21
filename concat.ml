let rec concat list =
  match list with
  [] -> ""
  | first :: rest -> first ^ concat rest

let test1 = concat [] = ""
let test2 = concat [""] = ""
let test3 = concat ["A"] = "A"
let test4 = concat ["A"; "B"] = "AB"