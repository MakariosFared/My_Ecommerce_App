import 'dart:ui';

import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class PopularGridListViewItem extends StatelessWidget {
  const PopularGridListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92,
      height: 118,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/fresh orange.png',
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                ' Drow\nRanger',
                style: Styles.textStyleSfProDisplayRegular15.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}