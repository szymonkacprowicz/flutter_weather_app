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

  Future<Weather> fetchWeather() async {
    print("Fetching weather...");
    final url = "$baseUrl/weather?q=$city&appid=$apiKey&units=metric";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData); // print the fetched weather data to the console
      return Weather.fromJson(jsonData);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
