import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/custom_popular_button.dart';
import 'package:flutter/material.dart';

class PopularSection extends StatefulWidget {
  const PopularSection({super.key});

  @override
  State<PopularSection> createState() => _PopularSectionState();
}

class _PopularSectionState extends State<PopularSection> {
  String selectedButton = 'Fruits';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              Text(
                'Popular',
                style: Styles.textStyleBold20,
              ),
              Spacer(),
              Text(
                'View all',
                style: Styles.textStyleBold14,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomPopularButton(
              label: 'Fruits',
              isSelected: selectedButton == 'Fruits',
              onTap: () {
                setState(() {
                  selectedButton = 'Fruits';
                });
              },
            ),
            CustomPopularButton(
              label: 'Vegetable',
              isSelected: selectedButton == 'Vegetable',
              onTap: () {
                setState(() {
                  selectedButton = 'Vegetable';
                });
              },
            ),
            CustomPopularButton(
              label: 'Drinks',
              isSelected: selectedButton == 'Drinks',
              onTap: () {
                setState(() {
                  selectedButton = 'Drinks';
                });
              },
            ),
            CustomPopularButton(
              label: 'Fast-Food',
              isSelected: selectedButton == 'Fast-Food',
              onTap: () {
                setState(() {
                  selectedButton = 'Fast-Food';
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

