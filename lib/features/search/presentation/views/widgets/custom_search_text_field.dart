import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
      onChanged: (value) => cityName = value,
      onSubmitted: (value) {
        BlocProvider.of<WeatherCubit>(context).featchWeather(location: cityName!);
        BlocProvider.of<WeatherCubit>(context).cityName = cityName;
        print(cityName);
        GoRouter.of(context).pop(context);
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
              BlocProvider.of<WeatherCubit>(context).featchWeather(location: cityName ?? '');
              BlocProvider.of<WeatherCubit>(context).cityName = cityName;
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
