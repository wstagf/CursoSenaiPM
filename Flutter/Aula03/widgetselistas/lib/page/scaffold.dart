import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      floatingActionButton: GestureDetector(
        onTap: () {
          print('clicou');
        },
        child: Container(
          color: Colors.purple,
          height: 50,
          width: 50,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.red,
        height: 60,
      ),
    );
  }
}
