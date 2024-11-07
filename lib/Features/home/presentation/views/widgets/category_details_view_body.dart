import 'package:cached_network_image/cached_network_image.dart';
import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_error_message.dart';
import 'package:dikkan/Core/utils/widgets/custom_loading_indicator.dart';
import 'package:dikkan/Features/home/data/models/category_model/category.model.dart';
import 'package:dikkan/Features/home/presentation/manager/categories_products_cubit/categories_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesProductsCubit, CategoriesProductsState>(
      builder: (context, state) {
        if (state is CategoriesProductsSuccess) {
          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.categoriesProduct.length,
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              mainAxisSpacing: 3,
              crossAxisSpacing: 0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.kDetailsView,
                    extra: state.categoriesProduct[index],
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: CachedNetworkImage(
                          imageUrl: state.categoriesProduct[index].thumbnail!,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: 100,
                      child: Center(
                        child: Text(
                          state.categoriesProduct[index].title ?? 'No title',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Styles.textStyleSemiBold12,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        } else if (state is CategoriesProductsFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
