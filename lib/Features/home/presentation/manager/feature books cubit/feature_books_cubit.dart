import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit() : super(FeatureBooksInitial());
}
