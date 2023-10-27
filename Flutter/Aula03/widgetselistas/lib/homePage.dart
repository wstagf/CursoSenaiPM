import 'package:flutter/material.dart';
import 'package:widgetselistas/page/center.dart';
import 'package:widgetselistas/page/cicloDeVida.dart';
import 'package:widgetselistas/page/column.dart';
import 'package:widgetselistas/page/listview.dart';
import 'package:widgetselistas/page/padding.dart';
import 'package:widgetselistas/page/row.dart';
import 'package:widgetselistas/page/safeArea.dart';
import 'package:widgetselistas/page/singleChildScrollView.dart';
import 'package:widgetselistas/page/sizedbox.dart';
import 'package:widgetselistas/page/stack.dart';

import 'page/aspectRatio.dart';
import 'page/container.dart';
import 'page/expanded.dart';
import 'page/scaffold.dart';
import 'widget/itemWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina principal"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ItemWidget(
              texto: 'Aspect Ratio',
              page: ApectRatioPage(),
            ),
            ItemWidget(
              texto: 'Center',
              page: CenterPage(),
            ),
            ItemWidget(
              texto: 'Clico de vida',
              page: CilcoDeVidaPage(),
            ),
            ItemWidget(
              texto: 'Column',
              page: ColumnWidgetPage(),
            ),
            ItemWidget(
              texto: 'Container',
              page: ContainerPage(),
            ),
            ItemWidget(
              texto: 'Expanded',
              page: ExpendedPage(),
            ),
            ItemWidget(
              texto: 'ListView',
              page: ListViewPage(),
            ),
            ItemWidget(
              texto: 'Padding',
              page: PaddingPage(),
            ),
            ItemWidget(
              texto: 'Row',
              page: RowWidgetPage(),
            ),
            ItemWidget(
              texto: 'SafeArea',
              page: SafeAreaPage(),
            ),
            ItemWidget(
              texto: 'Scaffold',
              page: ScaffoldPage(),
            ),
            ItemWidget(
              texto: 'Single Child Scroll View',
              page: SingleChildScrollViewPage(),
            ),
            ItemWidget(
              texto: 'Sizedbox',
              page: SizedboxPage(),
            ),
            ItemWidget(
              texto: 'Stack',
              page: StackPage(),
            ),
          ],
        ),
      ),
    );
  }
}
