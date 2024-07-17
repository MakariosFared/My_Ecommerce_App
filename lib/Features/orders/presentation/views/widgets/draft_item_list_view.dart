import 'package:dikkan/Features/orders/data/models/draft_item_model.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/draft_item.dart';
import 'package:flutter/material.dart';

class DraftItemListView extends StatelessWidget {
  const DraftItemListView({super.key});

  final List<DraftItemModel> draftItemModel = const [
    DraftItemModel(
      productName: 'Kichi Coffee & Drink',
      numberOfItems: "4",
      location: '76A Eighth Avenue, New York.',
    ),
    DraftItemModel(
      productName: 'Demacia Royal Restaurant',
      numberOfItems: "1",
      location: '050 Lisette Ferry, New York.',
    ),
    DraftItemModel(
      productName: 'BB & BG Restaurant',
      numberOfItems: "2",
      location: '276 Green Rue Suite, New York.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      itemCount: draftItemModel.length,
      itemBuilder: (BuildContext context, int index) {
        return DraftItem(
          draftItemModel: draftItemModel[index],
        );
      },
    );
  }
}
