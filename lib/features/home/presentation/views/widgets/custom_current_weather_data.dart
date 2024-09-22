import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/utils/padding_manager.dart';

import '../../../../../core/utils/styles.dart';

class CustomCurrentWeatherData extends StatelessWidget {
  const CustomCurrentWeatherData({
    super.key,
    required this.weatherState,
    required this.currentTemp,
    required this.minTemp,
    required this.maxTemp,
    required this.textsColor,
  });

  final String weatherState;
  final String currentTemp;
  final String minTemp;
  final String maxTemp;
  final Color textsColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          weatherState,
          style: Styles.textStyle24
              .copyWith(fontFamily: 'PingFang SC', color: textsColor),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: kPadding10),
        Text(
          "$currentTemp°",
          style: Styles.textStyle48.copyWith(
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
              color: textsColor),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: kPadding10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "Min: $minTemp°",
              style: Styles.textStyle22.copyWith(color: textsColor),
              textAlign: TextAlign.center,
            ),
            Text(
              "Max: $maxTemp°",
              style: Styles.textStyle22.copyWith(color: textsColor),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
