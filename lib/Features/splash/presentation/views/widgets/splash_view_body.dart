import 'package:dikkan/Core/utils/assets.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 166,
          width: 257,
        ),
        // GoRouter.of(context).push(OnBoardingView());
      ],
    );
    
  }
}
