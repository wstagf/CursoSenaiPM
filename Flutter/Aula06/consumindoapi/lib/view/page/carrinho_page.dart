import 'package:flutter/material.dart';

import '../../controller/carrinho_repository.dart';
import '../../controller/produto_repository.dart';
import '../widgets/produto_widget.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({super.key});

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  CarrinhoRepository carrinhoRepository = CarrinhoRepository();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho de compras'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.monetization_on),
                Text("R\$ 2500,00"),
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

          carrinhoRepository.carrinho.isEmpty
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
                    itemCount: carrinhoRepository.carrinho.length,
                    itemBuilder: (ctx, index) {
                      var item = carrinhoRepository.carrinho[index].produto;
                      return ProdutoWidget(
                        produto: item,
                        acaoComprar: () {},
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
