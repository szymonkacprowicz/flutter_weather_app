import 'dart:convert';

import 'package:weather_app/model/weather/weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherApi {
  final String baseUrl = 'https://api.openweathermap.org/data/2.5';
  final String apiKey = '2d956f350abae6e6030a6619bb24fa9f';
  final String city = 'Poznan';

  Future<Weather> getWeather(String city) async {
    final response = await http
        .get(Uri.parse('$baseUrl/weather?q=$city&appid=$apiKey&units=metric'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  // Future<void> fetchWeather() async {
  //   print("Fetching weather...");
  //   final url = "$baseUrl/weather?q=$city&appid=$apiKey&units=metric";
  //   final response = await http.get(Uri.parse(url));
  //   if (response.statusCode == 200) {
  //     final jsonData = json.decode(response.body);
  //     print(jsonData);
  //   } else {
  //     throw Exception('Failed to load weather data');
  //   }
  // }

  Future<void> fetchWeather() async {
    print("Fetching weather...");
    final url = "$baseUrl/weather?q=$city&appid=$apiKey&units=metric";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData); // print the fetched weather data to the console
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}


// class WeatherApi {
//   final double temp_c;
//   final double wind_kph;
//   final String condition;

//   Weather(){
//     this.temp_c = 0,
//     this.wind_kph = 0,
//     this.condition = "Mostly Cloudy";
//   }

//   factory WeatherApi.fromJson(Map<String, dynamic> json) {
//     return WeatherApi(
//       temp_c: json['current']['temp_c'],
//       wind_kph: json['current']['wind_kph']
//       condition: json['current']['condition'][0]['text']
      
//     )
//   }

