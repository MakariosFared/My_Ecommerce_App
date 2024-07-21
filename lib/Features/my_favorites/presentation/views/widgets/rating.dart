import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.rating,
    required this.count,
  });

  final num rating;
  final int count;
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
          rating.toString(),
          style: Styles.textStyleSfProDisplayRegular12.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($count Reviews)',
          style: Styles.textStyleSfProDisplayRegular12.copyWith(
            color: const Color(0xff8F9BB3),
          ),
        )
      ],
    );
  }
}
