The block returns the result of the last expression in it. In this case, it is 
`num.odd?` which returns `true` of `false` based on `num`, the parameter of the block. 
The return value of `any?` is `true` or `false` depending on the return of the block 
on all elements of the array. If any of the elements cause the block to return 
`true`, `any?` returns `true`, otherwise it returns `false`. In this case, `any?` 
returns `true`.
