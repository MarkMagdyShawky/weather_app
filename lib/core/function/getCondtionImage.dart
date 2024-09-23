String getConditionImage(String condition) {
  if (condition == 'Sunny') {
    return 'assets/images/conditions/sunny.json';
  }
  //
  else if (condition == 'clear') {
    return 'assets/images/conditions/clear.json';
  }
  //
  else if (condition == 'Partly cloudy') {
    return 'assets/images/conditions/partly-cloudy.png';
  }
  //
  else if (condition == 'Cloudy') {
    return 'assets/images/conditions/cloudy.json';
  }
  //
  else if (condition == 'Overcast') {
    return 'assets/images/conditions/overcast.png';
  }
  //
  else if (condition == 'Mist') {
    return 'assets/images/conditions/Mist.png';
  }
  //
  //
  else if (condition == 'Patchy rain possible' ||
      condition == 'Light rain shower' ||
      condition == 'Moderate or heavy rain shower' ||
      condition == 'Torrential rain shower' ||
      condition == 'Patchy light rain with thunder' ||
      condition == 'Moderate or heavy rain with thunder') {
    return 'assets/images/conditions/Patchy_rain_possible.json';
  }
  //
  else if (condition == 'Patchy snow possible' ||
      condition == 'Patchy light snow' ||
      condition == 'Light snow' ||
      condition == 'Patchy moderate snow' ||
      condition == 'Moderate snow' ||
      condition == 'Patchy heavy snow' ||
      condition == 'Heavy snow' ||
      condition == 'Ice pellets' ||
      condition == 'Light snow showers' ||
      condition == 'Moderate or heavy snow showers' ||
      condition == 'Light showers of ice pellets' ||
      condition == 'Moderate or heavy showers of ice pellets' ||
      condition == 'Patchy light snow with thunder' ||
      condition == 'Moderate or heavy snow with thunder') {
    return 'assets/images/conditions/Patchy_snow_possible.png';
  }
  //
  else if (condition == 'Patchy sleet possible' ||
      condition == 'Light freezing rain' ||
      condition == 'Moderate or heavy freezing rain' ||
      condition == 'Light sleet' ||
      condition == 'Moderate or heavy sleet' ||
      condition == 'Light sleet showers' ||
      condition == 'Moderate or heavy sleet showers') {
    return 'assets/images/conditions/sleet.png';
  }
  //
  else if (condition == 'Overcast') {
    return 'assets/images/conditions/overcast.png';
  }
  //
  else if (condition == 'Patchy freezing drizzle possible' ||
      condition == 'Freezing drizzle' ||
      condition == 'Heavy freezing drizzle') {
    return 'assets/images/conditions/freezing_drizzle.png';
  }
  //
  else if (condition == 'Thundery outbreaks possible') {
    return 'assets/images/conditions/thunderstorm.json';
  }
  //
  else if (condition == 'Blowing snow') {
    return 'assets/images/conditions/blowing_snow.png';
  }
  //
  else if (condition == 'Blizzard' || condition == 'Patchy light drizzle' || condition == 'Light drizzle') {
    return 'assets/images/conditions/blizzard.png';
  }
  //
  else if (condition == 'Fog' || condition == 'Freezing fog') {
    return 'assets/images/conditions/fog.png';
  }
  //

  else if (condition == 'Patchy light rain' ||
      condition == 'Light rain' ||
      condition == 'Moderate rain at times' ||
      condition == 'Moderate rain') {
    return 'assets/images/conditions/light_rain.json';
  }
  //
  else if (condition == 'Heavy rain at times' || condition == 'Heavy rain') {
    return 'assets/images/conditions/heavy_rain.json';
  }
  //
  return 'assets/images/conditions/clear.json';
}
