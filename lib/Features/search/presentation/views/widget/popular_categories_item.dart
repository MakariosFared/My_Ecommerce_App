import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class PopularCategoriesItem extends StatelessWidget {
  const PopularCategoriesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 119,
          width: 119,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage('assets/images/vegetables.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 34,
          width: 119,
          decoration: const BoxDecoration(
            color: Color(0xff25418B),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Center(
            child: Text(
              'Pizza',
              style: Styles.textStyleSfProDisplayRegular12.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
