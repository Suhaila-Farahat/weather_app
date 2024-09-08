import 'package:weather_app/Models/Weather%20model.dart';

class WeatherState {} // create abstract class

class NoWeatherState extends WeatherState {} // create initial state from abstract class

// create class for each state
class WeatherInfoLoadedState extends WeatherState {
  final WeatherModel weatherModel ;
  WeatherInfoLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errorMessage;
  WeatherFailureState(this.errorMessage);
}