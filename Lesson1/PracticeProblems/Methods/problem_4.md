The return is `{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}`. This is because 
`#each_with_object` takes in an object as an arguement, which in this case is a hash. 
The `value` parameter of the block will be passed in an element of the array, and the 
`hash` parameter is passed in the object passed as an arguement to `each_with_object`.
`value[0]` slices the first character of the passed in string and passes it as an arguement 
into `hash[]`, creating a key and setting its value to `value`. 
