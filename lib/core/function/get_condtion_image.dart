String getConditionImage(String condition) {
  if (condition == 'sunny') {
    return 'assets/images/conditions/sunny.json';
  }
  //
  else if (condition == 'clear') {
    return 'assets/images/conditions/clear.json';
  }
  //
  else if (condition == 'partly cloudy') {
    return 'assets/images/conditions/partly_cloudy.png';
  }
  //
  else if (condition == 'cloudy') {
    return 'assets/images/conditions/cloudy.json';
  }
  //
  else if (condition == 'overcast') {
    return 'assets/images/conditions/overcast.png';
  }
  //
  else if (condition == 'mist') {
    return 'assets/images/conditions/Mist.png';
  }
  //
  //
  else if (condition == 'patchy rain possible' ||
      condition == 'patchy rain nearby' ||
      condition == 'light rain shower' ||
      condition == 'moderate or heavy rain shower' ||
      condition == 'torrential rain shower' ||
      condition == 'patchy light rain with thunder' ||
      condition == 'moderate or heavy rain with thunder') {
    return 'assets/images/conditions/Patchy_rain_possible.json';
  }
  //
  else if (condition == 'patchy snow possible' ||
      condition == 'patchy light snow' ||
      condition == 'light snow' ||
      condition == 'patchy moderate snow' ||
      condition == 'moderate snow' ||
      condition == 'patchy heavy snow' ||
      condition == 'heavy snow' ||
      condition == 'ice pellets' ||
      condition == 'light snow showers' ||
      condition == 'moderate or heavy snow showers' ||
      condition == 'light showers of ice pellets' ||
      condition == 'moderate or heavy showers of ice pellets' ||
      condition == 'patchy light snow with thunder' ||
      condition == 'moderate or heavy snow with thunder') {
    return 'assets/images/conditions/Patchy_snow_possible.png';
  }
  //
  else if (condition == 'patchy sleet possible' ||
      condition == 'light freezing rain' ||
      condition == 'moderate or heavy freezing rain' ||
      condition == 'light sleet' ||
      condition == 'moderate or heavy sleet' ||
      condition == 'light sleet showers' ||
      condition == 'moderate or heavy sleet showers') {
    return 'assets/images/conditions/sleet.png';
  }
  //
  else if (condition == 'overcast') {
    return 'assets/images/conditions/overcast.png';
  }
  //
  else if (condition == 'patchy freezing drizzle possible' ||
      condition == 'freezing drizzle' ||
      condition == 'heavy freezing drizzle') {
    return 'assets/images/conditions/freezing_drizzle.png';
  }
  //
  else if (condition == 'thundery outbreaks possible') {
    return 'assets/images/conditions/thunderstorm.json';
  }
  //
  else if (condition == 'blowing snow') {
    return 'assets/images/conditions/blowing_snow.png';
  }
  //
  else if (condition == 'blizzard' || condition == 'patchy light drizzle' || condition == 'light drizzle') {
    return 'assets/images/conditions/blizzard.png';
  }
  //
  else if (condition == 'fog' || condition == 'freezing fog') {
    return 'assets/images/conditions/fog.png';
  }
  //

  else if (condition == 'patchy light rain' ||
      condition == 'light rain' ||
      condition == 'moderate rain at times' ||
      condition == 'moderate rain') {
    return 'assets/images/conditions/light_rain.json';
  }
  //
  else if (condition == 'heavy rain at times' || condition == 'heavy rain') {
    return 'assets/images/conditions/heavy_rain.json';
  }
  //
  return 'assets/images/conditions/clear.json';
}
