import 'package:dikkan/Core/utils/widgets/custom_error_message.dart';
import 'package:dikkan/Core/utils/widgets/custom_loading_indicator.dart';
import 'package:dikkan/Features/home/presentation/manager/all_product_cubit/all_product_cubit.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/popular_grid_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GrideListView extends StatelessWidget {
  const GrideListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: BlocBuilder<AllProductCubit, AllProductState>(
          builder: (context, state) {
        if (state is AllProductSuccess) {
          return SizedBox(
            height: state.allProduct.length * 35,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.allProduct.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 18,
                childAspectRatio: 0.77,
              ),
              itemBuilder: (BuildContext context, int index) {
                return PopularGridListViewItem(
                  allProductModel: state.allProduct[index],
                );
              },
            ),
          );
        } else if (state is AllProductFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      }),
    );
  }
}
