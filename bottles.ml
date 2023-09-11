(** For-loop that goes down from 99 to 1*)
for i = 99 downto 1 do
  if i <= 1 then begin (** Check to see if there is one bottle left*)
    Printf.printf "%d bottle of beer on the wall\n" i;
    Printf.printf "%d bottle of beer\n" i;
    Printf.printf "Take one down, pass it around\n";
    Printf.printf "No more bottles of beer on the wall\n";
  end else begin (** Print the normal stanza otherwise*)
    Printf.printf "%d bottles of beer on the wall\n" i;
    Printf.printf "%d bottles of beer\n" i;
    Printf.printf "Take one down, pass it around\n";
    Printf.printf "%d bottles of beer on the wall\n\n" (i - 1);
  end
done;;