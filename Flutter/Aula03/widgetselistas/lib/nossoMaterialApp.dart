import 'package:flutter/material.dart';
import 'package:widgetselistas/widgets/sizedbox.dart';

import 'homePage.dart';
import 'widgets/aspectRatio.dart';
import 'widgets/center.dart';
import 'widgets/column.dart';
import 'widgets/container.dart';
import 'widgets/expanded.dart';
import 'widgets/padding.dart';
import 'widgets/row.dart';
import 'widgets/safeArea.dart';
import 'widgets/scaffold.dart';
import 'widgets/singleChildScrollView.dart';
import 'widgets/stack.dart';

class NossoMaterialApp extends StatelessWidget {
  const NossoMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aula 03",
      home: Material(
        child: ExpendedPage(),
      ),
    );
  }
}
