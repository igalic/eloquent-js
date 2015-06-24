
flatten = (ar) ->
  return ar.reduce (a, b) -> return a.concat b

arrays = [[1, 2, 3], [4, 5], [6]]
console.log flatten(arrays)
