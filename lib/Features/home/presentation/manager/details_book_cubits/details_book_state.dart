part of 'details_book_cubit.dart';

sealed class DetailsBookState extends Equatable {
  const DetailsBookState();

  @override
  List<Object> get props => [];
}

final class DetailsBookInitial extends DetailsBookState {}

final class DetailsBookloading extends DetailsBookState {}

final class DetailsBookfailure extends DetailsBookState {
  final String errmessage;

  const DetailsBookfailure({required this.errmessage});
}

final class DetailsBooksuccess extends DetailsBookState {
  final List<Bookmodel> books;

  DetailsBooksuccess({required this.books});
}
