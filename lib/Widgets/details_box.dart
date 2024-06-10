import 'package:aqi_check/Model/aqi_model.dart';
import 'package:aqi_check/Widgets/AppBarColor.dart';
import 'package:flutter/material.dart';

class DetailsBox extends StatelessWidget {
  final AqiModel? aqiModel;
  const DetailsBox({
    super.key,
    required this.aqiModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 500,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: AppBarColor(aqiModel!.overallAqi),
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxSh
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Overall AQI: ${aqiModel!.overallAqi}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Concentrations:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "CO: ${aqiModel!.co.concentration}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "SO2: ${aqiModel!.so2.concentration}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "O3: ${aqiModel!.o3.concentration}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "NO2: ${aqiModel!.no2.concentration}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "PM2.5: ${aqiModel!.pm25.concentration}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "PM10: ${aqiModel!.pm10.concentration}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
