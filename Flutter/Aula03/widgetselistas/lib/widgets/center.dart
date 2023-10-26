import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 500,
          width: 150,
          child: const Center(
            child: Text(
                'aaa'), // determina dentro do limite do pai.. // se o widget pai for o primiero filho de scaffold vai centralizar na tela toda...
          ),
        ),
      ],
    );
  }
}
