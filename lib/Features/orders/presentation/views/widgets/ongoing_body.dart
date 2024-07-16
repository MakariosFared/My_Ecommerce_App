import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnGoingBody extends StatelessWidget {
  const OnGoingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Center(
            child: Opacity(
              opacity: 0.5,
              child: SvgPicture.asset(
                'assets/images/ongoing Photo.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.saturation,
                ),
              ),
            ),
          ),
        ),
        // const SizedBox(height: 20),
        Text(
          'Ongoing is Empty',
          style: Styles.textStyleSfProDisplayMedium16.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 40,
          ),
          child: Text(
            'You can go to Discover to add products.',
            style: Styles.textStyleSfProDisplayRegular15.copyWith(
              color: const Color(0xffACB1C0),
            ),
          ),
        ),
        SizedBox(
          width: 170,
          height: 44,
          child: CustomButton(
            borderRadius: BorderRadius.circular(10),
            text: 'Go Discover',
            onPressed: () {},
            style: Styles.textStyleSfProDisplayRegular15.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}
