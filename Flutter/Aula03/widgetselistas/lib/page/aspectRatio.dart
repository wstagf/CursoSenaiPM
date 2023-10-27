import 'package:flutter/material.dart';

class ApectRatioPage extends StatefulWidget {
  const ApectRatioPage({super.key});

  @override
  State<ApectRatioPage> createState() => _ApectRatioPageState();
}

class _ApectRatioPageState extends State<ApectRatioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
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
      ),
    );
  }
}
