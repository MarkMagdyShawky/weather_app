// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/errors/failure.dart';
import 'package:weather_app/core/service/api_service.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, WeatherModel>> featchWeather(String location) async {
    String key = '92dc0707c053471b85901243242109';
    String endPoint = 'forecast.json?key=$key&aqi=no&alerts=no&&q=$location&days=4';

    try {
      WeatherModel response = await apiService.fetchWeather(endPoint: endPoint);

      return right(response);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
