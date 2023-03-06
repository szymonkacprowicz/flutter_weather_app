import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/WeatherBottomSection.dart';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather/weather_model.dart';
import 'WeatherHeader.dart';
import 'WeatherMiddleSection.dart';
import 'WeatherBottomSection.dart';

import 'WeatherAPI.dart';

void main() => runApp(MyApp());

final WeatherApi weatherApi = WeatherApi();

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Weather> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = weatherApi.fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
            GoogleFonts.ptSansTextTheme().apply(bodyColor: Colors.grey[200]),
      ),
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  final futureWeather = weatherApi.fetchWeather();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Weather app v1"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HSLColor.fromAHSL(1, 214, 0.89, 0.61).toColor(),
              HSLColor.fromAHSL(1, 214, 0.89, 0.21).toColor()
            ],
          ),
        ),
        child: Column(
          children: [
            WeatherHeader(),
            const Divider(
              height: 40,
              thickness: 3,
              color: Color.fromARGB(255, 147, 147, 147),
              indent: 5,
              endIndent: 5,
            ),
            WeatherMiddleSection(),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 40,
              thickness: 3,
              color: Color.fromARGB(255, 147, 147, 147),
              indent: 5,
              endIndent: 5,
            ),
            // FutureBuilder<Weather>(
            //   future: futureWeather,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       final weather = snapshot.data!;
            //       return Column(
            //         children: [
            //           Text('${weather.description}°C'),
            //         ],
            //       );
            //     } else if (snapshot.hasError) {
            //       return Text('${snapshot.error}');
            //     } else {
            //       return CircularProgressIndicator();
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
