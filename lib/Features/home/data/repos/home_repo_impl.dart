import 'package:dartz/dartz.dart';
import 'package:dikkan/Core/errors/failures.dart';
import 'package:dikkan/Core/utils/api_service.dart';
import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/Features/home/data/models/categories_product/categories_product_model.dart';
import 'package:dikkan/Features/home/data/models/categories_product/category_model.dart';
import 'package:dikkan/Features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<Either<Failure, List<CategoryModel>>> getHomeCategory() async {
    try {
      var data = await apiService.get(endPoint: "categories/");
      List<CategoryModel> categories = [];
      for (var item in data['products']) {
        categories.add(CategoryModel.fromJson(item));
      }
      // List<CategoryModel> categories =
      // data.map((item) => CategoryModel.fromJson(item)).toList();
      return Right(categories);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllProductModel>>> getCategoryProduct(
      {required String category}) async {
    try {
      var data = await apiService.get(endPoint: "products/");
      List<AllProductModel> categoriesProducts = [];
      for (var item in data["products"]) {
        if (item['category']['name'] == category && item['images'] != null) {
          categoriesProducts.add(AllProductModel.fromJson(item));
        }
      }
      // List<AllProductModel> categoriesProducts =
      //     data.map((item) => AllProductModel.fromJson(item)).toList();

      return Right(categoriesProducts);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllProductModel2>>> fetchAllProducts() async {
    try {
      var data = await apiService.get(endPoint: "products/");
      // log(data.toString());
      List<AllProductModel2> products = [];
      for (var item in data["products"]) {
        products.add(AllProductModel2.fromJson(item));
      }
      // print('data = $data');

      return Right(products);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }
}
