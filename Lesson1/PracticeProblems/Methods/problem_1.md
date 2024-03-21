The return value is [1, 2, 3]. This is because the last expression evaluated of the 
block is `'hi'`, which is truthy. Select returns a new array with values that are 
selected by the block's return value. Since it will always return a truthy value, 
all objects in the original array are appended to the array to be returned by select.
