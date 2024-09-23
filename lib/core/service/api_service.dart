// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  String baseUrl = 'http://api.weatherapi.com/v1/';
  ApiService();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
