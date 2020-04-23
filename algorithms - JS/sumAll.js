// Use Arithmetic Progression summing formula.
function sumAll(arr) {
  const start = arr[0];
  const end = arr[1];
  const count = Math.abs(start - end) + 1;

  const sum = ((start + end) * count) / 2;
  return sum;
}

// Use linear approach.
/*function sumAll(arr) {
  let min = Math.min(...arr);
  let sum = min;
  const max = Math.max(...arr)
  for(let i = min+1; i <= max; i++) {
    sum += i;
  }
  return sum;
}*/
