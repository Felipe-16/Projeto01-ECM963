import 'dart:io';
import '../Dados/dado.dart';

// TODO:
// 1. Remodelar a quantidades de dados que irao ser rolados
// 2. Melhorar a orientação a objetos

class Jogo {

  void jogo() {
    final jogadorDado = Dado(6);
    final maquinaDado = Dado(6);
    int jogadorScore = 0;
    int maquinaScore = 0;
    String jogar = 'sim';

    while (jogar == "sim") {

      stdout.write('Quantas rodadas você deseja jogar? ');
      int numRodadas = int.parse(stdin.readLineSync()!);

      for (int i = 0; i < numRodadas; i++) {
        int jogadorRoll = jogadorDado.rolar();
        print("Seu dado deu o valor: $jogadorRoll");
        int maquinaRoll = maquinaDado.rolar();
        print("Dado do oponente deu o valor: $maquinaRoll");

        jogadorScore += jogadorRoll;
        print("Soma Parcial: $jogadorScore");
        maquinaScore += maquinaRoll;
        print("soma Parcial: $maquinaScore");
      }

      print('Sua pontuação: $jogadorScore');
      print('Pontuação da máquina: $maquinaScore');

      if (jogadorScore > maquinaScore) {
        print('Você venceu!');
      } else if (maquinaScore > jogadorScore) {
        print('A máquina venceu!');
      } else {
        print('Empate!');
      }
      stdout.write('Quer jogar novamente?(Sim/Nao) ');
      jogar = (stdin.readLineSync()!).toLowerCase();
    }
  }
}
