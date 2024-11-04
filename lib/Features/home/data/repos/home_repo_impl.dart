import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Core/utils/api_service.dart';
import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/Features/home/data/models/category_model/category.model.dart';
import 'package:dikkan/Features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchHomeCategories() async {
    try {
      var data = await apiService.get(endPoint: "products/categories");

      List<CategoryModel> categories = [];
      if (data is List) {
        categories = data.map((item) => CategoryModel.fromJson(item)).toList();
      } else if (data is Map) {
        for (var item in data["categories"]) {
          categories.add(CategoryModel.fromJson(item));
        }
      }
      return Right(categories);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllProductModel2>>> getCategoryProduct(
      {required String category, required int limit, required int skip}) async {
    try {
      var data =
          await apiService.get(endPoint: "products?limit=$limit&skip=$skip");
      List<AllProductModel2> categoriesProducts = [];
      for (var item in data["products"]) {
        if (item['category'] == category) {
          categoriesProducts.add(AllProductModel2.fromJson(item));
        }
      }
      return Right(categoriesProducts);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllProductModel2>>> fetchAllProducts(
      {required int limit, required int skip}) async {
    try {
      var data =
          await apiService.get(endPoint: "products?limit=$limit&skip=$skip");
      List<AllProductModel2> products = [];
      for (var item in data["products"]) {
        products.add(AllProductModel2.fromJson(item));
      }
      return Right(products);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
