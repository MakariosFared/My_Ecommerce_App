import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class SortByButtons extends StatelessWidget {
  const SortByButtons({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromWidth(119),
          backgroundColor: isSelected ? kGreenColor : Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: Styles.textStyleSfProDisplayRegular12.copyWith(
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : const Color(0xff8A8585),
          ),
        ),
      ),
    );
  }
}
