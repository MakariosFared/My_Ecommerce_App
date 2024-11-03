part of 'all_product_cubit.dart';

sealed class AllProductState extends Equatable {
  const AllProductState();

  @override
  List<Object> get props => [];
}

final class AllProductInitial extends AllProductState {}

final class AllProductLoading extends AllProductState {}

final class AllProductSuccess extends AllProductState {
  final List<AllProductModel2> allProduct;

  const AllProductSuccess(this.allProduct);
}

final class AllProductFailure extends AllProductState {
  final String errMessage;

  const AllProductFailure(this.errMessage);
}
