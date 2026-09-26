import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Bookmodel>>> fetchFeatureBooks();
}
