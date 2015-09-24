# deep equality

arrayEql = (left, right) ->
  for num, i in left
    return false unless num == right[i]
  return true

objEql = (left, right) ->
  return false

eql = (left, right) ->
  return true if left == right
  return false if typeof left != typeof right
  return false if typeof left == 'function' # for now
  return false if left.length != right.length
  return arrayEql(left, right) if Array.isArray(left)
  return deepEql(left, right) if typeof left == 'object'
  return false
