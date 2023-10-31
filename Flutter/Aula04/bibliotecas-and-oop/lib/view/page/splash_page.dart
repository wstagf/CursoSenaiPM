import 'package:flutter/material.dart';
import 'package:bibliotecaoop/page/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  int contador = 0;

  @override
  void initState() {
    super.initState();
    carregarDados();
    navegarParaHome();
  }

  Future<void> carregarDados() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      var x = prefs.getInt('minhachave');
      if (x != null) {
        contador = x;
      } else {
        contador = 0;
      }

      contador = prefs.getInt('minhachave') ?? 0;
    });
  }

  void increment() async {
    final SharedPreferences prefs = await _prefs;

    setState(() {
      contador = contador + 1;

      prefs.setInt('minhachave', contador);
    });
  }

  void navegarParaHome() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (ctx) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25.0),
        color: const Color(0xff33ffa1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              contador.toString(),
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 36,
              ),
            ),
            Text(
              'Nosso curso no ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 48,
              ),
            ),
            GestureDetector(
              onTap: () {
                increment();
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Image.asset('assets/images/logo-senai.png'),
              ),
            ),
            const CircularProgressIndicator(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
