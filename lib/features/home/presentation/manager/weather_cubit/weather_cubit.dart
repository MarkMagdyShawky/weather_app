import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';
import 'package:weather_app/features/home/data/repos/home_repo_impl.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  var result;
  Future<void> featchWeather({required String location}) async {
    emit(WeatherLoading());

    var result = await HomeRepoImpl().featchWeather(location);

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
