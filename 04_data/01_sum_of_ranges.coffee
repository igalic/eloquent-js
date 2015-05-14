# This function returns an array filled with values from start, to end, in
# increments of step
#
# i really don't wanna write this function in Javascript.
# it's friggin awful.
range = (start, end, step = 1) ->
  return (x for x in [start..end] by step)

sum = (range) ->
  return range.reduce((a, b) -> return a + b)

r = range(13, 145, 16)
console.log(r)
console.log(sum(r))
