import 'package:dikkan/Features/introduction/presentation/views/introduction_view.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DikkanApp());
}

class DikkanApp extends StatelessWidget {
  const DikkanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      // home: SplashView(),
      home: const IntroductionView(),
    );
  }
}
