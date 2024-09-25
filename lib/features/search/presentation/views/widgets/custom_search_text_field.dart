import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/utils/app_router.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/features/home/presentation/manager/weather_cubit/weather_cubit.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data) {
        cityName = data;
      },
      onSubmitted: (data) async {
        cityName = data;

        BlocProvider.of<WeatherCubit>(context).getWeather(locatin: cityName!);
        BlocProvider.of<WeatherCubit>(context).cityName = cityName;
        Navigator.pop(context);
      },
      style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        hintText: 'Enter location',
        hintStyle: Styles.textStyle16,
        contentPadding: EdgeInsets.only(left: kPadding15, right: kPadding40),
        enabledBorder: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
        fillColor: kFontWhite1.withOpacity(0.4),
        filled: true,
        suffixIcon: Padding(
          padding: EdgeInsets.all(kPadding10),
          child: GestureDetector(
            onTap: () {
              if (cityName == null) {
                GoRouter.of(context).pushReplacement(RoutesName.kOnboardingView);
                return null;
              }
              BlocProvider.of<WeatherCubit>(context).getWeather(locatin: cityName!);
              GoRouter.of(context).pop(context);
            },
            child: Image(
              image: AssetImage(ImageManager.searchGif),
              width: 35,
              height: 35,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(35),
      borderSide: BorderSide(
        color: kFontWhite1.withOpacity(0.4),
      ),
    );
  }
}
