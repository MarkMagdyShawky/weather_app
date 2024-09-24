// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'weather_cubit.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {}

class WeatherFailure extends WeatherState {}
