import 'package:bloc/bloc.dart';
import 'package:dikkan/Features/home/data/models/categories_product/categories_product_model.dart';
import 'package:dikkan/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'categories_products_state.dart';

class CategoriesProductsCubit extends Cubit<CategoriesProductsState> {
  CategoriesProductsCubit(this.homeRepo) : super(CategoriesProductsInitial());

  final HomeRepo homeRepo;
  Future<void> getCategoriesProduct({required String category}) async {
    emit(CategoriesProductsLoading());
    var result = await homeRepo.getCategoryProduct(category: category);

    result.fold((failure) {
      emit(CategoriesProductsFailure(failure.errMessage));
    }, (categoriesProduct) {
      emit(CategoriesProductsSuccess(categoriesProduct));
    });
  }
}
