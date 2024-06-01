import 'package:dikkan/Core/utils/assets.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroductionViewBody extends StatefulWidget {
  const IntroductionViewBody({super.key});

  @override
  State<IntroductionViewBody> createState() => _IntroductionViewBodyState();
}

class _IntroductionViewBodyState extends State<IntroductionViewBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 365,
            width: 365,
            child: SvgPicture.asset('assets/images/intro_image_1.svg'),
          ),
          Container(
            color: Colors.blue,
            height: 331,
            width: 365,
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Delicious Deliveries, \nRight at Your Doorstep!',
                  style: Styles.textStyle24.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Explore a World of Culinary Delights, \nDelivered Fast and Fresh!',
                  style: Styles.textStyle16.copyWith(color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
