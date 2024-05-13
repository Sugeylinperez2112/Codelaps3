// Implementa la función singleWhere con los siguientes predicados:
// * El elemento contiene el carácter 'a'
// * El elemento comienza con el carácter 'M'

String singleWhere(Iterable<String> items) {
  return items.singleWhere(
      (elemento) => elemento.startsWith('M') && elemento.contains('a'));
}

void main() {
  const items = [
    'Salad',
    'Popcorn',
    'Milk',
    'Toast',
    'Sugar',
    'Mozzarella',
    'Tomato',
    'Egg',
    'Water',
  ];

  final str = singleWhere(items);
  print('__________________________________');
  print('Elemento con criterios: $str');

  try {
    final str = singleWhere(items);
    if (str == 'Mozzarella') {
      print('__________________________________');
      print('Éxito. ¡Todas las pruebas pasaron!');
      print('__________________________________');
    } else {
      print(
        'Se intentó llamar a singleWhere, pero se recibió $str en lugar de '
        'el valor esperado \'Mozzarella\'',
      );
    }
  } on StateError catch (stateError) {
    print(
      'Se intentó llamar a singleWhere, pero se recibió un StateError: ${stateError.message}. '
      'singleWhere fallará si 0 o más de 1 elementos cumplen el predicado.',
    );
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `singleWhere`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
  } catch (e) {
    print('Se intentó llamar a singleWhere, pero se recibió una excepción: $e');
  }
}
