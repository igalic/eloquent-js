String::repeat = (times) ->
  new Array(times + 1).join(this) # still unhappy about "this" ;)


for i in [1..7]
  console.log '#'.repeat(i)
