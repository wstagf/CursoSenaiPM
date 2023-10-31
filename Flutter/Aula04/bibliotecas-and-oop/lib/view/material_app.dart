import 'package:flutter/material.dart';

import 'page/splash_page.dart';

class NossaMaterialApp extends StatelessWidget {
  const NossaMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
