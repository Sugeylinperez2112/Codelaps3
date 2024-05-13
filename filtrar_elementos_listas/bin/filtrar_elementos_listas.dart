Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((user) => user.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((user) => user.name.length <= 3);
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
    User('Dan', 12),
  ];

  try {
    final out = filterOutUnder21(users);
    if (out.any((user) => user.age < 21) || out.length != 2) {
      print(
        'Parece que `filterOutUnder21` está incorrecto, hay '
        'exactamente dos usuarios con edad menor a 21. ¡Sigue intentándolo!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `filterOutUnder21`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
      'Se intentó ejecutar `filterOutUnder21`, '
      'pero se recibió una excepción: ${e.runtimeType}',
    );
    return;
  }

  try {
    final out = findShortNamed(users);
    if (out.any((user) => user.name.length > 3) || out.length != 2) {
      print(
        'Parece que `findShortNamed` está incorrecto, hay '
        'exactamente dos usuarios con un nombre de tres letras. ¡Sigue intentándolo!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `findShortNamed`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
      'Se intentó ejecutar `findShortNamed`, '
      'pero se recibió una excepción: ${e.runtimeType}',
    );
    return;
  }

  print('Éxito. ¡Bien todo!');
}
