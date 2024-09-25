import 'package:flutter/material.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/core/utils/color_manager.dart';
import 'package:weather_app/core/utils/gradient_manager.dart';
import 'package:weather_app/core/utils/padding_manager.dart';
import 'package:weather_app/core/utils/pageDimensions.dart';
import 'package:weather_app/core/utils/styles.dart';
import 'package:weather_app/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradientbackground(kMainBackgroundColorList),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kPadding20, right: kPadding20, top: kPadding50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Search for any location",
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            CustomSearchTextField(),
          ],
        ),
      ),
    );
  }
}
