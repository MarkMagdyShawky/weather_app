import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/core/Models/weather_model/weather_model.dart';

class WeatherService {
  Future<WeatherModel> getWeather({required String location}) async {
    String baseUrl = 'http://api.weatherapi.com/v1/';
    String key = '92dc0707c053471b85901243242109';
    String endPoint = 'forecast.json?key=$key&aqi=no&alerts=no&q=$location&days=4';

    Uri url = Uri.parse('$baseUrl$endPoint');
    http.Response response = await http.get(url);

    if (response.statusCode == 400) {
      var data = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(response.body);
    print('=======>>======>>>>>>$data');
    WeatherModel weatherModel = WeatherModel.fromJson(data);

    return weatherModel;
  }
}
