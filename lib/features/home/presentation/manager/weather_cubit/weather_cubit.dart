import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.homeRepo}) : super(WeatherInitial());

  HomeRepo homeRepo;

  Future<void> fetchWeatherData({required String locatin}) async {
    emit(WeatherLoading());

    var result = await homeRepo.featchWeather(locatin);

    result.fold((failur) {
      return emit(WeatherFailure(errMessage: failur.errMessage));
    }, (weather) {
      return emit(WeatherSuccess(weatherModel: weather));
    });
  }
}
