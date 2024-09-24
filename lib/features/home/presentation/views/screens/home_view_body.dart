import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/function/get_ui_from_condtion_code.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/core/widget/custom_error_widget.dart';
import 'package:weather_app/features/home/presentation/manager/weather_cubit/weather_cubit.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel? weatherData = BlocProvider.of<WeatherCubit>(context).weatherModel!;

    return Container(
        width: PageDimensions().pageWidth(context),
        height: PageDimensions().pageHeight(context),
        decoration: BoxDecoration(
          gradient: LinearGradientbackground(kMainHomeBackgroundColorList),
        ),
        child: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherSuccess) {
              weatherData = BlocProvider.of<WeatherCubit>(context).weatherModel;
              return getUI(weatherData!.current!.condition!.code!, weatherData!);
            } else if (state is WeatherFailure) {
              return CustomErrorWidget(errMessage: 'Ahaaa');
            } else {
              return getUI(weatherData!.current!.condition!.code!, weatherData!);
            }
          },
        ));
  }
}
