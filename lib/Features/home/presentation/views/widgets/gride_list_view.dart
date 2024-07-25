import 'dart:ui';

import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class GrideListView extends StatelessWidget {
  const GrideListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.vertical,
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 18,
          childAspectRatio: 0.77,
        ),
        itemBuilder: (BuildContext context, int index) {
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
        },
      ),
    );
  }
}
