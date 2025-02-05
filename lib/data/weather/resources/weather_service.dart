import 'package:dio/dio.dart';
import 'package:flutter_weather_app/data/weather/models/weather_model.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/")
abstract class WeatherService {
  factory WeatherService(Dio dio) = _WeatherService;

  @GET('data/2.5/weather?lat={lat}&lon={long}n&appid={apiKey}&units=metric')
  Future<WeatherModel> weather(
      @Path() double lat, @Path() double long, @Path() String apiKey);
}
