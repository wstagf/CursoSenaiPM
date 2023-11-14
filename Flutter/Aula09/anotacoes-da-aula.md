

## Para executar o backend.

1. Acessar a pasta 'server'
2. executar o comando 'npm install'
3. executar o comando 'npm run develop'


dados de acesso de administrador:  
    usuario: alunos@cursosenaipm.com.br
    Senha: AlunosPMGO123#@!



aula 08




Biblioteca para armazenar o JWT do usuario..

https://pub.dev/packages/shared_preferences


  Future<bool> excluirProduto(int produtoID) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      await Future.delayed(const Duration(seconds: 2));

      var url = Uri.parse(
          'http://192.168.15.5:1337/api/produtos/' + produtoID.toString());
      var jwt = prefs.getString("JWT") ?? "";
      var header = {"Authorization": "bearer " + jwt};
      var response = await http.delete(url, headers: Map.from(header));
      var data = json.decode(response.body);

      if (true) {
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