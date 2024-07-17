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
      children: [
        // const EmptyOnGoingBody(),
        const OngoingItemsListView(),
        Center(
          child: Text(
            'history',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Center(
          child: Text(
            'draft',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}




