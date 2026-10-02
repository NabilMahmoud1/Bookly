import 'package:dio/dio.dart';

abstract class Failure {
  final String errormessage;

  Failure({required this.errormessage});
}

class Servirefailure extends Failure {
  Servirefailure({required super.errormessage});

  factory Servirefailure.fromDioerror(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return Servirefailure(errormessage: "connectiontimout");

      case DioExceptionType.sendTimeout:
        return Servirefailure(errormessage: "sendtimout");

      case DioExceptionType.receiveTimeout:
        return Servirefailure(errormessage: "receivetimout");

      case DioExceptionType.badCertificate:
        return Servirefailure(errormessage: "badCertificate");

      case DioExceptionType.badResponse:
        return Servirefailure.fromResponse(
          dioerror.response!.statusCode!,
          dioerror.response!.data!,
        );
      case DioExceptionType.cancel:
        return Servirefailure(errormessage: "cancel");

      case DioExceptionType.connectionError:
        return Servirefailure(errormessage: "No Internet Connection");

      case DioExceptionType.unknown:
        return Servirefailure(errormessage: "unknown");

      case DioExceptionType.transformTimeout:
        return Servirefailure(errormessage: "transformTimeout");
    }
  }
  factory Servirefailure.fromResponse(int statescode, dynamic responce) {
    if (statescode == 400 || statescode == 401 || statescode == 403) {
      return Servirefailure(errormessage: responce["error"]["message"]);
    } else if (statescode == 404) {
      return Servirefailure(errormessage: 'Not Found');
    } else if (statescode == 500) {
      return Servirefailure(errormessage: 'internet server');
    } else {
      return Servirefailure(
        errormessage: "No result relatted there arre errors please try again!!",
      );
    }
  }
}
