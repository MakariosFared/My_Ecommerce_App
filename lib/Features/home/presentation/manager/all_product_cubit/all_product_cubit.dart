import 'package:bloc/bloc.dart';
import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'all_product_state.dart';

class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit(this.homeRepo) : super(AllProductInitial());

  final HomeRepo homeRepo;
  Future<void> getAllCategories() async {
    emit(AllProductLoading());
    var result = await homeRepo.fetchAllProducts(limit: 20, skip: 20);

    result.fold((failure) {
      emit(AllProductFailure(failure.errMessage));
    }, (allProduct) {
      emit(AllProductSuccess(allProduct));
    });
  }
}
