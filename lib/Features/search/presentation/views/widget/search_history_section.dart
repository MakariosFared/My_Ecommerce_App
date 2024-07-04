import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchHistorySection extends StatelessWidget {
  const SearchHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Search History',
                style: Styles.textStyleSfProDisplayMedium16,
              ),
              Spacer(),
              Text(
                'Clear all',
                style: Styles.textStyleSfProDisplayRegular12,
              )
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            padding: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Spaghetti with Vegetables',
                      style: Styles.textStyleSfProDisplayRegular12,
                    ),
                    trailing: Icon(
                      Icons.clear_rounded,
                      size: 16,
                    ),
                  ),
                  Divider(
                    height: 0.1,
                    thickness: 1,
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Vegetable Omelet',
                      style: Styles.textStyleSfProDisplayRegular12,
                    ),
                    trailing: Icon(
                      Icons.clear_rounded,
                      size: 16,
                    ),
                  ),
                  Divider(
                    height: 0.1,
                    thickness: 1,
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Burger Menu',
                      style: Styles.textStyleSfProDisplayRegular12,
                    ),
                    trailing: Icon(
                      Icons.clear_rounded,
                      size: 16,
                    ),
                  ),
                  Divider(
                    height: 0.1,
                    thickness: 1,
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Waffle',
                      style: Styles.textStyleSfProDisplayRegular12,
                    ),
                    trailing: Icon(
                      Icons.clear_rounded,
                      size: 16,
                    ),
                  ),
                  Divider(
                    height: 0.1,
                    thickness: 1,
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Chicken Wings',
                      style: Styles.textStyleSfProDisplayRegular12,
                    ),
                    trailing: Icon(
                      Icons.clear_rounded,
                      size: 16,
                    ),
                  ),
                  Divider(
                    height: 0.1,
                    thickness: 1,
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Strawberry Waffle',
                      style: Styles.textStyleSfProDisplayRegular12,
                    ),
                    trailing: Icon(
                      Icons.clear_rounded,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
