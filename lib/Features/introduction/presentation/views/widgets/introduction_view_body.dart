import 'package:dikkan/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionViewBody extends StatelessWidget {
  const IntroductionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showSkipButton: false,
      next: const Icon(Icons.arrow_forward),
      done: const Text('Get Started'),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: Colors.black,
        activeSize: const Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      onDone: () {
        print('Done! Navigating to SplashView');
      },
      pages: getIntroPages(),
    );
  }
}

getIntroPages() {
  return [
    PageViewModel(
      decoration: const PageDecoration(imageFlex: 3),
      titleWidget: const Text('Delicious Deliveries, Right at Your Doorstep!'),
      body: 'Explore a World of Culinary Delights, Delivered Fast and Fresh!',
      image: SvgPicture.asset('assets/images/intro_image_1.svg'),
    ),
    PageViewModel(
      decoration: const PageDecoration(imageFlex: 2),
      titleWidget: const Text('Delicious Deliveries, Right at Your Doorstep!'),
      body: 'Explore a World of Culinary Delights, Delivered Fast and Fresh!',
      image: SvgPicture.asset('assets/images/intro_image_2.svg'),
    ),
  ];
}
