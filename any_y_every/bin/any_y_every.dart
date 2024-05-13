void main() {
  const items = ['Ensalada', 'Palomitas', 'Tostada'];

  if (items.any((item) => item.contains('a'))) {
    print('Al menos un elemento contiene "a"');
  }

  if (items.every((item) => item.length >= 5)) {
    print('Todos los elementos tienen una longitud >= 5');
  }

  if (items.any((item) => item.contains('Z'))) {
    print('Al menos un elemento contiene "Z"');
  } else {
    print('Ningún elemento contiene "Z"');
  }
}
