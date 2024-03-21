The return is `11`. This is because first pop is called on the array, which removes 
the last element of an array, which then has `size` called on it. Because the last 
element of the array is a string, `size` returns the amount of characters in that string. 
In this case, `11`.
