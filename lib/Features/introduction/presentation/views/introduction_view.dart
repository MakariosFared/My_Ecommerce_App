import 'package:dikkan/Features/introduction/presentation/views/widgets/introduction_view_body.dart';
import 'package:flutter/material.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: IntroductionViewBody()),
    );
  }
}
