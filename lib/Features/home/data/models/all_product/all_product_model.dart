import 'package:dikkan/Features/home/data/models/all_product/category_product.model.dart';
import 'package:equatable/equatable.dart';

class AllProductModel extends Equatable {
  final int? id;
  final String? title;
  final int? price;
  final String? description;
  final List<String>? images;
  final DateTime? creationAt;
  final DateTime? updatedAt;
  final CategoryModel? category;

  const AllProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.images,
    this.creationAt,
    this.updatedAt,
    this.category,
  });

  factory AllProductModel.fromJson(Map<String, dynamic> json) => AllProductModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        price: json['price'] as int?,
        description: json['description'] as String?,
        images: json['images'] as List<String>?,
        creationAt: json['creationAt'] == null
            ? null
            : DateTime.parse(json['creationAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        category: json['category'] == null
            ? null
            : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'images': images,
        'creationAt': creationAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'category': category?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      title,
      price,
      description,
      images,
      creationAt,
      updatedAt,
      category,
    ];
  }
}
