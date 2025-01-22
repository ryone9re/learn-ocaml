module type Tree_t = sig
  type ('a, 'b) t

  val empty : ('a, 'b) t
  val insert : ('a, 'b) t -> 'a -> 'b -> ('a, 'b) t
  val search : ('a, 'b) t -> 'a -> 'b
end

module Tree : Tree_t = struct
  type ('a, 'b) t = Empty | Node of ('a, 'b) t * 'a * 'b * ('a, 'b) t

  let empty = Empty

  let rec insert tree k v =
    match tree with
    | Empty -> Node (Empty, k, v, Empty)
    | Node (l, a, b, r) ->
        if a < k then Node (insert l k v, a, b, r)
        else if a > k then Node (l, a, b, insert r k v)
        else Node (l, a, v, r)

  let rec search tree k =
    match tree with
    | Empty -> raise Not_found
    | Node (l, a, b, r) ->
        if k < a then search l k else if k > a then search r k else b
end
