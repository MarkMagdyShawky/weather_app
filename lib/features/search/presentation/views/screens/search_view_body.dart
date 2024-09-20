import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: kPadding20, vertical: kPadding35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Search For any Countery",
              style: Styles.textStyle22,
            ),
            CustomSearchTextField(),
          ],
        ),
      ),
    );
  }
}
