import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/Weather/Weather%20States.dart';
import 'package:weather_app/Models/Weather%20model.dart';
import 'package:weather_app/Services/Weather%20service.dart';


// create class extends cubit <states>
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(NoWeatherState() ); // pass init state to super
  static WeatherCubit get(context) => BlocProvider.of(context); //create func to get obj from cubit

   WeatherModel? weatherModel ;
// create funcs
  fetchCurrentWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherInfoLoadedState(weatherModel!));

    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
