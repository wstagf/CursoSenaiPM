import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CrudService {
  Future<bool> inserirProduto() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      // aqui vamos colocar a chamada da api
      var url = Uri.parse('http://192.168.15.4:1337/api/produtos/');

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      var jwt = prefs.getString("JWT") ?? "";

      var auth = {
        "Authorization": "bearer " + jwt,
        "Content-Type": "application/json",
      };

      Map novoProduto = {
        "data": {
          "tipo": "capacete",
          "nome": "novo Capacete",
          "alt": "novo Capacete",
          "preco": 1,
          "imagemURL": "assets/images/capacete01.png"
        }
      };

      var response = await http.post(url,
          headers: Map.from(auth), body: json.encode(novoProduto));

      if (response.statusCode != 200) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> excluirProduto({required String produtoID}) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      // aqui vamos colocar a chamada da api
      var url = Uri.parse('http://192.168.15.4:1337/api/produtos/' + produtoID);

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      var jwt = prefs.getString("JWT") ?? "";

      var auth = {"Authorization": "bearer " + jwt};

      var response = await http.delete(url, headers: Map.from(auth));

      if (response.statusCode != 200) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> editarProduto() async {
    await Future.delayed(Duration(seconds: 2));
    // aqui vamos colocar a chamada da api
    var sucesso = true;
    if (sucesso) {
      return true;
    } else {
      return false;
    }
  }
}
