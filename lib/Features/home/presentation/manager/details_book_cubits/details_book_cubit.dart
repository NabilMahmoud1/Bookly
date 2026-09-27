import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'details_book_state.dart';

class DetailsBookCubit extends Cubit<DetailsBookState> {
  DetailsBookCubit({required this.homeRepo}) : super(DetailsBookInitial());

  final HomeRepo homeRepo;
  Future<void> getsimilerebooks({required String catagray}) async {
    emit((DetailsBookloading()));
    var result = await homeRepo.fetchsimilerBooks(Catagray: catagray);
    result.fold(
      (Failure) {
        emit(DetailsBookfailure(errmessage: Failure.errormessage));
      },
      (books) {
        emit(DetailsBooksuccess(books: books));
      },
    );
  }
}
