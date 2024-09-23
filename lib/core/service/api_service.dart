import 'package:dio/dio.dart';

class ApiService {
  Dio _dio = Dio();

  String baseUrl = 'http://api.weatherapi.com/v1/';

  Future<Map<String, dynamic>> get(String endPoint) async {
    var response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
