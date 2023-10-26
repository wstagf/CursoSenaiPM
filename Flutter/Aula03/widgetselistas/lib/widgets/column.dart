import 'package:flutter/material.dart';

class ColumnWidgetPage extends StatelessWidget {
  const ColumnWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center, // define alinhamento no eixo horizontal
      mainAxisAlignment:
          MainAxisAlignment.center, // define alinhamento no eixo vertical
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
    );
  }
}
