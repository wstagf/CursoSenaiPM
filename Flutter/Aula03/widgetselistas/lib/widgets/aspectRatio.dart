import 'package:flutter/material.dart';

class ApectRatioPage extends StatelessWidget {
  const ApectRatioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: 3 / 3,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
