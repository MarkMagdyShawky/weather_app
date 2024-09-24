import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/service/weather_service.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());
  WeatherService weatherService;
  String? cityName;
  WeatherModel? weatherModel;

  Future<void> getWeather({required String locatin}) async {
    emit(WeatherLoading());

    emit(WeatherLoading());
    try {
      weatherModel = await weatherService.getWeather(location: locatin);
      emit(WeatherSuccess());
    } on Exception catch (e) {
      emit(WeatherFailure());
    }
  }
}
