import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Features/introduction/data/models/intro_model.dart';
import 'package:dikkan/Features/introduction/presentation/views/widgets/custom_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroductionViewBody extends StatefulWidget {
  const IntroductionViewBody({super.key});

  @override
  State<IntroductionViewBody> createState() => _IntroductionViewBodyState();
}

final item = [
  IntroModel(
    title: 'Delicious Deliveries, \nRight at Your Doorstep!',
    description:
        'Explore a World of Culinary Delights, \nDelivered Fast and Fresh!',
    image: 'assets/images/intro_image_1.svg',
  ),
  IntroModel(
    title: 'Delicious Deliveries,',
    description: 'Explore a World of Culinary Delights,',
    image: 'assets/images/intro_image_1.svg',
  ),
  IntroModel(
    title: 'Delicious Deliveries,',
    description: 'Explore a World of Culinary Delights,',
    image: 'assets/images/intro_image_1.svg',
  ),
];

class _IntroductionViewBodyState extends State<IntroductionViewBody> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemCount: item.length,
              itemBuilder: (BuildContext context, int index) {
                return OnBoardContent(
                  image: item[index].image,
                  title: item[index].title,
                  description: item[index].description,
                  selectedIndex: selectedIndex,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.selectedIndex,
  });

  final String image, title, description;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 365,
          width: 365,
          child: SvgPicture.asset(image),
        ),
        const SizedBox(
          height: 48,
        ),
        Container(
          // color: Colors.white,
          height: 331,
          width: 365,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  item.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CustomDots(isActive: selectedIndex == index),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                textAlign: TextAlign.center,
                title,
                // 'Delicious Deliveries, \nRight at Your Doorstep!',
                style: Styles.textStyle24.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                textAlign: TextAlign.center,
                description,
                // 'Explore a World of Culinary Delights, \nDelivered Fast and Fresh!',
                style: Styles.textStyle16.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomButton(
                text: 'Get Started',
              )
            ],
          ),
        )
      ],
    );
  }
}
