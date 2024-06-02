import 'package:flutter/material.dart';

class IntroScreenPageView extends StatelessWidget {
  const IntroScreenPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(itemBuilder: (BuildContext context, int index) {  },);
  }
}