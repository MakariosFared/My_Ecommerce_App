import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/search/presentation/views/widget/custom_range_slider.dart';
import 'package:flutter/material.dart';

class SortByPrice extends StatelessWidget {
  const SortByPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Price',
          style: Styles.textStyleSfProDisplayMedium16,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          // height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.only(
              bottom: 25,
            ),
            child: CustomRangeSlider(),
          ),
        ),
      ],
    );
  }
}