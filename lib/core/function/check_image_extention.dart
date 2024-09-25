import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget checkImageExtention(String image, double width, double height) {
  if (image.endsWith('.json')) {
    return Lottie.asset(image, width: width, height: height);
  } else {
    return Image(image: AssetImage(image), width: width, height: height);
  }
}
