import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Core/utils/api_service.dart';
import 'package:dikkan/Features/home/data/models/all_product/category_product.model.dart';
import 'package:dikkan/Features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<Either<Failure, List<CategoryModel>>> getHomeCategory() async {
    try {
      var data = await apiService.get(endPoint: "categories/");
      // List<CategoryModel> categories = [];
      // for (var item in data.values) {
      //   categories.add(CategoryModel.fromJson(item));
      // }
      List<CategoryModel> categories =
          data.map((item) => CategoryModel.fromJson(item)).toList();

      return Right(categories);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }
}
