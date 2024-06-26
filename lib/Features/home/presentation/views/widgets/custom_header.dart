import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Current Spot',
                    style: Styles.textStyleSemiBold12,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset(kLocationIcon),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Lorem Ipsum Street, No. 1',
                        style: Styles.textStyleBold14,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset('assets/images/arrow_drop_down.svg')
                    ],
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset('assets/images/Card-Icon Copy.svg'),
              const SizedBox(width: 5),
              Flexible(
                flex: 3,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 84,
                  height: 54,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}