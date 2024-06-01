import 'package:dikkan/Features/introduction/presentation/views/introduction_view.dart';
import 'package:dikkan/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DikkanApp());
}

class DikkanApp extends StatelessWidget {
  const DikkanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashView(),
      home: IntroductionView(),
    );
  }
}
