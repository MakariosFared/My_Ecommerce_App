import 'package:dikkan/Features/search/data/models/popular_category_model.dart';
import 'package:dikkan/Features/search/presentation/views/widget/popular_categories_item.dart';
import 'package:flutter/material.dart';

class PopularCategoryGridListView extends StatelessWidget {
  const PopularCategoryGridListView({super.key});

  final List<PopularCategoryModel> popularCategoryModel = const [
    PopularCategoryModel(
      popularCategoryName: 'Pizza',
      image: 'assets/images/cleaning.png',
    ),
    PopularCategoryModel(
      popularCategoryName: 'Burgers',
      image: 'assets/images/Flash Glass.png',
    ),
    PopularCategoryModel(
      popularCategoryName: 'Sushi',
      image: 'assets/images/cleaning.png',
    ),
    PopularCategoryModel(
      popularCategoryName: 'Soup',
      image: 'assets/images/Flash Glass.png',
    ),
    PopularCategoryModel(
      popularCategoryName: 'Pasta',
      image: 'assets/images/cleaning.png',
    ),
    PopularCategoryModel(
      popularCategoryName: 'Salad',
      image: 'assets/images/Flash Glass.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      clipBehavior: Clip.none,
      scrollDirection: Axis.vertical,
      itemCount: popularCategoryModel.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 18,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return PopularCategoriesItem(
          popularCategoryModel: popularCategoryModel[index],
        );
      },
    );
  }
}
