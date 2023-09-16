bottles(0):- write('no more bottles of beer').
bottles(B) :-
    dif(B,0), NewB is B - 1,
    (
        dif(B,1), writef('%t bottles of beer on the wall \n',[B]), writef('%t bottles of beer\n',[B]);
        writef('%t bottle of beer on the wall \n',[B]), writef('%t bottle of beer\n',[B])
    ),
    write('Take one down, pass it around\n'),
    (
        NewB > 1, writef('%t bottles of beer on the wall \n\n',[NewB]);
        NewB =:= 1, writef('%t bottle of beer on the wall \n\n',[NewB]); 
        true
    ), 
    bottles(NewB).

:- bottles(99).