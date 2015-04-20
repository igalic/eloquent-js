
for i in [1..100]

  if i % 3 is 0 and i % 5 is 0
    result = 'FizzBuzz'
  else if i % 3 is 0
    result = 'Fizz'
  else if i % 5 is 0
    result = 'Buzz'
  else
    result = i

  console.log result
