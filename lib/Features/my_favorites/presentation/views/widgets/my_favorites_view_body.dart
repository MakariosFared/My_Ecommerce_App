import 'package:dikkan/Features/orders/presentation/views/widgets/draft_item_list_view.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/ongoing_item_list_view.dart';
import 'package:flutter/material.dart';

class MyFavoritesViewBody extends StatelessWidget {
  const MyFavoritesViewBody({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: const [
        OngoingItemsListView(),
        // Center(
        //   child: Text(
        //     'History',
        //     style: Theme.of(context).textTheme.titleLarge,
        //   ),
        // ),
        DraftItemListView()
      ],
    );
  }
}