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

  @override
  void initState() {
    super.initState();
    // initSlidingAnimation();

    navigateToHome();
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

  // void initSlidingAnimation() {
  //   animationController = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 1),
  //   );
  //   slidingAnimation =
  //       Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
  //           .animate(animationController);
  //   animationController.forward();
  // }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        GoRouter.of(context).push(AppRouter.kIntroductionView);
        
      },
    );
  }
}
