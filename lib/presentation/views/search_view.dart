import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = BlocProvider.of<GetWeatherCubit>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search city '),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: TextField(
              onSubmitted: (value) async {
                provider.getWeather(cityName: value);
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 16,
                ),
                labelText: 'Search',
                hintText: 'Enter City name ',
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
        ));
  }
}
