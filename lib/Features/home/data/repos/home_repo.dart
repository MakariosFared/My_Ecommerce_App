import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Features/home/data/models/categories_product/categories_product_model.dart';
import 'package:dikkan/Features/home/data/models/categories_product/category_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryModel>>> getHomeCategory();
    Future<Either<Failure, List<AllProductModel>>> getAllProduct();

  Future<Either<Failure, List<AllProductModel>>> getCategoryProduct(
      {required String category});
}
