import 'package:flutter/material.dart';
import 'package:weather_app/Cubits/Weather/Weather%20Cubit.dart';
import 'package:weather_app/main.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weathermodel = WeatherCubit.get(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                getThemeColor(weathermodel.status),
                getThemeColor(weathermodel.status)[200]!,
                getThemeColor(weathermodel.status)[50]!,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weathermodel.cityName,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Updated at  ${weathermodel.localTime.hour}:${weathermodel.localTime.minute}',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https:${weathermodel.image}',
                  fit: BoxFit.fill,
                ),
                Text(
                  '${weathermodel.temp.round()}',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp : ${weathermodel.maxTemp.round()}',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Minemp : ${weathermodel.minTemp.round()}',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Status : ${weathermodel.status}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
