// class WeatherResponse {
//   List<Weather> weather;
//   factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
//       WeatherResponse(weather: List<Weather>.from(l.map(elements) => Post.fromJson (weatherfrom)) );
// }

class WeatherResponse {
  List<Weather> weather;

  WeatherResponse({required this.weather});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> weatherList = json['weather'];
    List<Weather> weather = weatherList
        .map((weatherJson) => Weather.fromJson(weatherJson))
        .toList();
    print('RYCHUUUUUUUUUUUUUU ${weather.length}');
    return WeatherResponse(weather: weather);
  }
}

class Coord {
  double lat;
  double lon;

  Coord({
    required this.lat,
    required this.lon,
  });

  factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lat: double.tryParse(json['lat'].toString()) ?? 0,
        lon: double.tryParse(json['lon'].toString()) ?? 0,
      );
}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  // @override
  // String toString() {
  //   return 'Weather{temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, icon: $icon}';
  // }

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json['id'] as int,
        main: json['main'] as String,
        description: json['description'] as String,
        icon: json['icon'] as String,
      );
}
