import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Features/introduction/data/models/intro_model.dart';
import 'package:dikkan/Features/introduction/presentation/views/widgets/on_boarding_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroductionViewBody extends StatefulWidget {
  const IntroductionViewBody({super.key});

  @override
  State<IntroductionViewBody> createState() => _IntroductionViewBodyState();
}

class _IntroductionViewBodyState extends State<IntroductionViewBody> {
  late PageController _pageController;

  int selectedIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            itemCount: item.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: OnBoardContent(
                  image: item[index].image,
                  title: item[index].title,
                  description: item[index].description,
                  selectedIndex: selectedIndex,
                  buttonText: index != 2 ? 'Get Started' : 'English',
                  onPressed: () {
                    index == 2
                        ? GoRouter.of(context).push(AppRouter.kLogIn)
                        : _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                  },
                  onTap: () {
                    selectedIndex = index;
                    _pageController.animateToPage(
                      index < item.length - 1 ? index + 1 : index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
