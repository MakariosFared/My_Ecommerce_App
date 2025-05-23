import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/search/data/models/popular_category_model.dart';
import 'package:flutter/material.dart';

class PopularCategoriesItem extends StatelessWidget {
  const PopularCategoriesItem({
    super.key,
    required this.popularCategoryModel,
  });

  final PopularCategoryModel popularCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 119,
          width: 119,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(popularCategoryModel.image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 34,
          width: 119,
          decoration: const BoxDecoration(
            color: Color(0xff25418B),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Center(
            child: Text(
              popularCategoryModel.popularCategoryName,
              style: Styles.textStyleSfProDisplayRegular12.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
