function diffArray(arr1, arr2) {
  const mergeArr = arr1.concat(arr2);
  var newArr = [];
  mergeArr.filter((a) => {
    mergeArr.indexOf(a, mergeArr.indexOf(a)+1) === -1 ? newArr.push(a) : newArr;
  })
  return newArr;
}

// freecodecamp solution.
function diffArray(arr1, arr2) {
  return [...diff(arr1, arr2), ...diff(arr2, arr1)];

  function diff(a, b) {
    return a.filter(item => b.indexOf(item) === -1);
  }
}
