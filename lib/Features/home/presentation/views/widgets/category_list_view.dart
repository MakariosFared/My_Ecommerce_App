import 'package:dikkan/Features/home/data/models/category_model.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/images/cleaning.png',
      categoryName: "Cleaning",
    ),
    CategoryModel(
      image: 'assets/images/vegetables.png',
      categoryName: "vegetables",
    ),
    CategoryModel(
      image: 'assets/images/cleaning.png',
      categoryName: "Phones",
    ),
    CategoryModel(
      image: 'assets/images/Flash Glass.png',
      categoryName: "Flash Glass",
    ),
    CategoryModel(
      image: 'assets/images/vegetables.png',
      categoryName: "Electrons",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return CategoryCard(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}
