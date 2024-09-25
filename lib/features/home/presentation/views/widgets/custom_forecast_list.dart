import 'package:flutter/material.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/function/check_image_extention.dart';
import 'package:weather_app/core/function/get_condtion_image.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_min_weather_card.dart';

class CustomForecastList extends StatelessWidget {
  const CustomForecastList({super.key, required this.weatherModel, required this.textColor});
  final WeatherModel weatherModel;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: PageDimensions().pageWidth(context) - 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: kPadding15, horizontal: 3),
            decoration: BoxDecoration(
              color: kFontBlack1.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: CustomMinWeatherCard(
              date:
                  '${DateTime.parse(weatherModel.forecast!.forecastday![0].date!).month}/${DateTime.parse(weatherModel.forecast!.forecastday![0].date!).day}',
              image: getConditionImage(weatherModel.current!.condition!.text!.trim().toLowerCase()),
              temp: '${weatherModel.current!.tempC!}',
              textsColor: textColor,
            ),
          ),
          CustomMinWeatherCard(
            date:
                '${DateTime.parse(weatherModel.forecast!.forecastday![1].date!).month}/${DateTime.parse(weatherModel.forecast!.forecastday![1].date!).day}',
            image: getConditionImage(
                weatherModel.forecast!.forecastday![1].day!.condition!.text!.trim().toLowerCase()),
            temp: '${weatherModel.forecast!.forecastday![1].day!.avgtempC!}',
            textsColor: textColor,
          ),
          // Current day
          CustomMinWeatherCard(
            date:
                '${DateTime.parse(weatherModel.forecast!.forecastday![2].date!).month}/${DateTime.parse(weatherModel.forecast!.forecastday![2].date!).day}',
            image: getConditionImage(
                weatherModel.forecast!.forecastday![2].day!.condition!.text!.trim().toLowerCase()),
            temp: '${weatherModel.forecast!.forecastday![2].day!.avgtempC!}',
            textsColor: textColor,
          ),
          CustomMinWeatherCard(
            date:
                '${DateTime.parse(weatherModel.forecast!.forecastday![3].date!).month}/${DateTime.parse(weatherModel.forecast!.forecastday![3].date!).day}',
            image: getConditionImage(
                weatherModel.forecast!.forecastday![3].day!.condition!.text!.trim().toLowerCase()),
            temp: '${weatherModel.forecast!.forecastday![3].day!.avgtempC!}',
            textsColor: textColor,
          ),
        ],
      ),
    );
  }
}
