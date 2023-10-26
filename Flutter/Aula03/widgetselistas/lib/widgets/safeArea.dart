import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  const SafeAreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
