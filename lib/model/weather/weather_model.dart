class Weather {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;
  String icon;

  @override
  String toString() {
    return 'Weather{temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, icon: $icon}';
  }

  Weather(
      {required this.temp,
      required this.feelsLike,
      required this.tempMin,
      required this.tempMax,
      required this.pressure,
      required this.humidity,
      required this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        temp: double.tryParse(json['temp'].toString()) ?? 0,
        feelsLike: double.tryParse(json['feels_like'].toString()) ?? 0,
        tempMin: double.tryParse(json['temp_min'].toString()) ?? 0,
        tempMax: double.tryParse(json['temp_max'].toString()) ?? 0,
        pressure: json['pressure'] as int? ?? 0,
        humidity: json['humidity'] as int? ?? 0,
        icon: json['icon'] as String,
      );

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'feelsLike': feelsLike,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'pressure': pressure,
        'humidity': humidity
      };
}
