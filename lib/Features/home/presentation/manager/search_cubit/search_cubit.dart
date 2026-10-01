import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.homeRepo}) : super(SearchInitial());
  final HomeRepo homeRepo;
  Future<void> getsearchebooks({required String textsearch}) async {
    emit((Searchloading()));
    var result = await homeRepo.fetchsearchrBooks(textsearch: textsearch);
    result.fold(
      (failure) {
        emit(Searchfailure(errmessage: failure.errormessage));
      },
      (books) {
        emit(Searchsuccess(books: books));
      },
    );
  }
}
