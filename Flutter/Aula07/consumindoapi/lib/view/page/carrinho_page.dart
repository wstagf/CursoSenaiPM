import 'package:flutter/material.dart';

import '../../controller/carrinho_repository.dart';
import '../widgets/produto_widget.dart';

class CarrinhoPage extends StatefulWidget {
  CarrinhoRepository carrinhoRecebidoPorParametro = CarrinhoRepository();
  Function funcaoRecarregar;
  CarrinhoPage({
    super.key,
    required this.carrinhoRecebidoPorParametro,
    required this.funcaoRecarregar,
  });

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho de compras'),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.monetization_on),
                Text(
                  widget.carrinhoRecebidoPorParametro
                      .retornaValorTotalCarrinhoFormatado(),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          // Container(
          //   color: Colors.white,
          //   width: MediaQuery.of(context).size.width,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           children: [
          //             Icon(Icons.shopping_cart),
          //             Text('1'),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          widget.carrinhoRecebidoPorParametro.carrinho.isEmpty
              ? Center(
                  child: Column(
                    children: [
                      Text('Neste carrinho não existe itens adicionados.'),
                      GestureDetector(
                        onTap: () {
                          print('clicou');
                        },
                        child: Text('adicione um item agora mesmo'),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount:
                        widget.carrinhoRecebidoPorParametro.carrinho.length,
                    itemBuilder: (ctx, index) {
                      var item = widget
                          .carrinhoRecebidoPorParametro.carrinho[index].produto;
                      return Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          ProdutoWidget(
                            origem: "carrinho",
                            produto: item,
                            acaoComprar: () {},
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.carrinhoRecebidoPorParametro.remover(
                                  produtoQueDesejamosExcluir: item,
                                );
                              });
                              widget.funcaoRecarregar();
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 50,
                              width: 50,
                              child: const Icon(
                                Icons.close,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
