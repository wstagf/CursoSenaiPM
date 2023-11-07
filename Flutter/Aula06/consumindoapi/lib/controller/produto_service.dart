import 'dart:convert';

import '../model/produto_model.dart';
import 'package:http/http.dart' as http;

class ProdutoService {
  Future<List<ProdutoModel>> buscaProdutosNaAPI() async {
    List<ProdutoModel> lista = [];
    try {
      var url = Uri.parse(
          'https://run.mocky.io/v3/68cfd34d-3fb3-41c6-9725-39dba34c667d');
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
