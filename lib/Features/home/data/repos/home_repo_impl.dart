import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        endpoint: "volumes?q=maths&key=AIzaSyBJwI9D1Wq51qB4hXbvbf7yOXRFF8zhZHQ",
      );
      // print(data);
      //https://www.googleapis.com/books/v1/volumes?q=subject:programming&orderBy=newest&key=AIzaSyBJwI9D1Wq51qB4hXbvbf7yOXRFF8zhZHQ
      List<Bookmodel> Books = [];
      for (var element in data["items"] ?? []) {
        Books.add(Bookmodel.fromJson(element));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(Servirefailure.fromDioerror(e));
      } else {
        return left(Servirefailure(errormessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?q=footbool&key=AIzaSyBJwI9D1Wq51qB4hXbvbf7yOXRFF8zhZHQ",
      );
      print(data);
      // https: //www.googleapis.com/books/v1/volumes?q=subject:programming&orderBy=newest&key=AIzaSyBJwI9D1Wq51qB4hXbvbf7yOXRFF8zhZHQ
      List<Bookmodel> Books = [];
      for (var element in data["items"] ?? []) {
        Books.add(Bookmodel.fromJson(element));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(Servirefailure.fromDioerror(e));
      } else {
        return left(Servirefailure(errormessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchsimilerBooks({
    required String Catagray,
  }) async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?q=subject:$Catagray&key=AIzaSyBJwI9D1Wq51qB4hXbvbf7yOXRFF8zhZHQ$orderBy:n",
      );
      List<Bookmodel> Books = [];
      for (var element in data["items"]) {
        Books.add(Bookmodel.fromJson(element));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(Servirefailure.fromDioerror(e));
      } else {
        return left(Servirefailure(errormessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> fetchsearchrBooks({
    required String textsearch,
  }) async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?q=$textsearch&key=AIzaSyBJwI9D1Wq51qB4hXbvbf7yOXRFF8zhZHQ",
      );
      print(data);
      List<Bookmodel> Books = [];
      for (var element in data["items"] ?? []) {
        Books.add(Bookmodel.fromJson(element));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(Servirefailure.fromDioerror(e));
      } else {
        return left(Servirefailure(errormessage: e.toString()));
      }
    }
  }
}
