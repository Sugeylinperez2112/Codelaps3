Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((user) => '${user.name} is ${user.age}');
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
  ];

  // Obtener las cadenas generadas y luego imprimirlas.
  final namesAndAges = getNameAndAges(users).toList();
  for (final item in namesAndAges) {
    print('');
    print(item);
    print('');
  }

  try {
    final out = getNameAndAges(users).toList();
    if (!_listEquals(out, ['Alice is 21', 'Bob is 17', 'Claire is 52'])) {
      print(
        'Parece que `getNameAndAges` está incorrecto. ¡Sigue intentándolo! '
        'La salida fue: $out',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `getNameAndAges`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print('Se intentó ejecutar la función, pero se recibió una excepción: $e');
    return;
  }

  print('Éxito!');
}

bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) return b == null;
  if (b == null || a.length != b.length) return false;
  for (var index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) return false;
  }
  return true;
}
