
every = (array, func) ->
  for e in array
    return false unless func e
  return true

some = (array, func) ->
  for e in array
    return true if func e
  return false

console.log every([NaN, NaN, NaN], isNaN)
# -> true
console.log every([NaN, NaN, 4], isNaN)
# -> false
console.log some([NaN, 3, 4], isNaN)
# -> true
console.log some([2, 3, 4], isNaN)
# -> false
