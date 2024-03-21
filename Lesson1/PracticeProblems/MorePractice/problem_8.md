It would output `1` then `3`. This is because it basically iterates using a hidden 
index and ends iterating if the index is >= to the size of the array. When shift is 
called, the index does not subract 1 to account for the change in array size, causing 
the block to 'skip' an element every iteration.

Code two would output `1` then `2` then end iterating. Pop removes elements from the 
end of the array, preventing the 'skipping' problem from above, but still shrinking 
the size of the array every iteration.
