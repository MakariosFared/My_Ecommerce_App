import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
            color: kGreenColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
        Image.asset(
          alignment: Alignment.bottomCenter,
          'assets/images/Group 31.png',
          // AssetsData.logo,
          height: MediaQuery.of(context).size.height * 0.24,
          // width: MediaQuery.of(context).size.width * 0.9,
        ),
      ],
    );
  }
}
