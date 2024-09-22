import 'package:equatable/equatable.dart';

import 'current.model.dart';
import 'forecast.model.dart';
import 'location.model.dart';

class Weather extends Equatable {
  final Location? location;
  final Current? current;
  final Forecast? forecast;

  const Weather({this.location, this.current, this.forecast});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        location: json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
        current: json['current'] == null
            ? null
            : Current.fromJson(json['current'] as Map<String, dynamic>),
        forecast: json['forecast'] == null
            ? null
            : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'current': current?.toJson(),
        'forecast': forecast?.toJson(),
      };

  @override
  List<Object?> get props => [location, current, forecast];
}
