import 'package:weather_app/data/models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherloadingState extends WeatherState {}

class WeatherSuccessState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSuccessState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errMessage;

  WeatherFailureState({required this.errMessage});
}
