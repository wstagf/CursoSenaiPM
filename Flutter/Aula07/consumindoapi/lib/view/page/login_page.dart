import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisiblePassword = false;

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
    InputDecoration estiloSenha = InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(46, 125, 50, 1),
            width: 2.0,
          ),
        ),
        border: const OutlineInputBorder(),
        labelStyle: const TextStyle(color: Colors.green),
        suffix: GestureDetector(
          onTap: () {
            setState(() {
              isVisiblePassword = !isVisiblePassword;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(
              isVisiblePassword == false
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: Colors.black,
            ),
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: const Color(0xff33ffa1),
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        color: const Color(0xff33ffa1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset('assets/images/logo-senai.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Usuario',
                style: TextStyle(fontSize: 16),
              ),
              TextFormField(decoration: estiloTexto),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Senha',
                style: TextStyle(fontSize: 16),
              ),
              TextFormField(
                decoration: estiloSenha,
                obscureText: isVisiblePassword,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green[800],
                padding: const EdgeInsets.all(25),
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
