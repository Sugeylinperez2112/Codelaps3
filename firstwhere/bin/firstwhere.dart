bool predicate(String item) {
  return item.length > 5;
}

void main() {
  // Lista de elementos
  const items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];

  // Encontrar el primer elemento con una expresión simple:
  var foundItem1 = items.firstWhere((item) => item.length > 5);
  print(foundItem1); // Imprime 'Popcorn'

//Intenta usando un bloque de función:
  var foundItem2 = items.firstWhere((item) {
    return item.length > 5;
  });
  print(foundItem2); // Imprime 'Popcorn'

  // Pasar una referencia de función:
  var foundItem3 = items.firstWhere(predicate);
  print(foundItem3); // Imprime 'Popcorn'

  //  Puedes usar una función `orElse` en caso de que no se encuentre ningún valor!
  var foundItem4 = items.firstWhere(
    (item) => item.length > 10,
    orElse: () => 'None!',
  );
  print(foundItem4); // Imprime 'None!'
}
