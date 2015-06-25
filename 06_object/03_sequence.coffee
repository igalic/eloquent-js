class Sequence
  first: ->
  rest: ->

class ArraySeq extends Sequence
  constructor: (@seq) ->
  first: -> @seq[0]
  rest: ->
    x = @seq.slice()
    x.shift()
    return undefined if x.length == 0
    new ArraySeq(x)

class RangeSeq extends ArraySeq
  constructor: (from, to) -> @seq = [from..to]
  first: -> @seq[0]
  rest: ->
    x = @seq.slice()
    x.shift()
    return undefined if x.length == 0
    new RangeSeq(x[0], x[x.length-1])

logFive = (seq) ->
  until seq == undefined
    console.log seq.first()
    seq = seq.rest()

logFive(new ArraySeq([1, 2]))
# → 1
# → 2
logFive(new RangeSeq(100, 110))
# → 100
# → 101
# → 102
# → 103
# → 104
