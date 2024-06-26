import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomLogINButton extends StatelessWidget {
  const CustomLogINButton({
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
          GoRouter.of(context).push(AppRouter.kHomeView);
        },
        style: TextButton.styleFrom(
          backgroundColor: kGreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          'Log In',
          style: Styles.textStyleBold18.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
