import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/produto_model.dart';
import 'produto_service.dart';

class ProdutoRepository {
  List<ProdutoModel> produtos = [];
  ProdutoService service = ProdutoService();

  Future<void> buscarProdutos() async {
    // ... vai na api..

    await Future.delayed(const Duration(seconds: 0));

    List<ProdutoModel> listaRetorno = await service.buscaProdutosNaAPI();

    if (listaRetorno.isNotEmpty) {
      produtos = listaRetorno;
    } else {
      Fluttertoast.showToast(
        msg: "Houve um erro ao carregar os dados",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 18.0,
      );
    }
  }

  Future<void> recarregarProdutos() async {
    // ... vai na api..

    produtos = [];

    await Future.delayed(const Duration(seconds: 0));

    await buscarProdutos();
  }
}

/* 

    */

