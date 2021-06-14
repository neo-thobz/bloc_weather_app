import 'package:bloc_weather_app/bloc/weather_bloc.dart';
import 'package:bloc_weather_app/repo/weatherRepo.dart';
import 'package:bloc_weather_app/ui/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: BlocProvider(
          create: (context) => WeatherBloc(WeatherRepo()),
          child: SearchPage(),
        ),
      ),
    );
  }
}
