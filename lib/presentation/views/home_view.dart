import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/views/search_view.dart';
import 'package:weather_app/presentation/widgets/no_weather_body.dart';
import 'package:weather_app/presentation/widgets/weather_info_body.dart';

import '../manager/get_weather_cubit/get_weather_cubit.dart';
import '../manager/get_weather_cubit/get_weather_states.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is WeatherSuccessState) {
            return const WeatherInfoBody();
          } else if (state is WeatherloadingState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: Text('Opps There was an error'));
          }
        },
      ),
    );
  }
}
