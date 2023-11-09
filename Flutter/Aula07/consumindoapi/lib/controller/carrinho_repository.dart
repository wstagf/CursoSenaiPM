import 'package:bibliotecaoop/model/item_carrinho.dart';

import '../model/produto_model.dart';

class CarrinhoRepository {
  List<ItemCarrinho> carrinho = [];

  void adicionar({required ProdutoModel novoProduto}) {
    print('adicionando o produto');
    print(novoProduto);
    ItemCarrinho item = ItemCarrinho(produto: novoProduto, quantidade: 1);
    carrinho.add(item);
  }

  void remover({required ProdutoModel produto}) {
    print('removendo o produto');
  }

  double calcularTotalCarrinho() {
    double valor = 0.0;

    carrinho.forEach((element) {
      valor = valor + (element.quantidade * element.produto.preco);
    });

    return valor;
  }

  String retornaValorTotalCarrinhoFormatado() {
    return "R\$ ${calcularTotalCarrinho().toStringAsFixed(2).replaceAll(".", ",")}";
  }
}
