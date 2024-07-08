import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/search/data/models/filtered_items_model.dart';
import 'package:flutter/material.dart';

class FilteredItem extends StatelessWidget {
  const FilteredItem({
    super.key,
    required this.filteredItemsModel,
  });

  final FilteredItemsModel filteredItemsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      // width: 119,
      // height: 147,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Image.asset(
              filteredItemsModel.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            filteredItemsModel.filteredItemsName,
            textAlign: TextAlign.center,
            style: Styles.textStyleSfProDisplayRegular12.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xff8A8585),
            ),
          ),
        ],
      ),
    );
  }
}
