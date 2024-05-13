bool anyUserUnder18(Iterable<User> users) {
  return users.any((user) => user.age < 18);
}

bool everyUserOver13(Iterable<User> users) {
  return users.every((user) => user.age > 13);
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
    User('David', 14),
  ];

  try {
    final out = anyUserUnder18(users);
    if (!out) {
      print(
          'Parece que `anyUserUnder18` está incorrecto. ¡Sigue intentándolo!');
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `anyUserUnder18`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
        'Se intentó ejecutar `anyUserUnder18`, pero se recibió una excepción: $e');
    return;
  }

  try {
    // con solo un usuario mayor de 18, debería ser falso
    final out = anyUserUnder18([User('Alice', 21)]);
    if (out) {
      print(
          'Parece que `anyUserUnder18` está incorrecto. ¿Qué pasa si todos los usuarios tienen más de 18 años?');
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `anyUserUnder18`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
      'Se intentó ejecutar `anyUserUnder18([User("Alice", 21)])`, '
      'pero se recibió una excepción: $e',
    );
    return;
  }

  try {
    final out = everyUserOver13(users);
    if (!out) {
      print(
        'Parece que `everyUserOver13` está incorrecto. '
        '¡No hay usuarios menores de 13 años!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `everyUserOver13`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
      'Se intentó ejecutar `everyUserOver13`, '
      'pero se recibió una excepción: $e',
    );
    return;
  }

  try {
    final out = everyUserOver13([User('Dan', 12)]);
    if (out) {
      print(
        'Parece que `everyUserOver13` está incorrecto. '
        '¡Hay al menos un usuario menor de 13 años!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `everyUserOver13`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
      'Se intentó ejecutar `everyUserOver13([User(\'Dan\', 12)])`, '
      'pero se recibió una excepción: $e',
    );
    return;
  }

  print('Éxito. ¡Todo Correcto________ :)!');
}
