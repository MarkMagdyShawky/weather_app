import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_weather_app_bar.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_weather_state_image.dart';

class ThunderstormViewBody extends StatelessWidget {
  const ThunderstormViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearCenterGradientbackground(kThunderstormColorList),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: kPadding45, right: kPadding20, left: kPadding20),
        child: ListView(
          children: <Widget>[
            CustomWeatherAppBar(location: "San Fransisco", updatingTime: '11:00'),
            CustomWeatherStateImage(
              image: ImageManager.thunderstormJson,
            ),
          ],
        ),
      ),
    );
  }
}
