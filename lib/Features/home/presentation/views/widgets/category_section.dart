import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              Text(
                'Discover by Category',
                style: Styles.textStyleBold16,
              ),
              Spacer(),
              Text(
                'View all',
                style: Styles.textStyleBold14,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_forward_rounded)
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        CategoryCard(),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                'assets/images/vegetables.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Cleaning',
          style: Styles.textStyleSemiBold12,
        )
      ],
    );
  }
}
