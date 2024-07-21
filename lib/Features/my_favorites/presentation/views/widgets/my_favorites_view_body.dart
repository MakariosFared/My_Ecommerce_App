import 'package:dikkan/Features/my_favorites/presentation/views/widgets/my_favorites_item_list_view.dart';
import 'package:flutter/material.dart';

class MyFavoritesViewBody extends StatelessWidget {
  const MyFavoritesViewBody({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: const [
        MyFavoritesItemListView(),
        Center(
          child: Text(
            'Suppliers',
          ),
        ),
      ],
    );
  }
}
