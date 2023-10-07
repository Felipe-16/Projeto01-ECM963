import 'dart:math';

// TODO: Implementar alguma função de 1 a 6
// para tirar aquele random+1

class Dado {
  final int lados;
  final Random _random = Random();

  Dado(this.lados);

  int rolar() {
    return _random.nextInt(lados) + 1;
  }
}
