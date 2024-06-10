import 'package:aqi_check/Widgets/Color_Indicators/good.dart';
import 'package:aqi_check/Widgets/Color_Indicators/hazardous.dart';
import 'package:aqi_check/Widgets/Color_Indicators/moderate.dart';
import 'package:aqi_check/Widgets/Color_Indicators/unhealthy.dart';
import 'package:aqi_check/Widgets/Color_Indicators/unhealthyO.dart';
import 'package:aqi_check/Widgets/Color_Indicators/very_unhealthy.dart';

Indicator(int aqi) {
  if (aqi >= 0 && aqi <= 50) return Good();
  if (aqi >= 51 && aqi <= 100) return Moderate();
  if (aqi >= 101 && aqi <= 150) return UnhealthyO();
  if (aqi >= 151 && aqi <= 200) return Unhealthy();
  if (aqi >= 201 && aqi <= 300) return VeryUnhealthy();
  if (aqi >= 301) return Hazardous();
}
