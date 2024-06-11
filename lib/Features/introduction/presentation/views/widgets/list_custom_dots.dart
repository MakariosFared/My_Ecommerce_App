import 'package:dikkan/Features/introduction/data/models/intro_model.dart';
import 'package:dikkan/Features/introduction/presentation/views/widgets/custom_dots.dart';
import 'package:flutter/material.dart';

class ListCustomDots extends StatelessWidget {
  const ListCustomDots({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final int selectedIndex;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        item.length,
        (index) => Padding(
          padding: const EdgeInsets.only(
            right: 4,
            left: 4,
            top: 40,
            // bottom: 28,
          ),
          child: CustomDots(
            isActive: selectedIndex == index,
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
