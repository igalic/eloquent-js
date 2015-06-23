arrayToList = (ar) ->
  return null if ar.length == 0
  rest = ar
  e = rest.shift()
  return { value: e, rest: arrayToList(rest) }

listToArray = (list) ->
  values = []
  values.push list.value
  rest = list.rest
  until rest == null
    values.push rest.value
    rest = rest.rest
  return values

nth = (list, index) ->
  return null if index < 0
  return list.value if index == 0
  return null if list.rest == null
  return nth(list.rest, index-1)

console.log arrayToList([1, 2, 3])
console.log listToArray(arrayToList([1, 2, 3]))
console.log nth(arrayToList([1, 2, 3, 4, 5]), 3)
