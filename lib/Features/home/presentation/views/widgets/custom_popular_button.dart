import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class CustomPopularButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomPopularButton(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? kGreenColor : Colors.transparent,
          border: Border.all(color: kGreenColor),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : kGreenColor,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
