void main(List<String> args) {
  double divisaoPosicional(double numero1, double numero2) {
    return numero1 / numero2;
  }

  String nomeCompletoPosicional(String nome, String sobrenome) {
    return nome + " " + sobrenome;
  }

  print(divisaoPosicional(40.0, 2));

  print(nomeCompletoPosicional(
    "augusto",
    "thiago",
  ));

  String nomeCompletoDeclarativo(
      {required String nome, required String sobrenome}) {
    return nome + " " + sobrenome;
  }

  print(nomeCompletoDeclarativo(
    sobrenome: "augusto 1",
    nome: "thiago",
  ));

  print(nomeCompletoDeclarativo(
    nome: "thiago",
    sobrenome: "augusto 2",
  ));

  String enderecoCompletoDeclarativo({
    required String logradoro,
    String complemento = "",
    String quadra = "",
    String lote = "",
    String numero = "",
    required String cidade,
  }) {
    return logradoro +
        " " +
        complemento +
        " " +
        quadra +
        " " +
        lote +
        " " +
        numero +
        " " +
        cidade;
  }

  print(enderecoCompletoDeclarativo(
    logradoro: "Avenida Goiás",
    cidade: "Goiania",
  ));

  print(enderecoCompletoDeclarativo(
    logradoro: "Avenida Goiás",
    lote: "14",
    quadra: "Q10",
    cidade: "Goiania",
  ));
}
