import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class CustomSignUpButton extends StatelessWidget {
  const CustomSignUpButton({
    super.key,
    this.borderRadius,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 366,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(
              color: kGreenColor,
              width: 2,
            ),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyleSemiBold16.copyWith(
            color: kGreenColor,
          ),
        ),
      ),
    );
  }
}
