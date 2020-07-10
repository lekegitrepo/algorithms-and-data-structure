function insertionSort(arr) {
  for (let i = 1; i < arr.length; i++) {
    let postion = i;
    let temp_value = arr[i];

    while( postion > 0 && arr[postion - 1] > temp_value) {
      arr[postion] = arr[postion - 1]
      postion = postion - 1
    }
    arr[postion] = temp_value;
  }
  return arr;
}

const insert1 = insertionSort([3, 5, 2, 9, 3, 7, 9]);
const insert2 = insertionSort([3, 15, 200, 9, 3, 7, 9, 8, 10, 20]);
console.log(insert1);
console.log(insert2);
