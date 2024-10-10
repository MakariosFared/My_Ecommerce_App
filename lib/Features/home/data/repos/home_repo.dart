import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Features/home/data/models/all_product/category_product.model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryModel>>> getHomeCategory();
}
