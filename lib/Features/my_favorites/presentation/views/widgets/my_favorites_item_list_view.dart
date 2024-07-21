import 'package:dikkan/Features/my_favorites/data/models/my_favorite_item_model.dart';
import 'package:dikkan/Features/my_favorites/presentation/views/widgets/my_favorites_item.dart';
import 'package:flutter/material.dart';

class MyFavoritesItemListView extends StatelessWidget {
  const MyFavoritesItemListView({super.key});

  final List<MyFavoriteItemModel> myFavoriteItemModel = const [
    MyFavoriteItemModel(
      price: '100',
      productName: 'Matcha Milk Tea Special',
      shopName: 'Royal Drink & Coffee',
    ),
    MyFavoriteItemModel(
      price: '100',
      productName: 'Pan-fried Salmon',
      shopName: 'Royal Drink & Coffee',
    ),
    MyFavoriteItemModel(
      price: '100',
      productName: 'Steamed Asparagus',
      shopName: 'Royal Drink & Coffee',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myFavoriteItemModel.length,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      itemBuilder: (BuildContext context, int index) {
        return MyFavoritesItem(
          myFavoriteItemModel: myFavoriteItemModel[index],
        );
      },
    );
  }
}
