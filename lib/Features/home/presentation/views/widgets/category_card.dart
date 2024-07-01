import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 83,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  category.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            category.categoryName,
            style: Styles.textStyleSemiBold12,
          )
        ],
      ),
    );
  }
}
