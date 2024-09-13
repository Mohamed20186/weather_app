import 'package:flutter/material.dart';

class WeatherColors {
  static final Map<String, MaterialColor> dayColors = {
    "Sunny": Colors.yellow, // Sunny
    "Partly cloudy": Colors.lightBlue, // Partly cloudy
    "Cloudy": Colors.grey, // Cloudy
    "Overcast": Colors.grey, // Overcast
    "Mist": Colors.grey, // Mist
    "Patchy rain possible": Colors.lightBlue, // Patchy rain possible
    "Patchy snow possible": Colors.grey, // Patchy snow possible
    "Patchy sleet possible": Colors.blueGrey, // Patchy sleet possible
    "Patchy freezing drizzle possible":
        Colors.blue, // Patchy freezing drizzle possible
    "Thundery outbreaks possible":
        Colors.deepPurple, // Thundery outbreaks possible
    "Blowing snow": Colors.grey, // Blowing snow
    "Blizzard": Colors.grey, // Blizzard
    "Fog": Colors.grey, // Fog
    "Freezing fog": Colors.grey, // Freezing fog
    "Patchy light drizzle": Colors.lightBlue, // Patchy light drizzle
    "Light drizzle": Colors.blue, // Light drizzle
    "Freezing drizzle": Colors.blue, // Freezing drizzle
    "Heavy freezing drizzle": Colors.blueGrey, // Heavy freezing drizzle
    "Patchy light rain": Colors.lightBlue, // Patchy light rain
    "Light rain": Colors.blue, // Light rain
    "Moderate rain at times": Colors.blue, // Moderate rain at times
    "Moderate rain": Colors.blue, // Moderate rain
    "Heavy rain at times": Colors.blue, // Heavy rain at times
    "Heavy rain": Colors.blue, // Heavy rain
    "Light freezing rain": Colors.blueGrey, // Light freezing rain
    "Moderate or heavy freezing rain":
        Colors.blueGrey, // Moderate or heavy freezing rain
    "Light sleet": Colors.grey, // Light sleet
    "Moderate or heavy sleet": Colors.grey, // Moderate or heavy sleet
    "Patchy light snow": Colors.lightBlue, // Patchy light snow
    "Light snow": Colors.blue, // Light snow
    "Patchy moderate snow": Colors.blue, // Patchy moderate snow
    "Moderate snow": Colors.blue, // Moderate snow
    "Patchy heavy snow": Colors.blue, // Patchy heavy snow
    "Heavy snow": Colors.blue, // Heavy snow
    "Ice pellets": Colors.blueGrey, // Ice pellets
    "Light rain shower": Colors.lightBlue, // Light rain shower
    "Moderate or heavy rain shower":
        Colors.blue, // Moderate or heavy rain shower
    "Torrential rain shower": Colors.blue, // Torrential rain shower
    "Light sleet showers": Colors.grey, // Light sleet showers
    "Moderate or heavy sleet showers":
        Colors.grey, // Moderate or heavy sleet showers
    "Light snow showers": Colors.blue, // Light snow showers
    "Moderate or heavy snow showers":
        Colors.blue, // Moderate or heavy snow showers
    "Light showers of ice pellets":
        Colors.blueGrey, // Light showers of ice pellets
    "Moderate or heavy showers of ice pellets":
        Colors.blueGrey, // Moderate or heavy showers of ice pellets
    "Patchy light rain with thunder":
        Colors.blue, // Patchy light rain with thunder
    "Moderate or heavy rain with thunder":
        Colors.blue, // Moderate or heavy rain with thunder
    "Patchy light snow with thunder":
        Colors.blue, // Patchy light snow with thunder
    "Moderate or heavy snow with thunder":
        Colors.blue, // Moderate or heavy snow with thunder
  };

  MaterialColor? getTheme(String? name) {
    if (name == null) {
      return Colors.grey;
    }
    return dayColors.containsKey(name) ? dayColors[name] : Colors.grey;
  }
}
