import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'There is no weather !',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.indigo),
              ),
              Text(
                'Start searching now 🔍',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.indigo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
