function diffArray(arr1, arr2) {
  const mergeArr = arr1.concat(arr2);
  var newArr = [];
  mergeArr.filter((a) => {
    mergeArr.indexOf(a, mergeArr.indexOf(a)+1) === -1 ? newArr.push(a) : newArr;
  })
  return newArr;
}
