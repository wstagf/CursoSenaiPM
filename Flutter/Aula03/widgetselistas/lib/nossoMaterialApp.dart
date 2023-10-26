import 'package:flutter/material.dart';

import 'homePage.dart';
import 'widgets/column.dart';
import 'widgets/row.dart';

class NossoMaterialApp extends StatelessWidget {
  const NossoMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aula 03",
      home: RowWidgetPage(),
    );
  }
}
