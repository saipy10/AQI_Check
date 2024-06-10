import 'dart:convert';

import 'package:aqi_check/Model/aqi_model.dart';
import 'package:http/http.dart' as http;

class GetAqiServices {
  static String api_url = "https://api.api-ninjas.com/v1/airquality?city=";
  static Future<AqiModel?> fetchData(String city) async {
    final response = await http.get(
      Uri.parse("$api_url$city"),
      headers: {'X-Api-Key': 'wpCFOwxeIzFu6sEgFzXPaQ==BFS857Q1R18Slp2i'},
    );
    try {
      if (response.statusCode == 200) {
        return AqiModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Failure to load meaning");
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
