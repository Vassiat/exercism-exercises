export function isPangram(str: string): boolean {
  const alphabetRange = Array.from({ length: "z".charCodeAt(0) - "a".charCodeAt(0)});

  alphabetRange.map((_, i, arr) => {
    const alphabetChar = "a".charCodeAt(0) + i;

    for (const char of str.toLowerCase().split("").map(c => c.charCodeAt(0))) {
      if (alphabetChar === char) {
        arr[i] = true;
      }
    }
  });

  return alphabetRange.every(inAlphabet => inAlphabet === true);
}
