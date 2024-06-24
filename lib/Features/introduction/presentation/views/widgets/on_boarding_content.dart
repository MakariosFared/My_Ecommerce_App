import 'package:dikkan/Core/utils/assets.dart';
import 'package:dikkan/Features/introduction/presentation/views/widgets/content_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    this.description,
    required this.selectedIndex,
    required this.onPressed,
    required this.onTap,
    required this.buttonText,
  });

  final void Function()? onPressed;
  final void Function()? onTap;
  final String image, title;
  final String? description;
  final int selectedIndex;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SizedBox(
            height: 54,
            width: 84,
            child: Image.asset(AssetsData.logo),
          ),
        ),
        const SizedBox(
          height: 44,
        ),
        Flexible(
          child: SizedBox(
            height: 365,
            width: 365,
            child: SvgPicture.asset(image),
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        ContentContainer(
            selectedIndex: selectedIndex,
            onTap: onTap,
            title: title,
            description: description,
            buttonText: buttonText,
            onPressed: onPressed),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
