import 'dart:io';
import 'package:projeto/classes/Jogador/jogador.dart';
import 'package:projeto/functions/vencedor.dart';

void jogo() {
  Players jogador1 = Players();
  Players jogador2 = Players();
  int jogador1Score = 0;
  int jogador2Score = 0;
  int pontuacao1 = 0;
  int pontuacao2 = 0;
  int pontuacao3 = 0;
  String jogar = 'sim';
  String nome1 = jogador1.player();
  String nome2 = jogador2.player();

  while (jogar == "sim") {
    
    stdout.write('Quantas rodadas você deseja jogar? ');
    int numRodadas = int.parse(stdin.readLineSync()!);
    print('-' * 40);
    print('Rodada N° $numRodadas');
    print('-' * 40);

    for (int i = 0; i < numRodadas; i++) {
      List<int> jogador1Roll = jogador1.dados[0].rolar();
      List<int> jogador2Roll = jogador2.dados[0].rolar();

      print("Os dados do $nome1 deram: $jogador1Roll");
      print("Os dados do $nome2 deram: $jogador2Roll");

      int somaJogador1 = jogador1Roll.reduce((a, b) => a + b);
      print('Soma Parcial do $nome1: $somaJogador1');
      int somaJogador2 = jogador2Roll.reduce((a, b) => a + b);
      print('Soma Parcial do $nome2: $somaJogador2');
      jogador1Score += somaJogador1;
      jogador2Score += somaJogador2;
    }

    print('-' * 40);
    print('Pontuação Total do $nome1: $jogador1Score');
    print('Pontuação Total do $nome2: $jogador2Score');

    if (jogador1Score > jogador2Score) {
      pontuacao1 ++;
      print('$nome1 venceu!');
    } else if (jogador2Score > jogador1Score) {
      pontuacao2 ++;
      print('O $nome2 venceu!');
    } else {
      pontuacao3 ++;
      print('Empate!');
    }
    print('-' * 40);
    print ('O Placar está: $nome1 $pontuacao1 x $pontuacao2 $nome2 e $pontuacao3 empates');
    stdout.write('Quer jogar novamente?(Sim/Nao) ');
    jogar = (stdin.readLineSync()!).toLowerCase();
  }
  vencedor(pontuacao1, pontuacao2, nome1, nome2);
}
