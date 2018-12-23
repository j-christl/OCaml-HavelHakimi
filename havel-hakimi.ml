(* OCaml-HavelHakimi
 * ************
 * Functional implementation of the Havel-Hakimi
 * algorithm in OCaml
 * https://github.com/yoshc/OCaml-HavelHakimi
 * ************
 *)

(* help function to print an int list *)
let rec print_list = function 
    | [] -> ()
    | x::xs -> print_int x ; print_string " " ; print_list xs

(* havel_hakimi : int list -> bool
 *
 * Uses the havel-hakimi algorithm on a given graph sequence (int list)
 * Returns whether the graph is constructable using the algorithm
 *)
let havel_hakimi (seq_r : int list) : bool =
    let rec havel_hakimi_rec (seq : int list) =
        let () = print_list seq;print_string "\n" in 
        if List.for_all (fun n -> n = 0) seq || seq = [] then true
        else if List.exists (fun n -> n < 0) seq then false 
        else
            let new_seq = List.mapi (fun i n -> if i <= ((List.hd seq)-1) then n-1 else n) (List.tl seq) in
            let () = print_list new_seq;print_string " (unsorted)\n" in 
            let sorted_seq = List.sort (fun x y -> ~- (compare x y)) new_seq in
            havel_hakimi_rec sorted_seq
    in havel_hakimi_rec (List.rev seq_r)
