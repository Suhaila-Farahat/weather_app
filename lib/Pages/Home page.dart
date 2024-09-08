import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/Weather/Weather%20Cubit.dart';
import 'package:weather_app/Cubits/Weather/Weather%20States.dart';
import 'package:weather_app/Widgets/No%20Weather%20Body.dart';
import 'package:weather_app/Pages/Search%20page.dart';
import 'package:weather_app/Widgets/Weather%20info%20body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SearchPage()));
              },
              icon:const Icon(
                  Icons.search,
              size: 30,
              )
          )
        ],
      ),
      body: BlocBuilder <WeatherCubit,WeatherState>(
        builder:(context , state){
          if (state is NoWeatherState) {
            return const NoWeatherBody();
          }
          else if (state is WeatherInfoLoadedState){
            return WeatherInfoBody();
          }
          else {
            return Center(
              child: const Text(
                  'Oops there was an error !! ',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.redAccent),

              ),
            );
          }
        },
      ),
    );
  }
}
