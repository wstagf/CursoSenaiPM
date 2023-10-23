void main(List<String> args) {
  double soma(double numero1, double numero2) {
    return numero1 + numero2;
  }

  String nomeCompleto(String nome, String sobrenome) {
    return nome + " " + sobrenome;
  }

  print(soma(40.0, 40));

  print(nomeCompleto("thiago", "augusto"));
}
