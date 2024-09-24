import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/myApp.dart';
import 'package:weather_app/core/service/weather_service.dart';
import 'package:weather_app/features/home/presentation/manager/weather_cubit/weather_cubit.dart';

void main() {
  runApp(BlocProvider(
      create: (context) {
        return WeatherCubit(WeatherService());
      },
      child: MyApp()));
}
