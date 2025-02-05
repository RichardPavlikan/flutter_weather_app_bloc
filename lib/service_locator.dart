import 'package:dio/dio.dart';
import 'package:flutter_weather_app/data/weather/repositories/weather_repository.dart';
import 'package:flutter_weather_app/data/weather/resources/weather_service.dart';
import 'package:flutter_weather_app/domain/weather/repositories/weather_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<Dio>(Dio());

  // service
  sl.registerSingleton<WeatherService>(WeatherService(sl<Dio>()));

  // repository
  sl.registerSingleton<WeatherRepository>(WeatherRepositoryImpl());

  // usecase
}
