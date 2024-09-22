import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/styles.dart';

class CustomMinWeatherCard extends StatelessWidget {
  const CustomMinWeatherCard({
    super.key,
    required this.date,
    required this.image,
    required this.temp,
    required this.textsColor,
  });

  final String date;
  final String image;
  final String temp;
  final Color textsColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          date,
          style: Styles.textStyle20.copyWith(color: textsColor),
        ),
        const SizedBox(height: kPadding10),
        Image(
          image: AssetImage(image),
          width: 60,
          height: 60,
        ),
        const SizedBox(height: kPadding10),
        Text(
          "$temp°",
          style: Styles.textStyle20.copyWith(color: textsColor),
        ),
      ],
    );
  }
}
