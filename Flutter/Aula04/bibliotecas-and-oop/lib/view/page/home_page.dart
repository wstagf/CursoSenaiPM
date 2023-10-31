import 'package:flutter/material.dart';

import '../../controller/produto_repository.dart';
import '../widgets/produto_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProdutoRepository repository = ProdutoRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja dos Motoqueiros'),
      ),
      backgroundColor: Colors.greenAccent,
      body: ListView.builder(
        itemCount: repository.produtos.length,
        itemBuilder: (ctx, index) {
          var item = repository.produtos[index];
          return ProdutoWidget(produto: item);
        },
        // child: Column(
        //   children: [
        //
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //     ProdutoWidget(),
        //   ],
        // ),
      ),
    );
  }
}
