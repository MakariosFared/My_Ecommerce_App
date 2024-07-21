import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: kGreenColor,
          size: 12,
        ),
        const SizedBox(width: 3),
        Text(
          '4.6',
          style: Styles.textStyleSfProDisplayRegular12.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(34 Reviews)',
          style: Styles.textStyleSfProDisplayRegular12.copyWith(
            color: const Color(0xff8F9BB3),
          ),
        )
      ],
    );
  }
}