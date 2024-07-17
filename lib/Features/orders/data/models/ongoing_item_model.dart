class OngoingItemModel {
  final String productName;
  final String id;
  final String nubOfItems;
  final String state;
  final String? productImage;

  const OngoingItemModel({
    required this.productName,
    required this.id,
    required this.nubOfItems,
    required this.state,
    this.productImage,
  });
}
