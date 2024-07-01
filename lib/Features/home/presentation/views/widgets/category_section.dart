import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/category_list_view.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key,});

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
        CategoryListView(),
      ],
    );
  }
}
