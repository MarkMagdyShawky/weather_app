import 'package:dio/dio.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  String baseUrl = 'http://api.weatherapi.com/v1/';

  Future<WeatherModel> fetchWeather({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint}');
    print('====>>>>>>>>>$response');
    return WeatherModel.fromJson(response.data);
  }
}
