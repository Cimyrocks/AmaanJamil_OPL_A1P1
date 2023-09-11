-- I modified this code from rosetta code
-- This is the link https://rosettacode.org/wiki/99_bottles_of_beer#Ada

with Ada.Text_Io; use Ada.Text_Io; -- This imports the IO package which allows us to print

-- This is our main procedure to print the 99 bottles of beer song
procedure Bottles is
begin
    -- This for loop goes in reverse from 99 to 1
    for X in reverse 1..99 loop
        if X <= 1 then -- If the number of bottles remaining is 1 then we enter a special case to be grammatically correct
            Put_Line(Integer'Image(X) & " bottle of beer on the wall");
            Put_Line(Integer'Image(X) & " bottle of beer");
            Put_Line("Take one down, pass it around");
            Put_Line("No more bottles of beer on the wall");
            New_Line;
        else -- Otherwise just print the normal stanza
            Put_Line(Integer'Image(X) & " bottles of beer on the wall");
            Put_Line(Integer'Image(X) & " bottles of beer");
            Put_Line("Take one down, pass it around");
            Put_Line(Integer'Image(X - 1) & " bottles of beer on the wall");
            New_Line;
        end if;
    end loop;
end Bottles;