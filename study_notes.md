# Study Notes

## Different types of collections

### Strings
Strings are a pseudo collection. You can access individual letters and manipulate 
them in similar ways to collections, but there is only one string object. When 
accessing specific characters from a string, a new string is returned. Grabbing 
the same character multiple times returns a different object each time. 

### Arrays
Arrays are ordered, zero-indexed collections. Arrays are a collection of elements, 
where the elements can be any object. Arrays use integers to index their elements, 
and getting an object from an array requires its index in most cases. 

### Hashes
Hashes are a collection of key-value pairs, where the value is returned when a 
key is passed in. Keys must be unique. If a key-value pair is added to a hash, 
and the key already exists, it overwrites the value of that key with the new 
key. Keys and values both can be of any object type. 

### Element Assignment
For all collections, individual elements can be mutated, assigned, and reassigned. 
Using the `[]` method can grab individual elements. If that element is changed, 
the collection object is also changed. 

## Nested Collections
Since collecitons are objects, the elements of a collection could be, themselves,
collections. This is true for both key and value of hashes. Deeper elements can 
be accessed by chaining `[]` invocations.

## Referencing specific elements in a colleciton
Specific elements in a collecion can be referenced using the `#slice` method, 
aliased as `#[]`. `[]` can take several arguments. 

### Arrays
- `array[index]`: returns the element whose index matches the argument. Throws 
an error if the argument is larger than the highest index. If a negative index 
is given, returns the element associated with the number, counting from the back.
- `array[start, length]`: returns an array of size `length` starting at offset 
`start`. If `start + length` is greater than `self.length`, returns an array of all 
elements starting from `start`. If `start == self.length` and `length >= 0`, 
returns an empty array. If length is negative returns nil.
- `array[range]`: treats `range.min` as `start` above and `range.size` as `length`. 
If range.end is negative, calculates the end index from the end of the array.
- `array[aseq]`: returns an array of elements crresponding to the indexes 
produced by the sequence.
### Strings
- `string[index]`: Same as array above, but returns strings instead of arrays. 
- `string[start, length]`: Same as array above, but returns strings instead of 
arrays. 
- `string[range]`: Same as array above, but returns strings instead of arrays. 
- `string[regexp, capture = 0]`: returns the first matching substring found in 
`self`.
- `string[substring]`: returns the substring if found, otherwise nil.
### Hashes
- `hash[key]`: If the key is found, returns the value associated with the key. 
Returns the default value if the key is not found. Most often, the default is 
`nil`.

## Looping and iterating over collections, including nested collections
Simple loops use `Kernel#loop` and pass it a block as an argument. Any code within 
the block is executed each time the loop performs an iteration. We can exit `loop` 
with the `break` keyword. We can attach a conditional statement to `break` to 
control when the loop exits. 

Loops cannot track iteration count. That is most often done with an external 
variable that is incremented every iteration of the loop. These variables need 
to be initialized outside of the block to avoid being reassigned to the default 
value each loop. 

`next` can be used to skip the rest of this current loop and go to the next loop. 

Looping over a collection utilize the following: a loop, a counter, a way to 
retrieve the current value, and a way to exit the loop. The way to retrieve the 
current value often uses `[]` and the counter variable.

## Selection from collections
Selection picks certain elements ot of the collection based on a criteria. 
Selection always results in `collection.size` or less elements.

There are many methods used to help select from a collection. 
- `include?(element)` returns true if the collection contains the element, false 
otherwise.

## Transformation of collections
Transformation refers to manipulating every element in a collection. Transformation 
always returns a collection the same size as the origin collection. Transformation 
often uses criteria to determine how the collection is transformed.

## Sorting Collections
Sorting changes the order of the elements of a collection based on a criteria. 
Sorting is most often performed on arrays, since they are accessed through their 
index. Strings cannot be sorted by default, though they can be turned into and 
from an array to sort them. Hashes can be sorted, but why though?

Sorting uses comparison at the heart of its operation. Sorting uses the `<=>` 
method to determine how a collection should be sorted. If an object does not 
implement a `<=>` method, it cannot be sorted. `<=>` returns `-1`, `0`, or `1` 
depending on whether the first object is less than, equal to, or greater than 
the second object. If the two objects cannot be compared, `nil` is returned. 

Ruby has two basic sorting methods:
- `sort`: If called without a block, sorts the collection by the default result 
of `<=>`. A block with two parameters can be passed as an argument into `sort` 
to give more control over the sorting algorithm. The block must return `-1`, `0`, 
`1`, or nil. One could reverse the sorting algorithm by passing in a block who 
has `b <=> a` in its block.
- `Enumerable#sort_by`: Usually called with a block. The block determines how the 
items of the collection are compared. 
- `Array#sort!`: A mutating version of `sort`.
- `Array#sort_by!`: A mutating version of `Enumerable#sort_by`. 

## Passing blocks to iterative methods
There are several iterative methods. These methods are called from a collection, 
and are passed a block as an argument. The block is used to determine the criteria 
for selection or transformation. Blocks can initialize parameters to pass elements 
from the collection to the block. 

- `#each`: Used for iteration. loops once for every element in a collection and 
passes the elements, one at a time, to the block. Returns self.
- `#select`: Used for selection. Passes every element into a block. Uses the 
truthiness return of the block to create a new array with all elements whose 
values create a truthy block.
- `#map`: Used for transformation. Returns a new array whose values are the 
return value of the block. 
- `Enumerable#any?`: If any iteration's block returns a truthy value, returns true, 
false otherwise.
- `Enumerable#all?`: If every iteration's block returns a truthy value, returns true, 
false otherwise.
- `Enumerable#each_with_index`: Identical to `each`, but passes the index of the 
iteration to a second parameter.
- `Enumerable#first`: Does not take a block. returns the first index if no 
arguments or given, or the first argument indexes of the array.
- `Enumerable#inclue?`: Does not take a block, but requires one argument. Returns 
true if the argument exists in the collection, false otherwise. When called on a 
hash, only compares against keys.
- `Enumerable#partition`: divides the collection into two parts based on the 
block's truthy return value. Returns a nested array, true array first, then false 
array. Often used with parallel assignment to pass the two arrays to their own 
variables. Passes hash key-value pairs as 2 element arrays. Can use `Array#to_h` 
to return them to a hash.

## Shallow copy vs. deep copy
Ruby has two methods to make a copy of an object, `dup` and `clone`. Both these 
methods create a shallow copy. A shallow copy creates a new main object, but if 
that object contains other objects, those objects are shared. Mutating a shallow 
copied collection does not affect both copies, but mutating the elements in a shallow 
copied collection does.

`clone` preserves the frozen state of the object, but `dup` does not. Freezing 
prevents an object from being modified. Immutable objects, like integers, are 
already frozen. Freezing only affects the object it's called on. Objects contained 
within the object can be mutated still. 

A deep copy would create new objects for all levels of an object, so mutation could 
never affect the original object. Ruby does not have any built-in ways of creating 
a deep copy of an object. 

## Method Chaining
All methods in ruby return an object. That object can become a caller to a 
method. Ruby allows us to continuously call methods, called chaining. 

Ex: `(1..10).to_a[0, 3][2]`

In this example, `to_a` is called on a range, which returns an array, that array 
calls `[0, 3]` which returns an array, which calls `[2]` which returns an integer. 

