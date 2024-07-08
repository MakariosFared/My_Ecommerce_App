import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/search/presentation/views/widget/sort_by_buttons.dart';
import 'package:flutter/material.dart';

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