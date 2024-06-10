// To parse this JSON data, do
//
//     final aqiModel = aqiModelFromJson(jsonString);

import 'dart:convert';

AqiModel aqiModelFromJson(String str) => AqiModel.fromJson(json.decode(str));

String aqiModelToJson(AqiModel data) => json.encode(data.toJson());

class AqiModel {
    int overallAqi;
    Gas co;
    Gas pm10;
    Gas so2;
    Gas pm25;
    Gas o3;
    Gas no2;

    AqiModel({
        required this.overallAqi,
        required this.co,
        required this.pm10,
        required this.so2,
        required this.pm25,
        required this.o3,
        required this.no2,
    });

    factory AqiModel.fromJson(Map<String, dynamic> json) => AqiModel(
        overallAqi: json["overall_aqi"],
        co: Gas.fromJson(json["CO"]),
        pm10: Gas.fromJson(json["PM10"]),
        so2: Gas.fromJson(json["SO2"]),
        pm25: Gas.fromJson(json["PM2.5"]),
        o3: Gas.fromJson(json["O3"]),
        no2: Gas.fromJson(json["NO2"]),
    );

    Map<String, dynamic> toJson() => {
        "overall_aqi": overallAqi,
        "CO": co.toJson(),
        "PM10": pm10.toJson(),
        "SO2": so2.toJson(),
        "PM2.5": pm25.toJson(),
        "O3": o3.toJson(),
        "NO2": no2.toJson(),
    };
}

class Gas {
    double concentration;
    int aqi;

    Gas({
        required this.concentration,
        required this.aqi,
    });

    factory Gas.fromJson(Map<String, dynamic> json) => Gas(
        concentration: json["concentration"]?.toDouble(),
        aqi: json["aqi"],
    );

    Map<String, dynamic> toJson() => {
        "concentration": concentration,
        "aqi": aqi,
    };
}
