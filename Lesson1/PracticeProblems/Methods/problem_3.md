Array#reject returns an array comprised of elements from the caller array who return 
false when calling them from the passed in block. Since `puts` returns `nil` a falsey 
value, all elements return a falsey value and are appended to the new array and 
returned. `[1, 2, 3]`
