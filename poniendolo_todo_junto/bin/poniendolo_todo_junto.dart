Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((s) => EmailAddress(s));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => !isValidEmailAddress(email));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => isValidEmailAddress(email));
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress && address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() => 'EmailAddress{address: $address}';
}

void main() {
  const input = [
    'ali@gmail.com',
    'bobgmail.com',
    'cal@gmail.com',
  ];

  const correctInput = ['dash@gmail.com', 'sparky@gmail.com'];

  bool listEquals<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    for (var index = 0; index < a.length; index += 1) {
      if (a[index] != b[index]) return false;
    }
    return true;
  }

  final Iterable<EmailAddress> emails;
  final Iterable<EmailAddress> correctEmails;
  try {
    emails = parseEmailAddresses(input);
    correctEmails = parseEmailAddresses(correctInput);
    if (emails.isEmpty) {
      print(
        'Se intentó ejecutar `parseEmailAddresses`, pero se recibió una lista vacía.',
      );
      return;
    }
    if (!listEquals(emails.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('bobgmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Parece que `parseEmailAddresses` está incorrecto. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `parseEmailAddresses`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
      'Se intentó ejecutar `parseEmailAddresses`, '
      'pero se recibió una excepción: $e',
    );
    return;
  }

  try {
    final out = anyInvalidEmailAddress(emails);
    if (!out) {
      print(
        'Parece que `anyInvalidEmailAddress` está incorrecto. Keep trying! '
        'El resultado debería ser falso con al menos una dirección no válida.',
      );
      return;
    }
    final falseOut = anyInvalidEmailAddress(correctEmails);
    if (falseOut) {
      print(
        'Parece que `anyInvalidEmailAddress` está incorrecto. Keep trying! '
        'El resultado debería ser falso con todas las direcciones válidas.',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `anyInvalidEmailAddress`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
        'Se intentó ejecutar `anyInvalidEmailAddress`, pero se recibió una excepción: $e');
    return;
  }

  try {
    final valid = validEmailAddresses(emails);
    if (emails.isEmpty) {
      print(
          'Se intentó ejecutar `validEmailAddresses`, pero se recibió una lista vacía.');
      return;
    }
    if (!listEquals(valid.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Parece que `validEmailAddresses` está incorrecto. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Se intentó ejecutar `validEmailAddresses`, pero se recibió un error. '
      '¿Implementaste la función?',
    );
    return;
  } catch (e) {
    print(
      'Se intentó ejecutar `validEmailAddresses`, '
      'pero se recibió una excepción: $e',
    );
    return;
  }

  print('¡Trabajando perfectamente, todo corr3cto');

  // Imprimir las direcciones de correo electrónico y su validez
  print('\nDirecciones de correo electrónico y su validez:');
  for (final email in emails) {
    print('${email.address} es válida: ${isValidEmailAddress(email)}');
  }
}

bool isValidEmailAddress(EmailAddress email) {
  return email.address.contains('@');
}
