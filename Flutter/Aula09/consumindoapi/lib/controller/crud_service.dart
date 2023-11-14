import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CrudService {
  Future<bool> inserirProduto({
    required String tipo,
    required String nome,
    required double preco,
    required String alt,
    required String imagemURL,
  }) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      // aqui vamos colocar a chamada da api
      var url = Uri.parse('http://192.168.15.5:1337/api/produtos/');

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      var jwt = prefs.getString("JWT") ?? "";

      var auth = {
        "Authorization": "bearer " + jwt,
        "Content-Type": "application/json",
      };

      Map novoProduto = {
        "data": {
          "tipo": tipo,
          "nome": nome,
          "alt": alt,
          "preco": preco,
          "imagemURL": imagemURL
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
      var url = Uri.parse('http://192.168.15.5:1337/api/produtos/' + produtoID);

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

  Future<bool> editarProduto({
    required String produtoID,
    required String tipo,
    required String nome,
    required double preco,
    required String alt,
    required String imagemURL,
  }) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      // aqui vamos colocar a chamada da api
      var url = Uri.parse('http://192.168.15.5:1337/api/produtos/' + produtoID);

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      var jwt = prefs.getString("JWT") ?? "";

      var auth = {
        "Authorization": "bearer " + jwt,
        "Content-Type": "application/json",
      };

      Map produtoEditado = {
        "data": {
          "tipo": tipo,
          "nome": nome,
          "alt": alt,
          "preco": preco,
          "imagemURL": imagemURL,
        }
      };

      var response = await http.put(url,
          headers: Map.from(auth), body: json.encode(produtoEditado));

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
}
