import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/Weather/Weather%20Cubit.dart';
import 'package:weather_app/Pages/Home%20page.dart';

void main() {
  runApp(BlocProvider(
      create: (context) => WeatherCubit(),
      child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: getThemeColor(
            WeatherCubit.get(context).weatherModel?.status)),
    home: HomePage(),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
      return Colors.blueGrey;
    case 'Patchy rain possible':
      return Colors.lightBlue;
    case 'Patchy snow possible':
      return Colors.lightBlue;
    case 'Patchy sleet possible':
      return Colors.lightBlue;
    case 'Patchy freezing drizzle possible':
      return Colors.lightBlue;
    case 'Thundery outbreaks possible':
      return Colors.deepPurple;
    case 'Blowing snow':
      return Colors.lightBlue;
    case 'Blizzard':
      return Colors.lightBlue;
    case 'Fog':
      return Colors.grey;
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy light drizzle':
      return Colors.blue;
    case 'Light drizzle':
      return Colors.blue;
    case 'Freezing drizzle':
      return Colors.blue;
    case 'Heavy freezing drizzle':
      return Colors.blue;
    case 'Patchy light rain':
      return Colors.blue;
    case 'Light rain':
      return Colors.blue;
    case 'Moderate rain at times':
      return Colors.blue;
    case 'Moderate rain':
      return Colors.blue;
    case 'Heavy rain at times':
      return Colors.blue;
    case 'Heavy rain':
      return Colors.blue;
    case 'Light freezing rain':
      return Colors.blue;
    case 'Moderate or heavy freezing rain':
      return Colors.blue;
    case 'Light sleet':
      return Colors.blue;
    case 'Moderate or heavy sleet':
      return Colors.blue;
    case 'Patchy light snow':
      return Colors.lightBlue;
    case 'Light snow':
      return Colors.lightBlue;
    case 'Patchy moderate snow':
      return Colors.lightBlue;
    case 'Moderate snow':
      return Colors.lightBlue;
    case 'Patchy heavy snow':
      return Colors.lightBlue;
    case 'Heavy snow':
      return Colors.lightBlue;
    case 'Ice pellets':
      return Colors.blue;
    case 'Light rain shower':
      return Colors.blue;
    case 'Moderate or heavy rain shower':
      return Colors.blue;
    case 'Torrential rain shower':
      return Colors.blue;
    case 'Light sleet showers':
      return Colors.blue;
    case 'Moderate or heavy sleet showers':
      return Colors.blue;
    case 'Light snow showers':
      return Colors.lightBlue;
    case 'Moderate or heavy snow showers':
      return Colors.lightBlue;
    case 'Light showers of ice pellets':
      return Colors.blue;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.blue;
    case 'Patchy light rain with thunder':
      return Colors.deepPurple;
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'Patchy light snow with thunder':
      return Colors.deepPurple;
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.indigo; // Default color for unknown conditions
  }
}

