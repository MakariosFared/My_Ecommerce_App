import 'package:dikkan/Features/home/presentation/views/widgets/product_details_header.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/product_details_info.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key});

  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProductDetailsHeader(pageController: pageController, currentPageIndex: currentPageIndex),
        const ProductDetailsInfo(),
      ],
    );
  }
}




