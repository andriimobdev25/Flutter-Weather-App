import 'dart:convert';

import '../models/models.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<WeatherResponse> getWeather(long, lat) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?&lon=$long&lat=$lat&appid=Add Here&units=metric'));
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}
