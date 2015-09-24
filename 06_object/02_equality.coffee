# deep equality

arrayEql = (left, right) ->
  for e, i in left
    return false unless eql(e, right[i])
  return true

objEql = (left, right) ->
  for key, value of left
    return false unless eql(key, right[value])
  return true

eql = (left, right) ->
  return true if left == right
  return false if typeof left != typeof right
  return false if typeof left == 'function' # for now
  return false if left.length != right.length
  return arrayEql(left, right) if Array.isArray(left)
  return deepEql(left, right) if typeof left == 'object'
  return false
