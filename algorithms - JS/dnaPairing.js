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

const pair = pairElement("GCG");
console.log(pair);
