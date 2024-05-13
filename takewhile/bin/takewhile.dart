void main() {
  const numbers = [1, 3, -2, 0, 4, 5];

  // Tomar los números hasta llegar a un número negativo.
  var numbersUntilNegative = numbers.takeWhile((number) => !number.isNegative);
  print('Números hasta llegar a un número negativo: $numbersUntilNegative');

  // Tomar los números hasta llegar a 0.
  var numbersUntilZero = numbers.takeWhile((number) => number != 0);
  print('Números hasta llegar a 0: $numbersUntilZero');

  // Saltar los números hasta llegar a 0 y tomar el resto.
  var numbersStartingAtZero = numbers.skipWhile((number) => number != 0);
  print('Números a partir de 0: $numbersStartingAtZero');
}
