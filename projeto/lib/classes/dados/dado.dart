import 'dart:math';
class Dado {
  final int lados = 6;
  final Random _random = Random();

// Funcao que vai retornar uma lista com 3 valores
  List<int> rolar() {
    List<int> dados = [];

    for (int i = 0; i < 3; i++) {
      int rolada = _random.nextInt(lados) + 1;
      dados.add(rolada);
    }
    return dados;
  }
}
