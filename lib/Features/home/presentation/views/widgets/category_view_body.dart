import 'package:dikkan/Core/utils/widgets/custom_error_message.dart';
import 'package:dikkan/Core/utils/widgets/custom_loading_indicator.dart';
import 'package:dikkan/Features/home/presentation/manager/home_category_cubit/home_category_cubit.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/category_card.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/get_category_image_url_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCategoryViewBody extends StatelessWidget {
  const AllCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoryCubit, HomeCategoryState>(
      builder: (context, state) {
        if (state is HomeCategorySuccess) {
          return GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              mainAxisSpacing: 5,
            ),
            physics: const BouncingScrollPhysics(),
            itemCount: state.categories.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryCard(
                category: state.categories[index],
                padding: const EdgeInsets.all(0),
                imageUrl: getCategoryImageUrl(state.categories[index].name!),
                categoryName: state.categories[index].name!,
              );
            },
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
