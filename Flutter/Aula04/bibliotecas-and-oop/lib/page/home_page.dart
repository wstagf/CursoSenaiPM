import 'package:flutter/material.dart';

import '../widgets/produto_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja dos Motoqueiros'),
      ),
      backgroundColor: Colors.greenAccent,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
            ProdutoWidget(),
          ],
        ),
      ),
    );
  }
}
