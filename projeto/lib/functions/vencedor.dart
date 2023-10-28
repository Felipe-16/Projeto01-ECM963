void vencedor(int pontuacao1, int pontuacao2, nome1, nome2) {

  if(pontuacao1 > pontuacao2) {
    print("O ganhador final foi o $nome1 com $pontuacao1 vitorias sobre $pontuacao2 do $nome2");
  }else if(pontuacao2 > pontuacao1) {
    print("O ganhador final foi o $nome2 com $pontuacao2 vitorias sobre $pontuacao1 do $nome1");
  } else if (pontuacao2 == pontuacao1) {
    print('O jogo terminou empatado!!');
  }

}