import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class DetailsProductImagesSection extends StatelessWidget {
  const DetailsProductImagesSection({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        4,
        (index) => Image.asset(
          height: MediaQuery.of(context).size.height * 0.39,
          'assets/images/fresh orange.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}