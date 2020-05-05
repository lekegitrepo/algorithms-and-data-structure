function spinalCase(str) {
  const regx = /\s+|_+/g;
  const newStr = str.replace(/([a-z])([A-Z])/g, '$1 $2');
  return newStr.replace(regx, '-').toLowerCase();
}

console.log(spinalCase('thisIsSpinalTap'));
