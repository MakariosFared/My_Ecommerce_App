import 'package:cached_network_image/cached_network_image.dart';
import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopularGridListViewItem extends StatelessWidget {
  const PopularGridListViewItem({
    super.key,
    required this.allProductModel,
  });

  final AllProductModel2 allProductModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kDetailsView,
          extra: allProductModel,
        );
      },
      child: SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                imageUrl: allProductModel.thumbnail!,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    allProductModel.title!,
                    style: const TextStyle(
                      backgroundColor: Colors.black45,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
