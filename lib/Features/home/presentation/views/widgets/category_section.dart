import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
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
          height: 83,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 1,
              child: SvgPicture.asset(
                'assets/images/cleaning.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
