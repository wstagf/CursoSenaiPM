import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../controller/produto_repository.dart';

class AreaAdministrativaPage extends StatefulWidget {
  Function funcaoRecarregar;
  ProdutoRepository repositoryRecebidoPorParametro = ProdutoRepository();

  AreaAdministrativaPage({
    super.key,
    required this.funcaoRecarregar,
    required this.repositoryRecebidoPorParametro,
  });

  @override
  State<AreaAdministrativaPage> createState() => _AreaAdministrativaPageState();
}

class _AreaAdministrativaPageState extends State<AreaAdministrativaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Área administrativa'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.orange[200],
              border: Border.all(
                  color: const Color.fromRGBO(255, 167, 38, 1),
                  width: 1.0,
                  style: BorderStyle.solid), //Border.all
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: widget.repositoryRecebidoPorParametro.produtos.length,
          itemBuilder: (ctx, index) {
            var item = widget.repositoryRecebidoPorParametro.produtos[index];
            return Container(
              color: Colors.grey[300],
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset(item.imagemURL),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              item.nome,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              maxLines: 1,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            item.precoFormatado,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue[200],
                                  border: Border.all(
                                      color:
                                          const Color.fromRGBO(66, 165, 245, 1),
                                      width: 1.0,
                                      style: BorderStyle.solid), //Border.all
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(Icons.delete),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green[200],
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          102, 187, 106, 1),
                                      width: 1.0,
                                      style: BorderStyle.solid), //Border.all
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(Icons.edit),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
