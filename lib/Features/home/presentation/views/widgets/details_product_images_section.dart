import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class DetailsProductImagesSection extends StatelessWidget {
  const DetailsProductImagesSection({
    super.key,
    required this.pageController,
    required this.allProductModel,
  });

  final PageController pageController;
  final AllProductModel2 allProductModel;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        4,
        (index) => Image.network(
          height: MediaQuery.of(context).size.height * 0.39,
          allProductModel.thumbnail ?? 'assets/images/fresh orange.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
