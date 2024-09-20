import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/core/widget/custom_button.dart';

class CustomHomeSection2 extends StatelessWidget {
  const CustomHomeSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "No Weather yet ",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              Image(
                image: AssetImage(ImageManager.noEntryGif),
                width: 32,
                height: 32,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Search now for your location ",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: PageDimensions().pageWidth(context),
            child: CustomButton(
              backgroundColor: kGreenColor,
              textColor: kFontWhite,
              text: 'Get Start',
              borderRadius: BorderRadius.circular(35),
            ),
          ),
        ],
      ),
    );
  }
}
