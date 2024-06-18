import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Features/introduction/presentation/views/widgets/list_custom_dots.dart';
import 'package:flutter/material.dart';

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
