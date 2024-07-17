import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/ongoing_body.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/ongoing_item.dart';
import 'package:dikkan/constant.dart';
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

class OngoingItemsListView extends StatelessWidget {
  const OngoingItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      children: const [
        OngoingItem(),
      ],
    );
  }
}


