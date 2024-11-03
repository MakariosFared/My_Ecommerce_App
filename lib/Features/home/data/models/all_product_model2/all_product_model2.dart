// import 'package:equatable/equatable.dart';

// import 'product.dart';
class AllProductModel2 {
  final num? id;
  final String? title;
  final String? description;
  final String? category;
  final num? price;
  final num? discountPercentage;
  final num? rating;
  final num? stock;
  final List<String>? tags;
  final String? brand;
  final String? sku;
  final num? weight;
  final Dimensions? dimensions;
  final String? warrantyInformation;
  final String? shippingInformation;
  final String? availabilityStatus;
  final List<Review>? reviews;
  final String? thumbnail;

  AllProductModel2({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.thumbnail,
  });

  factory AllProductModel2.fromJson(Map<String, dynamic> json) {
    return AllProductModel2(
      id: json['id'] as num?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      price: json['price'] as num?,
      discountPercentage: json['discountPercentage'] as num?,
      rating: json['rating'] as num?,
      stock: json['stock'] as num?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      brand: json['brand'] as String?,
      sku: json['sku'] as String?,
      weight: json['weight'] as num?,
      dimensions: json['dimensions'] != null
          ? Dimensions.fromJson(json['dimensions'])
          : null,
      warrantyInformation: json['warrantyInformation'] as String?,
      shippingInformation: json['shippingInformation'] as String?,
      availabilityStatus: json['availabilityStatus'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e))
          .toList(),
      thumbnail: json['thumbnail'] as String?,
    );
  }
}

class Dimensions {
  final num? width;
  final num? height;
  final num? depth;

  Dimensions({this.width, this.height, this.depth});

  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
      width: json['width'] as num?,
      height: json['height'] as num?,
      depth: json['depth'] as num?,
    );
  }
}

class Review {
  final num? rating;
  final String? comment;
  final String? date;
  final String? reviewerName;
  final String? reviewerEmail;

  Review({
    this.rating,
    this.comment,
    this.date,
    this.reviewerName,
    this.reviewerEmail,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      rating: json['rating'] as num?,
      comment: json['comment'] as String?,
      date: json['date'] as String?,
      reviewerName: json['reviewerName'] as String?,
      reviewerEmail: json['reviewerEmail'] as String?,
    );
  }
}
