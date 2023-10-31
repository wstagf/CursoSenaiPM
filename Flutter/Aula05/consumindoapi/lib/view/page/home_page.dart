import 'package:flutter/material.dart';

import '../../controller/produto_repository.dart';
import '../widgets/produto_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;

  ProdutoRepository repository = ProdutoRepository();

  @override
  void initState() {
    super.initState();
    carregarProdutos();
  }

  Future<void> carregarProdutos() async {
    await repository.buscarProdutos();
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja dos Motoqueiros'),
      ),
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          isLoading == true
              ? const LinearProgressIndicator()
              : const SizedBox(
                  height: 4,
                ),
          (isLoading == false && repository.produtos.isEmpty)
              ? const Center(
                  child: Text('Não já produtos cadastrados'),
                )
              : Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      setState(() {
                        isLoading = true;
                        repository.recarregarProdutos().then((value) {
                          setState(() {
                            isLoading = false;
                          });
                        });
                      });
                    },
                    child: ListView.builder(
                      itemCount: repository.produtos.length,
                      itemBuilder: (ctx, index) {
                        var item = repository.produtos[index];
                        return ProdutoWidget(produto: item);
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
