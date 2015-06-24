
# deep equality of objects
#
deepEqual = (x, y) ->
  return true if x == y
  return false unless typeof x == 'object' and typeof y == 'object'
