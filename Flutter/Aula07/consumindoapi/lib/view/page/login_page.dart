import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  InputDecoration estilo = const InputDecoration(
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
              TextFormField(decoration: estilo),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Senha',
                style: TextStyle(fontSize: 16),
              ),
              TextFormField(decoration: estilo),
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
