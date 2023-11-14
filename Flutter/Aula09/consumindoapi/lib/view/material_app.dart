import 'package:flutter/material.dart';

import 'page/splash_page.dart';
import 'page/modal_crud_produto.dart';

class NossaMaterialApp extends StatelessWidget {
  const NossaMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
      ),
    );
  }
}
