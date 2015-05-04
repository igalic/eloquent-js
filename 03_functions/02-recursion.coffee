isEven = (n) ->
  x = Math.abs n
  return true  if (x == 0)
  return false if (x == 1)
  return isEven(x - 2)

console.log isEven(50)
# → true
console.log isEven(75)
# → false
console.log isEven(-1)
# → ??
