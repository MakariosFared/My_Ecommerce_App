import 'package:bloc/bloc.dart';
import 'package:dikkan/Features/home/data/models/categories_product/categories_product_model.dart';
import 'package:dikkan/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'all_product_state.dart';

class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit(this.homeRepo) : super(AllProductInitial());

  final HomeRepo homeRepo;
  Future<void> getAllCategories() async {
    emit(AllProductLoading());
    var result = await homeRepo.getAllProduct();

    result.fold((failure) {
      emit(AllProductFailure(failure.errMessage));
    }, (allProduct) {
      emit(AllProductSuccess(allProduct));
    });
  }
}
