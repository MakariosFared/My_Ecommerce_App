import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/search/presentation/views/widget/popular_categories_item.dart';
import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Categories',
            style: Styles.textStyleSfProDisplayMedium16,
          ),
          SizedBox(
            height: 20,
          ),
          PopularCategoriesItem(),
        ],
      ),
    );
  }
}


