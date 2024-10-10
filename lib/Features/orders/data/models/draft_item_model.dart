class DraftItemModel {
  final String productName;
  final String? productImage;
  final String location;
  final String numberOfItems;

  const DraftItemModel({
    required this.productName,
    this.productImage,
    required this.location,
    required this.numberOfItems,
  });
}
