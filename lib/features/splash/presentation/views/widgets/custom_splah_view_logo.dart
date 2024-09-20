import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/image_manager.dart';

class CustomSplashViewLogo extends StatelessWidget {
  const CustomSplashViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(ImageManager.appLogo),
      width: 200,
      height: 200,
    );
  }
}
