void main() {
  const numbers = [1, 2, 3, 4, 5];

  Iterable<String> output = numbers.map((number) => number.toString());

  print('Resultado después de convertir cada número a cadena:');
  for (final numberAsString in output) {
    print(numberAsString);
  }
}