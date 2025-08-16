import { describe, it, expect } from "vitest";
import { add, sub, mul, div, raiz } from "../src/calc";

describe("calculadora", () => {
  it("soma", () => {
    expect(add(2, 3)).toBe(5);
  });
  it("subtração", () => {
    expect(sub(5, 3)).toBe(2);
  });
  it("multiplicação", () => {
    expect(mul(4, 3)).toBe(12);
  });
  it("divisão", () => {
    expect(div(10, 2)).toBe(5);
  });
  it("divisão por zero", () => {
    expect(() => div(10, 0)).toThrow();
  });
  it("raiz", () => {
    expect(raiz(9, 2)).toBe(3);
  });
});

