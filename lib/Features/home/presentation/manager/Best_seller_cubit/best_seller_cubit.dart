import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';

import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());

  final HomeRepo homeRepo;
  Future<void> getbestsellerbooks() async {
    emit(BestSellerloading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold(
      (Failure) {
        emit(BestSellerfailure(Failure.errormessage));
      },
      (books) {
        emit(BestSellersuccess(books));
      },
    );
  }
}
