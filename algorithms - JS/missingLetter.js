function fearNotLetter(str) {
  const alph = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
    'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
    's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
  ]

  const firstLetter = alph.indexOf(str[0])
  const lastLetter = alph.indexOf(str[str.length - 1])
  const alphExcerpt = alph.slice(firstLetter, lastLetter)
  const omitLetter = alphExcerpt.filter(letter => !str.includes(letter))
  return omitLetter.length ? omitLetter.join('') : undefined;
}

console.log(fearNotLetter("abce"));
console.log(fearNotLetter("abcdefghjklmno"));
console.log(fearNotLetter("stvwx"));
console.log(fearNotLetter("abcdefghijklmnopqrstuvwxyz"));
