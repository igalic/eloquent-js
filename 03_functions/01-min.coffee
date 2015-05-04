min = (a, b) ->
  return if a > b then a else b

console.log min(0, 10)
console.log min(0, -10)
console.log min(-20, -20)
