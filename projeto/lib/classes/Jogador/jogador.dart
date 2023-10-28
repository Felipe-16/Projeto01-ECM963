import 'dart:io';
import '../Dados/dado.dart';
class Players {
  final List<Dado> dados = List.generate(1, (_) => Dado());

  String player() {
    String nomeJogador;
    stdout.write('Nome do jogador? ');
    nomeJogador = (stdin.readLineSync()!);
    return nomeJogador;
  }
}
