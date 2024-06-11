import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.isActive,required this.onTap, });

  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap ,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 8,
        width: 40,
        decoration: ShapeDecoration(
          color: isActive ? kGreenColor : const Color(0xFF9E9E9E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.5),
          ),
        ),
      ),
    );
  }
}
