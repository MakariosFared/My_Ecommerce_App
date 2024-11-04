import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/Features/home/data/models/categories_product/categories_product_model.dart';
import 'package:dikkan/Features/home/data/models/categories_product/category_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryModel>>> getHomeCategory();
  Future<Either<Failure, List<AllProductModel2>>> fetchAllProducts(
      {required int limit, required int skip});
  Future<Either<Failure, List<AllProductModel>>> getCategoryProduct(
      {required String category});
}
