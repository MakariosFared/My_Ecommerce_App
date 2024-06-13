import 'package:dikkan/Core/utils/assets.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Features/introduction/presentation/views/widgets/list_custom_dots.dart';
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
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 54,
          width: 84,
          child: Image.asset(AssetsData.logo),
        ),
        const SizedBox(
          height: 44,
        ),
        SizedBox(
          height: 365,
          width: 365,
          child: SvgPicture.asset(image),
        ),
        const SizedBox(
          height: 48,
        ),
        Expanded(
          child: ContentContainer(
              selectedIndex: selectedIndex,
              onTap: onTap,
              title: title,
              description: description,
              buttonText: buttonText,
              onPressed: onPressed),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
  });

  final int selectedIndex;
  final void Function()? onTap;
  final String title;
  final String? description;
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          ListCustomDots(selectedIndex: selectedIndex, onTap: onTap),
          const SizedBox(
            height: 28,
          ),
          Text(
            textAlign: TextAlign.center,
            title,
            style: Styles.textStyleBold24.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            description ?? '',
            style: Styles.textStyleMedium16.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 24,
          ),
          CustomButton(
            text: buttonText,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
