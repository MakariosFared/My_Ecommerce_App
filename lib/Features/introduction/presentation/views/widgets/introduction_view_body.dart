import 'package:dikkan/Features/introduction/data/models/intro_model.dart';
import 'package:dikkan/Features/introduction/presentation/views/widgets/on_boarding_content.dart';
import 'package:flutter/material.dart';

class IntroductionViewBody extends StatefulWidget {
  const IntroductionViewBody({super.key});

  @override
  State<IntroductionViewBody> createState() => _IntroductionViewBodyState();
}



class _IntroductionViewBodyState extends State<IntroductionViewBody> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemCount: item.length,
              itemBuilder: (BuildContext context, int index) {
                return OnBoardContent(
                  image: item[index].image,
                  title: item[index].title,
                  description: item[index].description,
                  selectedIndex: selectedIndex,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


