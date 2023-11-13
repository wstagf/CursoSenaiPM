import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  Future<bool> efetuarLogin({
    required String usuario,
    required String senha,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      var objLogin = {
        "identifier": usuario,
        "password": senha,
      };

      var url = Uri.parse('http://192.168.15.4:1337/api/auth/local');
      var response = await http.post(url, body: objLogin);
      var data = json.decode(response.body);

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      var jwt = data['jwt'];

      if (jwt != null && jwt != "") {
        await prefs.setString('JWT', jwt);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
