import 'package:dikkan/Features/orders/presentation/views/widgets/draft_item_list_view.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/empty_ongoing_body.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/ongoing_item_list_view.dart';
import 'package:flutter/material.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: const [
        EmptyOnGoingBody(),
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
