for (i = 0; i < 8 ; i++) {
  var line = ''
  for (j = 0; j < 8 ; j++) {
    if ((i+j) % 2 === 0) {
      line += ' '; // white
    } else {
      line += '#'; // black
    }
  }
  console.log(line);
}
