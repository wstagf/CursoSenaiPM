import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
              'Nosso curso no ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 48,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.asset('assets/images/logo-senai.png'),
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
