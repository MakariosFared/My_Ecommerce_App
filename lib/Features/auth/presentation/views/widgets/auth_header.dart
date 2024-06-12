import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 310,
      decoration: const BoxDecoration(
        color: kGreenColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Image.asset(
        alignment: Alignment.bottomCenter,
        'assets/images/Group 31.png',
        // AssetsData.logo,
        height: 234,
        width: 314,
      ),
    );
  }
}