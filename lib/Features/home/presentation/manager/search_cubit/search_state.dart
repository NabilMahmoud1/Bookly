part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class Searchloading extends SearchState {}

final class Searchfailure extends SearchState {
  final String errmessage;

  const Searchfailure({required this.errmessage});
}

final class Searchsuccess extends SearchState {
  final List<Bookmodel> books;

  const Searchsuccess({required this.books});
}
