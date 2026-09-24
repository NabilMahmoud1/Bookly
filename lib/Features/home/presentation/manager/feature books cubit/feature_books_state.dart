part of 'feature_books_cubit.dart';

@immutable
sealed class FeatureBooksState {}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksloading extends FeatureBooksState {}

final class FeatureBooksfailure extends FeatureBooksState {
  final String errormessage;

  FeatureBooksfailure({required this.errormessage});
}

final class FeatureBookssucces extends FeatureBooksState {
  final List<BookModel> books;

  FeatureBookssucces({required this.books});
}
