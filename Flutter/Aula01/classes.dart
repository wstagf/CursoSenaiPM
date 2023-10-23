/* 
    isto é um comentario multiline




  */

class Animal {
  String nome;

  Animal({required this.nome}) {}

  String emitirSom() {
    return "Se comunicou";
  }
}

class AnimalMamifero {
  String nome;
  int? anos;

  // isto daqui é um comentario... single line

  // aqui incluimos o valor NOME DESCONHECIDO como default
  // caso o desenvolvedor não o coloque na lista de parametros
  // ao chamar a função.

  AnimalMamifero({this.nome = "Nome Desconhecido", this.anos}) {}

  String reproduzir(int dias) {
    if (dias < 60) {
      return "Nasceu Penininho";
    } else {
      return "Nasceu Normal";
    }
  }
}

void main(List<String> args) {
  Animal peixe = Animal(nome: "Pingo");
  AnimalMamifero gato = AnimalMamifero();

  print(peixe.nome);

  print(gato.nome);
  print(gato.anos);

  print(peixe.emitirSom());

  print(gato.reproduzir(30));
}
