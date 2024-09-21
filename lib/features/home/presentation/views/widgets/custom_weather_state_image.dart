import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';

class CustomWeatherStateImage extends StatelessWidget {
  const CustomWeatherStateImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 160,
            height: 130,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: kShadowColor, blurRadius: 40, spreadRadius: 1)],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Lottie.asset(ImageManager.thunderstormJson, width: 230, height: 220),
        ],
      ),
    );
  }
}
