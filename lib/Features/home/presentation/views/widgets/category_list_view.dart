import 'package:dikkan/Core/utils/widgets/custom_error_message.dart';
import 'package:dikkan/Core/utils/widgets/custom_loading_indicator.dart';
import 'package:dikkan/Features/home/presentation/manager/home_category_cubit/home_category_cubit.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/category_card.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/get_category_image_url_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoryCubit, HomeCategoryState>(
      builder: (context, state) {
        if (state is HomeCategorySuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 13),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final category = state.categories[index];
                  return CategoryCard(
                    imageUrl: getCategoryImageUrl(category.name!),
                    categoryName: category.name!,
                    category: category,
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is HomeCategoryFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }

  
}
