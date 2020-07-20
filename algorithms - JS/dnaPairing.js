function pairElement(str) {
  const dna = [['A', 'T'], ['T', 'A'], ['C', 'G'], ['G', 'C']]
  const newDna = []
  str.split('').map(itm => {
    switch(itm) {
      case 'A':
        newDna.push(['A', 'T'])
        break
      case 'T':
        newDna.push(['T', 'A'])
        break
      case 'C':
        newDna.push(['C', 'G'])
        break
      case 'G':
        newDna.push(['G', 'C'])
        break
      default:
        break
    }
  })
  return newDna;
}

function pairElement(str) {
  //create object for pair lookup
  var pairs = {
    A: "T",
    T: "A",
    C: "G",
    G: "C"
  };
  //split string into array of characters
  var arr = str.split("");
  //map character to array of character and matching pair
  return arr.map(x => [x, pairs[x]]);
}

const pair = pairElement("GCG");
console.log(pair);
