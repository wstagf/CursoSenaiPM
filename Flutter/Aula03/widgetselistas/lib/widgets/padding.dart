import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  const PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
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
