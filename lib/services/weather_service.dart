import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String key = 'c908e8647ec74f7ab14151246241703';
  final baseUrl = 'https://api.weatherapi.com/v1';
  WeatherService({required this.dio});

  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response =
          await Dio().get('$baseUrl/forecast.json?key=$key&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'];
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was as error...');
    }
  }
}
