class CrudService {
  Future<bool> inserirProduto() async {
    await Future.delayed(Duration(seconds: 2));
    // aqui vamos colocar a chamada da api
    var sucesso = true;
    if (sucesso) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> excluirProduto() async {
    await Future.delayed(Duration(seconds: 2));
    // aqui vamos colocar a chamada da api
    var sucesso = true;
    if (sucesso) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> editarProduto() async {
    await Future.delayed(Duration(seconds: 2));
    // aqui vamos colocar a chamada da api
    var sucesso = true;
    if (sucesso) {
      return true;
    } else {
      return false;
    }
  }
}
