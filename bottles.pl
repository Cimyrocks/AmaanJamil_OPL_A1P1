%% function no bottles
bottles(0):- write('no more bottles of beer').
%% function for non-zero number of bottles
bottles(B) :-
    %% Write the first half of the stanza
    dif(B,0), NewB is B - 1,
    (
        dif(B,1), writef('%t bottles of beer on the wall \n',[B]), writef('%t bottles of beer\n',[B]);
        writef('%t bottle of beer on the wall \n',[B]), writef('%t bottle of beer\n',[B])
    ),
    write('Take one down, pass it around\n'),
    %% Write the second half of the stanza with B - 1
    (
        %% If it's greater than one than 
        NewB > 1, writef('%t bottles of beer on the wall \n\n',[NewB]);
        %% If it's 1 then have it print the singular
        NewB =:= 1, writef('%t bottle of beer on the wall \n\n',[NewB]); 
        true
    ),
    %% Call the bottles with B - 1
    bottles(NewB). 
%% Start from 99 bottles
:- bottles(99).