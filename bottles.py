"""
Author: Amaan Jamil
Date: 9-11-2023

This is code that I wrote to solve the "99 bottles of beer" problem
I chose to do this recursively rather than
using a for-loop to challenge myself
"""
# This is a function to print a stanza for a given number of bottles
def print_stanza(num_of_bottles: int):
    if num_of_bottles == 1:
        # Special case for only 1 bottle because it should use the singular version rather than the plural
        print(num_of_bottles, "bottle of beer on the wall")
        print(num_of_bottles, "bottle of beer")
        print("Take one down, pass it around")
        print("No more bottles of beer on the wall\n")
        return None
    else:
        # Use the plural form of bottle for every other number
        print(num_of_bottles, "bottles of beer on the wall")
        print(num_of_bottles, "bottles of beer")
        print("Take one down, pass it around")
        print(num_of_bottles - 1, " bottles of beer on the wall\n")
        return None

# This is a function to print the song starting from a given number of bottles
def print_song(cur_num_of_bottles: int):
    # If there are no bottles left, exit the function
    if cur_num_of_bottles <= 0:
        return None

    # Print the stanza for the current number of bottles
    print_stanza(cur_num_of_bottles)
    
    # Recursive call for the next number of bottles
    print_song(cur_num_of_bottles - 1)

# Print the "99 Bottles of beer song"
print_song(99)
