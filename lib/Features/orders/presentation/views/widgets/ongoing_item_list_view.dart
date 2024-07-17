import 'package:dikkan/Features/orders/presentation/views/widgets/ongoing_item.dart';
import 'package:flutter/material.dart';

class OngoingItemsListView extends StatelessWidget {
  const OngoingItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const OngoingItem();
      },
    );
  }
}
