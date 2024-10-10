import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/home/presentation/views/category_view.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              Text(
                'Discover by Category',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllCategoryView(),
                    ),
                  );
                },
                child: const Text(
                  'View all',
                  style: Styles.textStyleBold14,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.arrow_forward_rounded)
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const CategoryListView(),
      ],
    );
  }
}
