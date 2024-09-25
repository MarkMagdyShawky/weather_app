import 'package:flutter/material.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/function/get_condtion_image.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_current_weather_data.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_forecast_list.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_min_weather_card.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_weather_app_bar.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_weather_state_image.dart';

class ThunderstormViewBody extends StatelessWidget {
  const ThunderstormViewBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearCenterGradientbackground(kThunderstormColorList),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: kPadding30, right: kPadding20, left: kPadding20),
        child: ListView(
          children: <Widget>[
            CustomWeatherAppBar(
              location: weatherModel.location!.name.toString(),
              updatingTime:
                  '${DateTime.parse(weatherModel.current!.lastUpdated!).hour} : ${DateTime.parse(weatherModel.current!.lastUpdated!).minute}',
              locationColor: kFontBlack1,
              timeColor: kFontBlack2,
            ),
            CustomWeatherStateImage(
              image: getConditionImage(
                weatherModel.current!.condition!.text!.trim().toLowerCase(),
              ),
            ),
            const SizedBox(height: kPadding30),
            CustomCurrentWeatherData(
              weatherState: '${weatherModel.current!.condition!.text}',
              currentTemp: '${weatherModel.current!.tempC}',
              minTemp: '${weatherModel.forecast!.forecastday![0].day!.mintempC!}',
              maxTemp: '${weatherModel.forecast!.forecastday![0].day!.maxtempC!}',
              textsColor: kFontBlack1,
            ),
            Image(image: AssetImage(ImageManager.vectorLine)),
            const SizedBox(height: kPadding10),
            CustomForecastList(weatherModel: weatherModel, textColor: kFontWhite1),
          ],
        ),
      ),
    );
  }
}
