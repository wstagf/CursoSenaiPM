void main(List<String> args) {
  var idade = 15;

  if (idade < 16) {
    print("Não vota");
  } else if (idade < 18) {
    print("Voto Opcional");
  } else if (idade < 60) {
    print("Voto obrigatorio");
  } else {
    print("Voto Opcional");
  }

  var opcao = 77;

  switch (opcao) {
    case 0:
      print("Opcao 0");
      break;
    case 1:
      print("Opcao 1");
      break;
    case 2:
      print("Opcao 2");
      break;
    default:
      print("Opcao Invalida");
      break;
  }
}
