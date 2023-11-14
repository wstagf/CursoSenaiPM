import 'package:flutter/material.dart';

class ModalCrudProduto extends StatefulWidget {
  const ModalCrudProduto({super.key});

  @override
  State<ModalCrudProduto> createState() => _ModalCrudProdutoState();
}

class _ModalCrudProdutoState extends State<ModalCrudProduto> {
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorAlt = TextEditingController();
  TextEditingController controladorPreco = TextEditingController();
  TextEditingController controladorTipo = TextEditingController();
  TextEditingController controladorImagemURL = TextEditingController();

  InputDecoration estiloTexto = const InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(46, 125, 50, 1),
        width: 2.0,
      ),
    ),
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: Colors.green),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  print('vamos adicionar');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green[800],
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                      child: Text(
                    'Adicionar',
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
