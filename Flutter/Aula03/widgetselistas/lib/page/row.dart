import 'package:flutter/material.dart';

class RowWidgetPage extends StatelessWidget {
  const RowWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center, // define alinhamento no eixo vertical
        mainAxisAlignment:
            MainAxisAlignment.center, // define alinhamento no eixo horizontal
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("aaaa"),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Text("aaaa"),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
