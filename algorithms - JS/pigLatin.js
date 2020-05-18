function translatePigLatin(str) {
  const regexVowel = /[aeiou]/gi;
  let pigLatin = ''
  if (str[0].match(regexVowel)) {
    pigLatin = str.concat("way");
  } else if (str.match(regexVowel) === null) {
    pigLatin = str.concat("ay");
  } else {
    const vowelIndice = str.indexOf(str.match(regexVowel)[0]);
    pigLatin = str.substr(vowelIndice).concat(str.substr(0, vowelIndice) + "ay");
  }

  return pigLatin;
}

console.log(translatePigLatin("consonant"));
console.log(translatePigLatin("schwartz"));
