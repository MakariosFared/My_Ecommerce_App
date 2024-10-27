import 'package:dikkan/Features/home/data/models/categories_product/category_model.dart';
import 'package:equatable/equatable.dart';

class AllProductModel extends Equatable {
  final int? id;
  final String? title;
  final int? price;
  final String? description;
  final List<dynamic>? images;
  final DateTime? creationAt;
  final DateTime? updatedAt;
  final CategoryModel category;

  const AllProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.images,
    this.creationAt,
    this.updatedAt,
    required this.category,
  });

  factory AllProductModel.fromJson(Map<String, dynamic> json) =>
      AllProductModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        price: json['price'] as int?,
        description: json['description'] as String?,
        images: json['images'] as List<dynamic>?,
        creationAt: json['creationAt'] == null
            ? null
            : DateTime.parse(json['creationAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        category:
            CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'images': images,
        'creationAt': creationAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'category': category.toJson(),
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
