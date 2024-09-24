import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/utils/app_router.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/core/widget/custom_button.dart';

class CustomHomeSection2 extends StatelessWidget {
  CustomHomeSection2({super.key});
  WeatherModel? weatherModel;
  @override
  Widget build(BuildContext context) {
    void onPressed() {
      GoRouter.of(context).push(RoutesName.kSearchView, extra: weatherModel);
    }

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "No Weather Yet ",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold, color: kGreenColor),
              ),
              Image(
                image: AssetImage(ImageManager.noEntryGif),
                width: 32,
                height: 32,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding30),
            child: Text(
              "Search now for your location ",
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold, color: kGreenColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding30),
            child: SizedBox(
              width: PageDimensions().pageWidth(context),
              child: CustomButton(
                onPressed: onPressed,
                backgroundColor: kGreenColor,
                textColor: kFontWhite1,
                text: 'Get Start',
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
