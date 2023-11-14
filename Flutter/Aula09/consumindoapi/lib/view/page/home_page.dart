import 'package:bibliotecaoop/view/page/carrinho_page.dart';
import 'package:bibliotecaoop/view/page/login_page.dart';
import 'package:flutter/material.dart';

import '../../controller/carrinho_repository.dart';
import '../../controller/produto_repository.dart';
import '../widgets/produto_widget.dart';
import 'area_administrativa.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;

  ProdutoRepository repository = ProdutoRepository();
  CarrinhoRepository carrinhoRepository = CarrinhoRepository();

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

  void navegarAreaAdministrativa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => AreaAdministrativaPage(
          repositoryRecebidoPorParametro: repository,
          funcaoRecarregar: () async {
            await repository.buscarProdutos();
            setState(() {});
          },
        ),
      ),
    ).then((value) async {
      await repository.buscarProdutos();
      setState(() {});
    });
  }

  void navegarLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => LoginPage(
            repositoryRecebidoPorParametro: repository,
            funcaoRecarregar: () async {
              await repository.buscarProdutos();
              setState(() {});
            },
          ),
        )).then((value) async {
      await repository.buscarProdutos();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja dos Motoqueiros'),
        leading: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext ctx) {
                return Container(
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'Essa área é para o adminsitrativo da loja cadastrar produtos',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          navegarLogin();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Fazer Login',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.settings),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => CarrinhoPage(
                      carrinhoRecebidoPorParametro: carrinhoRepository,
                      funcaoRecarregar: () {
                        setState(() {});
                      }),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  Text(carrinhoRepository.carrinho.length.toString()),
                ],
              ),
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
          isLoading == true
              ? const LinearProgressIndicator()
              : const SizedBox(
                  height: 4,
                ),
          (isLoading == false && repository.produtos.isEmpty)
              ? Center(
                  child: Column(
                    children: [
                      Text('Não já produtos cadastrados'),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoading = true;
                            repository.recarregarProdutos().then((value) {
                              setState(() {
                                isLoading = false;
                              });
                            });
                          });
                        },
                        child: Text('Recarregar novamente'),
                      ),
                    ],
                  ),
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
                        return ProdutoWidget(
                          origem: "home",
                          produto: item,
                          acaoComprar: () {
                            setState(() {
                              carrinhoRepository.adicionar(novoProduto: item);
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
