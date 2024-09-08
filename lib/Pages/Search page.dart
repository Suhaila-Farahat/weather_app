import 'package:flutter/material.dart';
import 'package:weather_app/Cubits/Weather/Weather%20Cubit.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a City',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
      ),
      body: Padding(
        padding:  const EdgeInsets.symmetric( horizontal: 15),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherCubit.get(context).fetchCurrentWeather(cityName:value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 15
              ),
              labelText: "Search",
              hintText: 'Enter City name ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Colors.indigo,
                      style: BorderStyle.solid,
                      width: 3)),
              suffixIcon: const Icon(
                Icons.search_sharp,),
            ),
          ),
        ),
      ),
    );
  }
}
