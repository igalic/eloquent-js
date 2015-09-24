# deep equality

eql = (left, right) ->
  objEql = (left, right) ->
    for key, value of left
      return false unless eql(key, right[value])
    return true

  arrayEql = (left, right) ->
    for e, i in left
      return false unless eql(e, right[i])
    return true

  return true if left == right
  return false if left.constructor.name != right.constructor.name
  return false if left.constructor.name == 'Function' # for now
  return false if left.length != right.length
  return arrayEql(left, right) if left.constructor.name == 'Array'
  return deepEql(left, right) if left.constructor.name == 'Object'
  return false
