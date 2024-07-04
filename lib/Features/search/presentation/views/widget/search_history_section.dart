import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchHistorySection extends StatelessWidget {
  const SearchHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
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
              padding: EdgeInsets.all(14),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Spaghetti with Vegetables'),
                    trailing: Icon(Icons.clear_rounded),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Vegetable Omelet'),
                    trailing: Icon(Icons.clear_rounded),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Burger Menu'),
                    trailing: Icon(Icons.clear_rounded),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Waffle'),
                    trailing: Icon(Icons.clear_rounded),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Chicken Wings'),
                    trailing: Icon(Icons.clear_rounded),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Strawberry Waffle'),
                    trailing: Icon(Icons.clear_rounded),
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
