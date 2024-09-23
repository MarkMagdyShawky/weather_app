import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/errors/failure.dart';
import 'package:weather_app/core/service/api_service.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  // final ApiService apiService;
//
  // HomeRepoImpl();

  @override
  Future<Either<Failure, WeatherModel>> featchWeather(String location) async {
    String key = '92dc0707c053471b85901243242109';

    String endPoint = 'forecast.json?key=$key&q=$location&days=4';

    try {
      WeatherModel weatherModel;

      var response = await ApiService().get(endPoint: endPoint);

      weatherModel = WeatherModel.fromJson(response);

      return right(weatherModel);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
