import 'package:dikkan/Features/home/presentation/views/widgets/popular_grid_list_view_item.dart';
import 'package:flutter/material.dart';

class GrideListView extends StatelessWidget {
  const GrideListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.vertical,
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 18,
          childAspectRatio: 0.77,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const PopularGridListViewItem();
        },
      ),
    );
  }
}
