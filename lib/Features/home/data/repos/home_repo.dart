import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/Features/home/data/models/category_model/category.model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryModel>>> fetchHomeCategories();
  Future<Either<Failure, List<AllProductModel2>>> fetchAllProducts(
      {required int limit, required int skip});
  Future<Either<Failure, List<AllProductModel2>>> getCategoryProduct(
      {required String category});
}
