import 'dart:convert';

import '../model/produto_model.dart';
import 'package:http/http.dart' as http;

class ProdutoService {
  Future<List<ProdutoModel>> buscaProdutosNaAPI() async {
    List<ProdutoModel> lista = [];
    try {
      var url = Uri.parse('http://192.168.15.5:1337/api/produtos/');
      var response = await http.get(url);

      lista = (json.decode(response.body) as List)
          .map((i) => ProdutoModel.fromMap(i))
          .toList();

      return lista;
    } catch (e) {
      print(e);
      return lista;
    }
  }
}
