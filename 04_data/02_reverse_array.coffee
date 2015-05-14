
reverseArray = (ar) ->
  ra = []
  len = ar.length
  while len--
    ra.push(ar[len])
  return ra

# well, this is not pretty..
reverseArrayInPlace = (ar) ->
  ra = []
  len = ar.length
  i = 0
  while len--
    ar[i] = ar[len]
    i++

a = [1, 2, 4, 8]
r = reverseArray(a)
console.log(r)
reverseArrayInPlace(a)
console.log(a)
