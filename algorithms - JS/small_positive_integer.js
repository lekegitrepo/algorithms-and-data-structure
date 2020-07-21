function solution(A) {
    // write your code in JavaScript (Node.js 8.9.4)
    let arrSort = A.sort(function(a, b){
      return a - b;
    })
    console.log(arrSort)
    let missingInt = arrSort[0];

    if (arrSort[arrSort.length - 1] <= 2) {
      return 1
    }

    if (arrSort.length == 1 && arrSort[arrSort.length - 1] > 2   ) {
      return arrSort[arrSort.length - 1] - 1;
    }

    let count = missingInt;

    for (let i = 1; i < arrSort.length; i++) {
      if (arrSort[i - 1] !== arrSort[i]) {
        //console.log(i, arrSort[i - 1], arrSort[i], count + 1)
        if (arrSort[i] !== missingInt + 1) {
          return missingInt + 1;
        }
        missingInt = arrSort[i];
      }
    }

    return missingInt + 1;
}

const solu0 = solution([1, 3, 6, 4, 1, 2])
const solu1 = solution([1, 2, 3])
const solu2 = solution([-1, -3])
const solu3 = solution([-3])
console.log(solu0, solu1, solu2, solu3);
