import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.borderRadius,
    required this.text,
    required this.onPressed,
    this.style,
  });

  final String text;
  final BorderRadiusGeometry borderRadius;
  final void Function()? onPressed;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kGreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: style ??
              Styles.textStyleBold18.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}
