import 'package:flutter/material.dart';
import 'package:weather_app/core/Models/weather_model/weather_model.dart';
import 'package:weather_app/features/search/presentation/views/screens/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchViewBody(),
    );
  }
}
