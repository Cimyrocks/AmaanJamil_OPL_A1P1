(**
Author: Amaan Jamil
Date: 9-11-2023

I wrote this code myself, I thought the problem was fairly trivial and
I already figured out a recursive implementation so I just applied that
logic for this code
*)


(* 
This function prints a stanza for the 99 bottles of beer song;
it has logic for 1 bottle of beer to remain gramatically correct
*)
let print_stanza num_of_bottles =
  if num_of_bottles <= 1 then begin (** Check to see if there is one bottle left*)
    Printf.printf "%d bottle of beer on the wall\n" num_of_bottles;
    Printf.printf "%d bottle of beer\n" num_of_bottles;
    Printf.printf "Take one down, pass it around\n";
    Printf.printf "No more bottles of beer on the wall\n";
  end else begin (** Print the normal stanza otherwise*)
    Printf.printf "%d bottles of beer on the wall\n" num_of_bottles;
    Printf.printf "%d bottles of beer\n" num_of_bottles;
    Printf.printf "Take one down, pass it around\n";
    Printf.printf "%d bottles of beer on the wall\n\n" (num_of_bottles - 1);
  end;;

(*
This is a recursive function that prints the 99 bottles of beer on the wall song
In theory you can start from any number and it will print the song but
in this program I am starting from 99
*)
let rec print_song cur_num_of_bottles =
  if cur_num_of_bottles > 0 then begin
    print_stanza cur_num_of_bottles;
    print_song (cur_num_of_bottles - 1);
  end;;

(* This just calls the function to pring the song with the argument 99 *)
print_song 99