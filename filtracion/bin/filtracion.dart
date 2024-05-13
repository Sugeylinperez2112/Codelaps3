void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var evenNumbers = numbers.where((number) => number.isEven);
  for (final number in evenNumbers) {
    print('$number es par');
  }
}
