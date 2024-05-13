void main() {
  // Seleccionar los números pares de la lista.
  var evenNumbers = const [1, -2, 3, 42].where((number) => number.isEven);

  // Imprimir cada número par.
  for (final number in evenNumbers) {
    print('$number es par.');
  }

  // Verificar si hay números negativos en la lista de números pares.
  if (evenNumbers.any((number) => number.isNegative)) {
    print('La lista evenNumbers contiene números negativos.');
  }

  // Si ningún elemento satisface el predicado, la lista estará vacía.
  var largeNumbers = evenNumbers.where((number) => number > 1000);
  if (largeNumbers.isEmpty) {
    print('¡La lista largeNumbers está vacía!');
  }
}
