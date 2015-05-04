// how to rewrite this to be recursive?
var countChar = function(s, c) {
  var count = 0;
  for (i = 0; i < s.length; i++) {
    if (s.charAt(i) === c) {
      count++;
    }
  }
  return count;
}

var countBs = function(s) {
  return countChar(s, 'B');
}

console.log(countBs("BBC"));
// → 2
console.log(countChar("kakkerlak", "k"));
// → 4
