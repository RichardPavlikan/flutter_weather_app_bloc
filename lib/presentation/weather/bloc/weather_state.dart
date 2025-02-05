abstract class WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherError extends WeatherState {
  final String error;

  WeatherError(this.error);
}

class WeatherSuccess extends WeatherState {}
