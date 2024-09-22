import 'package:equatable/equatable.dart';

import 'forecastday.dart';

class Forecast extends Equatable {
  final List<Forecastday>? forecastday;

  const Forecast({this.forecastday});

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
        forecastday: (json['forecastday'] as List<dynamic>?)
            ?.map((e) => Forecastday.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'forecastday': forecastday?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [forecastday];
}
