import { add, sub, mul, div } from "./calc.js";

const [, , op, aStr, bStr] = process.argv;

function usage() {
  console.log("Uso: npm start -- <operação> <a> <b>");
  console.log("Operações: add | sub | mul | div");
}

if (!op || aStr === undefined || bStr === undefined) {
  usage();
  process.exit(1);
}

const a = Number(aStr);
const b = Number(bStr);

if (Number.isNaN(a) || Number.isNaN(b)) {
  console.error("Erro: os operandos precisam ser números.");
  usage();
  process.exit(1);
}

switch (op) {
  case "add":
    console.log(add(a, b));
    break;
  case "sub":
    console.log(sub(a, b));
    break;
  case "mul":
    console.log(mul(a, b));
    break;
  case "div":
    console.log(div(a, b));
    break;
  default:
    console.error("Operação inválida. Use: add | sub | mul | div");
    usage();
    process.exit(1);
}

