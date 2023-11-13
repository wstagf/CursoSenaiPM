import 'dart:convert';

import '../model/produto_model.dart';
import 'package:http/http.dart' as http;

class ProdutoService {
  Future<List<ProdutoModel>> buscaProdutosNaAPI() async {
    List<ProdutoModel> lista = [];
    try {
      var url = Uri.parse('http://192.168.15.5:1337/api/produtos/');
      var response = await http.get(url);
      var data = json.decode(response.body)['data'];

      for (var i = 0; i < data.length; i++) {
        ProdutoModel p = ProdutoModel(
          id: data[i]['id'],
          tipo: data[i]['attributes']['tipo'],
          nome: data[i]['attributes']['nome'],
          alt: data[i]['attributes']['alt'],
          preco: double.parse(data[i]['attributes']['preco'].toString()),
          imagemURL: data[i]['attributes']['imagemURL'],
        );

        lista.add(p);
      }

      return lista;
    } catch (e) {
      print(e);
      return lista;
    }
  }
}
