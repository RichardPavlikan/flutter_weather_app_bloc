import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/data/weather/models/weather_params.dart';

abstract class WeatherRepository {
  Future<Either> getCurrentWeather(WeatherParams params);
}
