import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/common/usecase/usecase.dart';
import 'package:flutter_weather_app/data/weather/models/weather_params.dart';
import 'package:flutter_weather_app/domain/weather/repositories/weather_repository.dart';
import 'package:flutter_weather_app/service_locator.dart';

class WeatherUsecase extends Usecase<Either, WeatherParams> {
  @override
  Future<Either> call({WeatherParams? params}) async {
    return await sl<WeatherRepository>().getCurrentWeather(params!);
  }
}
