import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?q=subject:programming&key=AIzaSyBJwI9D1Wq51qB4hXbvbf7yOXRFF8zhZHQ",
      );
      List<BookModel> Books = [];
      for (var element in data["items"]) {
        Books.add(BookModel.fromJson(element));
      }
      return right(Books);
    } catch (e) {
      if (e is DioError) {
        return left(Servirefailure.fromDioerror(e));
      } else {
        return left(Servirefailure(errormessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
