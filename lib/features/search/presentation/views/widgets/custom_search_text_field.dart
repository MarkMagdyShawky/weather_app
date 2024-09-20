import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/image_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        hintText: 'Enter location',
        hintStyle: Styles.textStyle16,
        contentPadding: EdgeInsets.only(left: kPadding15, right: kPadding40),
        enabledBorder: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
        fillColor: kFontWhite.withOpacity(0.4),
        filled: true,
        suffixIcon: Padding(
          padding: EdgeInsets.all(kPadding10),
          child: GestureDetector(
            onTap: () {},
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
        color: kFontWhite.withOpacity(0.4),
      ),
    );
  }
}
