`[nil, 'bear']` is the return. `Enumerable#map` always returns an array. Since 
the last epression evaluated on the first element passed into `map` is `if`, it appends 
`nil` to the returned array. On the second element, since the result of `if` is `true`, 
the then part of the `if` statement is called and the last expression evaluated is 
`value`.
