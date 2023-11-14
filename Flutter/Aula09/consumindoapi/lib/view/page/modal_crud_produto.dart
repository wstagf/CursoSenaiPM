import 'package:bibliotecaoop/model/produto_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../controller/crud_service.dart';

class ModalCrudProduto extends StatefulWidget {
  ProdutoModel? produtoAtual;
  ModalCrudProduto({super.key, this.produtoAtual});

  @override
  State<ModalCrudProduto> createState() => _ModalCrudProdutoState();
}

class _ModalCrudProdutoState extends State<ModalCrudProduto> {
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorAlt = TextEditingController();
  TextEditingController controladorPreco = TextEditingController();
  TextEditingController controladorTipo = TextEditingController();
  TextEditingController controladorImagemURL = TextEditingController();
  CrudService service = CrudService();

  @override
  void initState() {
    if (widget.produtoAtual != null) {
      controladorNome.text = widget.produtoAtual!.nome;
      controladorAlt.text = widget.produtoAtual!.alt;

      controladorPreco.text = widget.produtoAtual!.preco.toString();
      controladorTipo.text = widget.produtoAtual!.tipo;
      controladorImagemURL.text = widget.produtoAtual!.imagemURL;
    }

    super.initState();
  }

  void funcaoAdicionar() {
    print('vamos adicionar');
    service
        .inserirProduto(
            alt: controladorAlt.text,
            imagemURL: controladorImagemURL.text,
            nome: controladorNome.text,
            preco: double.parse(controladorPreco.text),
            tipo: controladorTipo.text)
        .then((value) {
      if (value) {
        Fluttertoast.showToast(
          msg: "Produto Adicionado",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 18.0,
        );

        controladorNome.text = "";
        controladorAlt.text = "";
        controladorPreco.text = "";
        controladorTipo.text = "";
        controladorImagemURL.text = "";
      }
    });
  }

  void funcaoEditar() {
    service
        .editarProduto(
      produtoID: widget.produtoAtual!.id.toString(),
      alt: controladorAlt.text,
      imagemURL: controladorImagemURL.text,
      nome: controladorNome.text,
      preco: double.parse(controladorPreco.text),
      tipo: controladorTipo.text,
    )
        .then((value) {
      if (value) {
        Fluttertoast.showToast(
          msg: "Produto editado",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 18.0,
        );

        controladorNome.text = "";
        controladorAlt.text = "";
        controladorPreco.text = "";
        controladorTipo.text = "";
        controladorImagemURL.text = "";
      } else {
        Fluttertoast.showToast(
          msg: "Houve um erro ao editar o produto",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 18.0,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration estiloTexto = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: widget.produtoAtual == null ? Colors.orange : Colors.green,
          width: 2.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: widget.produtoAtual == null
              ? Color.fromARGB(255, 255, 98, 0)
              : Colors.green,
          width: 2.0,
        ),
      ),
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
        color: widget.produtoAtual == null ? Colors.orange : Colors.green,
      ),
    );

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: widget.produtoAtual == null
                ? Colors.orange[800]
                : Colors.green[800],
            title: widget.produtoAtual == null
                ? Text('Adicionando produto')
                : Text(
                    'Editando produto: ' + widget.produtoAtual!.id.toString()),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nome do produto'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: estiloTexto,
                    controller: controladorNome,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Texto Alternativo para o produto'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: estiloTexto,
                    controller: controladorAlt,
                    maxLines: 5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Preço do produto'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: estiloTexto,
                    controller: controladorPreco,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Tipo do produto'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: estiloTexto,
                    controller: controladorTipo,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Imagem do produto'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: estiloTexto,
                    controller: controladorImagemURL,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.produtoAtual == null) {
                        funcaoAdicionar();
                      } else {
                        funcaoEditar();
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: widget.produtoAtual == null
                          ? Colors.orange[800]
                          : Colors.green[800],
                      padding: const EdgeInsets.all(25),
                      child: Center(
                          child: Text(
                        widget.produtoAtual == null ? 'Adicionar' : 'Salvar',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
