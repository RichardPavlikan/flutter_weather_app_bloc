import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/common/helper/weather_mapper.dart';
import 'package:flutter_weather_app/data/weather/models/weather_params.dart';
import 'package:flutter_weather_app/data/weather/resources/weather_service.dart';
import 'package:flutter_weather_app/domain/weather/repositories/weather_repository.dart';
import 'package:flutter_weather_app/service_locator.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  @override
  Future<Either> getCurrentWeather(WeatherParams params) async {
    try {
      final data = await sl<WeatherService>().weather(
        params.lat,
        params.long,
        "3ad549de8b274912b0b49079a417a2c2",
      );

      final entity = WeatherMapper.toEntity(data);

      return Right(entity);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
