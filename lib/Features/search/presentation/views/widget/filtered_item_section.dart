import 'package:dikkan/Features/search/data/models/filtered_items_model.dart';
import 'package:dikkan/Features/search/presentation/views/widget/filtered_item.dart';
import 'package:flutter/material.dart';

class FilteredItemsSection extends StatelessWidget {
  const FilteredItemsSection({super.key});

  final List<FilteredItemsModel> filteredItemsModel = const [
    FilteredItemsModel(
      image: 'assets/images/vegetables.png',
      filteredItemsName: 'Pizza',
    ),
    FilteredItemsModel(
      image: 'assets/images/Flash Glass.png',
      filteredItemsName: 'Pizza',
    ),
    FilteredItemsModel(
      image: 'assets/images/cleaning.png',
      filteredItemsName: 'Sushi',
    ),
    FilteredItemsModel(
      image: 'assets/images/Flash Glass.png',
      filteredItemsName: 'Soup',
    ),
    FilteredItemsModel(
      image: 'assets/images/cleaning.png',
      filteredItemsName: 'Pasta',
    ),
    FilteredItemsModel(
      image: 'assets/images/vegetables.png',
      filteredItemsName: 'Salad',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: filteredItemsModel.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 119 / 147,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FilteredItem(
          filteredItemsModel: filteredItemsModel[index],
        );
      },
    );
  }
}
