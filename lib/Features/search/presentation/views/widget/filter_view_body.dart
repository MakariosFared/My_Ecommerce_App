import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_arrow_back.dart';
import 'package:dikkan/Features/search/presentation/views/widget/custom_range_slider.dart';
import 'package:dikkan/Features/search/presentation/views/widget/filtered_item_section.dart';
import 'package:dikkan/Features/search/presentation/views/widget/sort_by_section.dart';
import 'package:flutter/material.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          Row(
            children: [
              CustomArrowBack(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              Image.asset(
                'assets/images/logo.png',
                width: 84,
                height: 54,
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          const FilteredItemsSection(),
          const SizedBox(
            height: 30,
          ),
          const SortBySection(),
          const SizedBox(
            height: 30,
          ),
          const SortByPrice(),
        ],
      ),
    );
  }
}

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
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const CustomRangeSlider(),
        ),
      ],
    );
  }
}

