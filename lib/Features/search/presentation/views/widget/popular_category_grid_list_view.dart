import 'package:dikkan/Features/search/presentation/views/widget/popular_categories_item.dart';
import 'package:flutter/material.dart';

class PopularCategoryGridListView extends StatelessWidget {
  const PopularCategoryGridListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      clipBehavior: Clip.none,
      scrollDirection: Axis.vertical,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 18,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const PopularCategoriesItem();
      },
    );
  }
}
