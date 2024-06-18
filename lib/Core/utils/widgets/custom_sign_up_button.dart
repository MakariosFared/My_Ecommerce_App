import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSignUpButton extends StatelessWidget {
  const CustomSignUpButton({
    super.key,
    this.borderRadius,
    // required this.onPressed,
  });

  final BorderRadius? borderRadius;
  // final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 366,
      child: TextButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kSignUn);
        },
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
          'Sign Up For Free',
          style: Styles.textStyleSemiBold16.copyWith(
            color: kGreenColor,
          ),
        ),
      ),
    );
  }
}
