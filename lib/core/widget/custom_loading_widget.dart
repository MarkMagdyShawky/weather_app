import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/color_manager.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: kPrimaryColor,
        strokeCap: StrokeCap.round,
        color: kSecondColor,
        strokeWidth: 10,
        strokeAlign: 3,
      ),
    );
  }
}
