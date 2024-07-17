import 'package:dikkan/Features/orders/data/models/ongoing_item_model.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/ongoing_item.dart';
import 'package:flutter/material.dart';

class OngoingItemsListView extends StatelessWidget {
  const OngoingItemsListView({super.key});

  final List<OngoingItemModel> ongoingItemsModel = const [
    OngoingItemModel(
      productName: 'Kichi Coffee & Drink',
      id: "43e2 116H",
      nubOfItems: "4",
      state: 'Shipping',
    ),
    OngoingItemModel(
      productName: 'Demacia Royal Restaurant',
      id: "43e2 116H",
      nubOfItems: "1",
      state: 'Waiting',
    ),
    OngoingItemModel(
      productName: 'BB & BG Restaurant',
      id: " 11B2 542M",
      nubOfItems: "2",
      state: 'Canceled',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ongoingItemsModel.length,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      itemBuilder: (BuildContext context, int index) {
        return OngoingItem(
          ongoingItemModel: ongoingItemsModel[index],
        );
      },
    );
  }
}
