import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.abc_outlined,
            size: 50,
          ),
          Icon(
            Icons.arrow_back_ios_outlined,
            size: 50,
          ),
          Icon(
            Icons.arrow_back_outlined,
            size: 50,
          )
        ],
      ),
    );
  }
}
