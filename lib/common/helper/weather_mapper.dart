import 'package:flutter_weather_app/data/weather/models/weather_model.dart';
import 'package:flutter_weather_app/domain/weather/entities/weather_entity.dart';

class WeatherMapper {
  static WeatherEntity toEntity(WeatherModel model) {
    return WeatherEntity(
      coord: CoordEntity(
        lon: model.coord.lon,
        lat: model.coord.lat,
      ),
      weather: model.weather
          .map((w) => WeatherConditionEntity(
                id: w.id,
                main: w.main,
                description: w.description,
                icon: w.icon,
              ))
          .toList(),
      base: model.base,
      main: MainEntity(
        temp: model.main.temp,
        feelsLike: model.main.feels_like,
        tempMin: model.main.temp_min,
        tempMax: model.main.temp_max,
        pressure: model.main.pressure,
        humidity: model.main.humidity,
        seaLevel: model.main.sea_level,
        grndLevel: model.main.grnd_level,
      ),
      visibility: model.visibility,
      wind: WindEntity(
        speed: model.wind.speed,
        deg: model.wind.deg,
      ),
      clouds: CloudsEntity(
        all: model.clouds.all,
      ),
      dt: model.dt,
      sys: SysEntity(
        type: model.sys.type,
        id: model.sys.id,
        country: model.sys.country,
        sunrise: model.sys.sunrise,
        sunset: model.sys.sunset,
      ),
      timezone: model.timezone,
      id: model.id,
      name: model.name,
      cod: model.cod,
    );
  }
}
