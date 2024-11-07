import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/details_header_bar.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/details_product_images_section.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/dots_indicator.dart';
import 'package:flutter/material.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    super.key,
    required this.pageController,
    required this.currentPageIndex,
    required this.allProductModel,
  });

  final PageController pageController;
  final int currentPageIndex;
  final AllProductModel2 allProductModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        DetailsProductImagesSection(
          pageController: pageController,
          allProductModel: allProductModel,
        ),
        const DetailsHeaderBar(),
        Positioned(
          bottom: 16,
          right: 24,
          child: DotsIndicator(
            currentPageIndex: currentPageIndex,
          ),
        ),
      ],
    );
  }
}
