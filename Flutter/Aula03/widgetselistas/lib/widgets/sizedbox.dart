import 'package:flutter/material.dart';

class SizedboxPage extends StatelessWidget {
  const SizedboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.abc_outlined,
          size: 50,
        ),
        SizedBox(
          height: 300,
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: 50,
          ),
        ),
        Icon(
          Icons.arrow_back_outlined,
          size: 50,
        )
      ],
    );
  }
}
