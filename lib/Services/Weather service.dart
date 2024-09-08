import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/Models/Weather%20model.dart';

class WeatherService {
  WeatherService(this.dio);
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '11cd31b3e50b4e00a55204136232510';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;

      // err in dio
    } on DioException catch (e) {
      final errorMessage = e.response?.data['error']['message'] ?? 'oops there was an error , try later';
      throw Exception(errorMessage);

      // err in general
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error , try later');
    }
  }
}