import 'package:flutter/material.dart';

class ProdutoWidget extends StatelessWidget {
  const ProdutoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      child: Row(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          color: Colors.red,
        ),
        Expanded(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          color: Colors.blue,
        ))
      ]),
    );
  }
}
