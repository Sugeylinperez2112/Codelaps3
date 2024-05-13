bool checkLength(List<String> items) {
  for (final item in items) {
    if (item.length < 5) {
      return false;
    }
  }
  return true;
}

void main() {
  final items = ['Salad', 'Popcorn', 'Milk', 'Toast', 'Sugar'];
//Utilizando un bucle for
  final result = checkLength(items);
  print('¿Todos los elementos tienen una longitud mayor o igual a 5? $result');

  //Utilizando every
  items.every((item) => item.length >= 5);
  print('¿Longitud de 5 todos los elementos ? R: $result');
}
