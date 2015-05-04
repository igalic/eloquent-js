countChar = (s, c) ->
  return s.split(c).length - 1

countBs = (s) ->
  return countChar(s, 'B')

console.log countBs("BBC")
# → 2
console.log countChar("kakkerlak", "k")
# → 4
