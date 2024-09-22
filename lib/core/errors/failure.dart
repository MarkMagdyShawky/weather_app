import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Recive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(
            errMessage: 'Please check your internet connection and try again');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errMessage: 'Internet connection error');
        }
        return ServerFailure(errMessage: 'Unexpected error , please try again');
    }
  }

  factory ServerFailure.fromBadResponse(int stateCode, dynamic response) {
    if (stateCode == 400 || stateCode == 401 || stateCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (stateCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please try  later!');
    } else if (stateCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server error, Please try  later!');
    } else {
      return ServerFailure(
          errMessage: 'Opps There was an Error, Please try again');
    }
  }
}
