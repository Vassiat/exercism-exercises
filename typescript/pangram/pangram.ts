export function isPangram(str: string): boolean {
  return Array.from({ length: "z".charCodeAt(0) - "a".charCodeAt(0)}).map((_, i, arr) => {
    for (const char of str.toLowerCase().split("").map(c => c.charCodeAt(0))) {
      if ("a".charCodeAt(0) + i === char) {
        arr[i] = true;
      }
    }
    return arr[i];
  }).every((inAlphabet) => inAlphabet && inAlphabet === true);
}
