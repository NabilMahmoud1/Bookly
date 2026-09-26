import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;
  Future<void> getfeaturebooks() async {
    emit(FeatureBooksloading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold(
      (Failure) {
        emit(FeatureBooksfailure(errormessage: Failure.errormessage));
      },
      (books) {
        emit(FeatureBookssucces(books: books));
      },
    );
  }
}
