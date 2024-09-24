import 'package:flutter/material.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_current_weather_data.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_min_weather_card.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_weather_app_bar.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_weather_state_image.dart';

class SunnyViewBody extends StatelessWidget {
  const SunnyViewBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradientbackground(kSunnyColorList),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: kPadding30, right: kPadding20, left: kPadding20),
        child: ListView(
          children: <Widget>[
            CustomWeatherAppBar(
              location: weatherModel.location!.name.toString(),
              updatingTime:
                  '${DateTime.parse(weatherModel.current!.lastUpdated!).hour} : ${DateTime.parse(weatherModel.current!.lastUpdated!).minute}',
              locationColor: kFontWhite1,
              timeColor: kFontWhite2,
            ),
            CustomWeatherStateImage(image: ImageManager.thunderstormJson),
            const SizedBox(height: kPadding30),
            CustomCurrentWeatherData(
              weatherState: '${weatherModel.current!.condition!.text}',
              currentTemp: '${weatherModel.current!.tempC}',
              minTemp: '${weatherModel.forecast!.forecastday![0].day!.mintempC!}',
              maxTemp: '${weatherModel.forecast!.forecastday![0].day!.maxtempC!}',
              textsColor: kFontWhite1,
            ),
            Image(image: AssetImage(ImageManager.vectorLine)),
            const SizedBox(height: kPadding10),
            SizedBox(
              width: PageDimensions().pageWidth(context) - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: kPadding15),
                    decoration: BoxDecoration(
                      color: kFontBlack1.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: CustomMinWeatherCard(
                      date: '22/9',
                      image: ImageManager.cloudGif,
                      temp: '23',
                      textsColor: kFontWhite1,
                    ),
                  ),
                  CustomMinWeatherCard(
                    date: '22/9',
                    image: ImageManager.cloudGif,
                    temp: '23',
                    textsColor: kFontWhite1,
                  ),
                  // Current day

                  CustomMinWeatherCard(
                    date: '22/9',
                    image: ImageManager.cloudGif,
                    temp: '23',
                    textsColor: kFontWhite1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
