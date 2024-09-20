import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.onPressed,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 30,
          shadowColor: backgroundColor.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(15),
          ),
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          textStyle: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 22),
            ),
            Image(
              image: AssetImage(ImageManager.fireworkGif),
              width: 35,
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
