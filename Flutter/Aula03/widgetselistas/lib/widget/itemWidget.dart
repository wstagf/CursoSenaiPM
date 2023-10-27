import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  Widget page;
  final String texto;
  ItemWidget({super.key, required this.texto, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(texto);
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(25),
        color: Colors.grey[300],
        child: Center(child: Text(texto)),
      ),
    );
  }
}
