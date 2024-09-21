import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/utils/app_router.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/styles.dart';

class CustomWeatherAppBar extends StatelessWidget {
  const CustomWeatherAppBar({super.key, required this.location, required this.updatingTime});
  final String location;
  final String updatingTime;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location,
              style: Styles.textStyle19,
            ),
            SizedBox(height: 7),
            Text(
              updatingTime,
              style: Styles.textStyle18.copyWith(
                color: kFontBlack,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(RoutesName.kSearchView);
          },
          child: Image(
            image: AssetImage(ImageManager.searchGif),
            width: 30,
            height: 30,
          ),
        )
      ],
    );
  }
}
