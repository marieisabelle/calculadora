export function add(a: number, b: number): number {
  return a + b;
}
export function sub(a: number, b: number): number {
  return a - b;
}
export function mul(a: number, b: number): number {
  return a * b;
}
export function div(a: number, b: number): number {
  if (b === 0) throw new Error("Divisão por zero não é permitida.");
  return a / b;
}

export function raiz(a: number, b: number): number {
  if (b === 0) throw new Error("O índice da raiz não pode ser zero.");
  return Math.pow(a, 1 / b);
}