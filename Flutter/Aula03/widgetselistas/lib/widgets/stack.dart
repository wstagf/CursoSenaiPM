import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional
          .center, // configura o alinhamento em ambos os eixos, horizontal e vertical
      children: [
        Container(
          height: 150,
          width: 150,
          color: Colors.red,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        )
      ],
    );
  }
}
