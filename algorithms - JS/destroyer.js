function destroyer(arr, ...arg) {
  const ar = arr.filter(a => !arg.includes(a) )
  return ar;
}
