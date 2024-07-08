import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_arrow_back.dart';
import 'package:dikkan/Features/search/presentation/views/widget/filtered_item_section.dart';
import 'package:dikkan/Features/search/presentation/views/widget/sort_by_buttons.dart';
import 'package:dikkan/constant.dart';
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
        ],
      ),
    );
  }
}

class SortBySection extends StatefulWidget {
  const SortBySection({super.key});

  @override
  State<SortBySection> createState() => _SortBySectionState();
}

class _SortBySectionState extends State<SortBySection> {
  String selectedButton = 'Near Me';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sort By',
          style: Styles.textStyleSfProDisplayMedium16,
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SortByButtons(
                  label: 'Best Seller',
                  isSelected: selectedButton == 'Best Seller',
                  onTap: () {
                    setState(() {
                      selectedButton = 'Best Seller';
                    });
                  },
                ),
                SortByButtons(
                  label: 'Rating',
                  isSelected: selectedButton == 'Rating',
                  onTap: () {
                    setState(() {
                      selectedButton = 'Rating';
                    });
                  },
                ),
                SortByButtons(
                  label: 'Near Me',
                  isSelected: selectedButton == 'Near Me',
                  onTap: () {
                    setState(() {
                      selectedButton = 'Near Me';
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SortByButtons(
                  label: 'Suggest',
                  isSelected: selectedButton == 'Suggest',
                  onTap: () {
                    setState(() {
                      selectedButton = 'Suggest';
                    });
                  },
                ),
                SortByButtons(
                  label: 'Feature',
                  isSelected: selectedButton == 'Feature',
                  onTap: () {
                    setState(() {
                      selectedButton = 'Feature';
                    });
                  },
                ),
                SortByButtons(
                  label: 'Recent',
                  isSelected: selectedButton == 'Recent',
                  onTap: () {
                    setState(() {
                      selectedButton = 'Recent';
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

