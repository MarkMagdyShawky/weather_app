import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Weather',
          style: Styles.textStyleLogo,
        ),
        GestureDetector(
          onTap: () {},
          child: Image(
            image: AssetImage(ImageManager.searchGif),
            width: 40,
            height: 40,
          ),
        )
      ],
    );
  }
}
