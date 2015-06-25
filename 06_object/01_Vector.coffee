
class Vector
  constructor: (@x, @y) ->

  plus: (vector) ->
    new Vector @x + vector.x, @y + vector.y

  minus: (vector) ->
    new Vector @x - vector.x, @y - vector.y

  length: () ->
    Math.sqrt(@x*@x + @y*@y)

  toString: ->
    "Vector{x: " + @x + " y: " + @y + "}"

console.log(new Vector(1, 2).plus(new Vector(2, 3)))
# → Vector{x: 3, y: 5}
console.log new Vector(1, 2).minus(new Vector(2, 3))
# → Vector{x: -1, y: -1}
console.log(new Vector(3, 4).length())
# → 5


