import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Features/home/data/models/category/category.model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryModel>>> getHomeCategory();
}
