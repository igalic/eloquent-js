for i in [0..8]
  line = ''
  for j in [0..8]
    line += if (i+j) % 2 is 0 then ' ' else '#'
  console.log line
