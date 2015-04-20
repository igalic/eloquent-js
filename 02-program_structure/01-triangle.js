String.prototype.repeat = function(times) {
   return (new Array(times + 1)).join(this);
};

for (i = 1; i <= 7; i++) {
  console.log('#'.repeat(i));
}
