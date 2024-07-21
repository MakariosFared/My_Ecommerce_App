class MyFavoriteItemModel {
  final String productName;
  final String shopName;
  final String price;
  final num rating;
  final int count;

  const MyFavoriteItemModel({
    required this.rating,
    required this.count,
    required this.productName,
    required this.shopName,
    required this.price,
  });
}
