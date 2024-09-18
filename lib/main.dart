import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/manager/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/presentation/manager/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/data/data_source/weather_service.dart';
import 'package:weather_app/presentation/views/home_view.dart';
import 'package:weather_app/presentation/widgets/weather_info_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(WeatherService(dio: Dio())),
      child: const CustomMaterialApp(),
    );
  }
}

class CustomMaterialApp extends StatelessWidget {
  const CustomMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          var themeColor = getThemeColor(
              BlocProvider.of<GetWeatherCubit>(context)
                  .weatherModel
                  ?.weatherCondition);
          return MaterialApp(
            theme: ThemeData(
              appBarTheme: AppBarTheme(backgroundColor: themeColor),
              primarySwatch: themeColor,
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          );
        },
      );
    });
  }
}
