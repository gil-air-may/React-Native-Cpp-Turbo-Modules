const CppTurbo = require('./NativeCppTurbo').default;

export function multiply(a: number, b: number): number {
  return CppTurbo.multiply(a, b);
}

export function reverseString(input: string): string {
  return CppTurbo.reverseString(input);
}

export function getObjectFromCpp(): Object {
  return CppTurbo.getObjectFromCpp();
}
