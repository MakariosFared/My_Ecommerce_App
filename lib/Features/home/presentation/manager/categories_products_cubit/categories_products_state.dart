part of 'categories_products_cubit.dart';

sealed class CategoriesProductsState extends Equatable {
  const CategoriesProductsState();

  @override
  List<Object> get props => [];
}

final class CategoriesProductsInitial extends CategoriesProductsState {}

final class CategoriesProductsLoading extends CategoriesProductsState {}

final class CategoriesProductsFailure extends CategoriesProductsState {
  final String errMessage;

  const CategoriesProductsFailure(this.errMessage);
}

final class CategoriesProductsSuccess extends CategoriesProductsState {
  final List<AllProductModel> categoriesProduct;

  const CategoriesProductsSuccess(this.categoriesProduct);
}
