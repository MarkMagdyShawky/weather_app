import 'package:dartz/dartz.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<WeatherModel>>> featchWeather();
}
