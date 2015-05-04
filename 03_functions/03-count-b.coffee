countChar = (s, c) ->
  count = 0

  count++ for i in s when i is c
  return count

countBs = (s) ->
  return countChar(s, 'B')

console.log countBs("BBC")
# → 2
console.log countChar("kakkerlak", "k")
# → 4
