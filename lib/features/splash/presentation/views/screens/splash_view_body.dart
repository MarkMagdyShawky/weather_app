import 'package:flutter/material.dart';
import 'package:lordicon/lordicon.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradientbackground(kColor1, kColor1),
      ),
      child: Center(
        child: Image(
          image: AssetImage(ImageManager.cloudGif),
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
