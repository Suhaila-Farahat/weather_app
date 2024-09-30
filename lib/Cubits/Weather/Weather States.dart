import 'package:weather_app/Models/Weather%20model.dart';
// create abstract class
class WeatherState {}

// create initial state from abstract class
class NoWeatherState extends WeatherState {}

// create class for each state
class WeatherInfoLoadedState extends WeatherState {
  final WeatherModel weatherModel ;
  WeatherInfoLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errorMessage;
  WeatherFailureState(this.errorMessage);
}