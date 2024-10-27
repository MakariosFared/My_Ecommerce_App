import 'package:cached_network_image/cached_network_image.dart';
import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/home/data/models/categories_product/category_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.imageUrl,
    required this.categoryName,
    required this.padding,
    required this.category,
  });

  final String imageUrl;
  final String categoryName;
  final EdgeInsetsGeometry padding;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: () {
          context.push(
            AppRouter.kCategoryDetailsView,
            extra: category,
          );
        },
        child: Column(
          children: [
            SizedBox(
              height: 83,
              width: 83,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 90,
              child: Center(
                child: Text(
                  categoryName,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyleSemiBold12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
