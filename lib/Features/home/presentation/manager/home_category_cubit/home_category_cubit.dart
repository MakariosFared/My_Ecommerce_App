import 'package:bloc/bloc.dart';
import 'package:dikkan/Features/home/data/models/categories_product/category_model.dart';
import 'package:dikkan/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'home_category_state.dart';

class HomeCategoryCubit extends Cubit<HomeCategoryState> {
  HomeCategoryCubit(this.homeRepo) : super(HomeCategoryInitial());

  final HomeRepo homeRepo;
  Future<void> getAllCategories() async {
    emit(HomeCategoryLoading());
    var result = await homeRepo.getHomeCategory();

    result.fold((failure) {
      emit(HomeCategoryFailure(failure.errMessage));
    }, (category) {
      emit(HomeCategorySuccess(category));
    });
  }
}
