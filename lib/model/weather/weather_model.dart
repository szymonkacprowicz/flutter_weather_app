class Weather {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;

  Weather({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        temp: (json['temp'] as num?)?.toDouble() ?? 0,
        feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0,
        tempMin: (json['temp_min'] as num?)?.toDouble() ?? 0,
        tempMax: (json['temp_max'] as num?)?.toDouble() ?? 0,
        pressure: json['pressure'] as int? ?? 0,
        humidity: json['humidity'] as int? ?? 0,
      );

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'feels_like': feelsLike,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'pressure': pressure,
        'humidity': humidity,
      };
}
