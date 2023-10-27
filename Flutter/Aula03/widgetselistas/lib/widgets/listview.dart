import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<String> materias = [
    'HTML',
    'CSS',
    'JAVASCRIPT',
    'PHP',
    'LARAVEL',
    'WORDPRESS',
    'WOOCOMMERCE',
    'FLUTTER'
  ];

  @override
  Widget build(BuildContext context) {
    // ao invez de colocar cada item desta maneira
    //   return SafeArea(
    //     child: Column(
    //       children: [
    //         Text(
    //           materias[0],
    //         ),
    //         Text(
    //           materias[1],
    //         ),
    //         Text(
    //           materias[2],
    //         )
    //       ],
    //     ),
    //   );
    // }

    // utilizamos com o list view
    return ListView.builder(
      itemCount: materias.length,
      itemBuilder: (ctx, index) {
        return Text(materias[index]);
      },
    );
  }
}
