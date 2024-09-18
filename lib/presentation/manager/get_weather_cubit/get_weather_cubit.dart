import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/manager/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/data_source/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(this.weatherService) : super(WeatherInitialState());
  WeatherModel? weatherModel;
  WeatherService weatherService;
  getWeather({required String cityName}) async {
    emit(WeatherloadingState());
    try {
      weatherModel = await weatherService.getCurrentWeather(cityName: cityName);
      emit(WeatherSuccessState(weatherModel!));
    } on Exception catch (e) {
      emit(WeatherFailureState(errMessage: 'errMessage'));
    }
  }
}
