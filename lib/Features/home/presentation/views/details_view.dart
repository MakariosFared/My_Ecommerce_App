import 'package:dikkan/Features/home/presentation/views/widgets/details_header_bar.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/dots_indicator.dart';
import 'package:dikkan/constant.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: DetailsViewBody(),
    );
  }
}

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
        Stack(
          fit: StackFit.passthrough,
          children: [
            DetailsProductImagesSection(
              pageController: pageController,
            ),
            const DetailsHeaderBar(),
            Positioned(
              bottom: 16,
              right: 24,
              child: DotsIndicator(currentPageIndex: currentPageIndex),
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          height: 124,
          child: const Column(
            children: [
              Row(
                children: [
                  Text(
                    'Fresh Orange',
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

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
