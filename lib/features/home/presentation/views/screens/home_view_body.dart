import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:lottie/lottie.dart';

import 'package:weather_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:weather_app/features/home/presentation/views/widgets/custom_home_section2.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradientbackground(kMainHomeBackgroundColorList),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: kPadding20, left: kPadding20, top: kPadding40),
            child: CustomAppBar(),
          ),
          Lottie.asset(ImageManager.worldJson),
          CustomHomeSection2(),
        ],
      ),
    );
  }
}
