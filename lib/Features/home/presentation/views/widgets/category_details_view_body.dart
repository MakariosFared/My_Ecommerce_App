import 'package:cached_network_image/cached_network_image.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_error_message.dart';
import 'package:dikkan/Core/utils/widgets/custom_loading_indicator.dart';
import 'package:dikkan/Features/home/data/models/category_model/category.model.dart';
import 'package:dikkan/Features/home/presentation/manager/categories_products_cubit/categories_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              return Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: "",
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
              );
            },
          );
          //  ListView.builder(
          //   itemCount: state.categoriesProduct.length,
          //   itemBuilder: (context, index) {
          //     return
          //  ListTile(
          // leading: SizedBox(
          //   height: 50,
          //   width: 50,
          //   child: CachedNetworkImage(
          //     imageUrl: state.categoriesProduct[index].images![0],
          //     placeholder: (context, url) => const Center(
          //       child: CircularProgressIndicator(),
          //     ),
          //     errorWidget: (context, url, error) => const Icon(
          //       Icons.error,
          //       color: Colors.red,
          //     ),
          //   ),
          // ),
          //       title: Text(state.categoriesProduct[index].title ?? 'No title'),
          //       subtitle:
          //           Text('\$${state.categoriesProduct[index].price ?? 0}'),
          //     );
          //   },
          // );

          // GridView.builder(
          //   padding: EdgeInsets.zero,
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 3,
          //   childAspectRatio: 1,
          //   mainAxisSpacing: 5,
          // );,
          // physics: const BouncingScrollPhysics(),
          // itemCount: state.categoriesProduct.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Column(
          //       children: [
          //         SizedBox(
          //           height: 83,
          //           width: 83,
          //           child: ClipRRect(
          //             borderRadius: BorderRadius.circular(16),
          //             child: CachedNetworkImage(
          //               imageUrl: state.categoriesProduct.single.images![0],
          //               fit: BoxFit.cover,
          //               placeholder: (context, url) => const Center(
          //                 child: CircularProgressIndicator(),
          //               ),
          //               errorWidget: (context, url, error) =>
          //                   const Icon(Icons.error),
          //             ),
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 8,
          //         ),
          //         SizedBox(
          //           width: 90,
          //           child: Center(
          //             child: Text(
          //               state.categoriesProduct.single.title![0],
          //               overflow: TextOverflow.ellipsis,
          //               style: Styles.textStyleSemiBold12,
          //             ),
          //           ),
          //         )
          //       ],
          //     );
          //     //  CategoryCard(
          //     //   padding: const EdgeInsets.all(0),
          //     //   imageUrl: state.categoriesProduct[index].category!.image!,
          //     //   categoryName: state.categoriesProduct[index].category!.name!,
          //     //   categoryModel: state.categoriesProduct[index].category!,
          //     // );
          //   },
          // );
        } else if (state is CategoriesProductsFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
