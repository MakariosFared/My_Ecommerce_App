import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  // @override
  // void initState() {
  //   super.initState();
  //   // initSlidingAnimation();

  //   navigateToHome();
  // }

  void initState() {
  super.initState();

  animationController = AnimationController(
    duration: const Duration(seconds: 2), // Change this to your desired duration
    vsync: this,
  );

  slidingAnimation = Tween<Offset>(
    begin: const Offset(0.0, -1.0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    ),
  );

  animationController.forward().then((_) => navigateToHome());
}

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

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
      ],
    );
  }


  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        GoRouter.of(context).push(AppRouter.kIntroductionView);
        
      },
    );
  }
}
