import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Categories',
            style: Styles.textStyleSfProDisplayMedium16,
          ),
          SizedBox(
            height: 20,
          ),
          PopularCategoriesCard(),
        ],
      ),
    );
  }
}

class PopularCategoriesCard extends StatelessWidget {
  const PopularCategoriesCard({
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
            // color: Colors.red,
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
