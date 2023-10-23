void main(List<String> args) {
  var listaNome =
      []; // lista dinamica, não obriga a respeitar um tipo. você pode colocar o que quiser

  List<int> numeros =
      []; // lista tipada.. só aceita adicionar itens do tipo específico

  numeros.add(2020);
  numeros.add(2021);
  numeros.add(2022);
  numeros.add(2023);
  numeros.add(2024);

  print(numeros);

  // faz uma ITERAÇÃO com os itens da lista
  // cada item é lido dentro do foreach atravez da variavel XTO
  numeros.forEach((XTO) {
    print('O ano de $XTO');
  });
}
