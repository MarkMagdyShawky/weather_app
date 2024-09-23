import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.homeRepo}) : super(WeatherInitial());
  HomeRepo homeRepo;

  Future<void> featchWeather({required String location}) async {
    emit(WeatherLoading());

    var result = await homeRepo.featchWeather(location: location);

    result.fold(
      (failure) {
        return WeatherFailure(errMessage: failure.errMessage);
      },
      (weather) {
        return WeatherSuccess(weatherModel: weather);
      },
    );
  }
}
