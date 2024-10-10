part of 'home_category_cubit.dart';

sealed class HomeCategoryState extends Equatable {
  const HomeCategoryState();

  @override
  List<Object> get props => [];
}

final class HomeCategoryInitial extends HomeCategoryState {}

final class HomeCategoryLoading extends HomeCategoryState {}

final class HomeCategoryFailure extends HomeCategoryState {
  final String errMessage;
  const HomeCategoryFailure(this.errMessage);
}

final class HomeCategorySuccess extends HomeCategoryState {
  final List<CategoryModel> categories;
  const HomeCategorySuccess(this.categories);
}
