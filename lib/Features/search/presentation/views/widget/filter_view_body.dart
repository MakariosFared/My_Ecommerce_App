import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_arrow_back.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Features/search/presentation/views/widget/filtered_item_section.dart';
import 'package:dikkan/Features/search/presentation/views/widget/sort_by_price.dart';
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
          const Flexible(
            child: SizedBox(
              height: 30,
            ),
          ),
          const SortBySection(),
          const Flexible(
            child: SizedBox(
              height: 30,
            ),
          ),
          const SortByPrice(),
          const Flexible(
            child: SizedBox(
              height: 30,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: CustomButton(
              style: Styles.textStyleSfProDisplayRegular12.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              text: 'Apply Filter',
              onPressed: () {},
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          const Flexible(
            child: SizedBox(
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
