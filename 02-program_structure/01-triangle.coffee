repeat = (n, string) ->
  new Array(n + 1).join(string) # More happy about this. ;)

console.log repeat(8, repeat(i, '#'))
