import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/produto_model.dart';

class ProdutoRepository {
  List<ProdutoModel> produtos = [];

  Future<void> buscarProdutos() async {
    // ... vai na api..

    await Future.delayed(const Duration(seconds: 3));

    var sucesso = true;

    if (sucesso == true) {
      produtos = [
        ProdutoModel(
          id: 1,
          nome: "Produto 001",
          alt: "Texto Alternativo do produto 001",
          imagemURL:
              "https://urbanhelmets.fbitsstatic.net/img/p/capacete-urban-bigbore-double-d-green-flake-vintage-110639/298272-9.jpg?w=1000&h=1000&v=no-change&qs=ignore",
          preco: 199.50,
          tipo: "Capacete",
        ),
        ProdutoModel(
          id: 2,
          nome: "Produto 002",
          alt: "Texto Alternativo do produto 002",
          imagemURL:
              "https://urbanhelmets.fbitsstatic.net/img/p/capacete-urban-desperado-double-d-live-green-110685/298339-1.jpg?w=1000&h=1000&v=no-change&qs=ignore",
          preco: 299.50,
          tipo: "Capacete",
        ),
        ProdutoModel(
          id: 3,
          nome: "Produto 003",
          alt: "Texto Alternativo do produto 003",
          imagemURL:
              "https://urbanhelmets.fbitsstatic.net/img/p/capacete-urban-sports-laranja-110919/299112-1.jpg?w=1000&h=1000&v=no-change&qs=ignore",
          preco: 399.50,
          tipo: "Capacete",
        ),
      ];
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

    await Future.delayed(const Duration(seconds: 1));

    await buscarProdutos();
  }
}

/* 

    */

