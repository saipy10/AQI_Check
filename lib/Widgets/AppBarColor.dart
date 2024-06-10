import 'package:flutter/material.dart';

AppBarColor(int aqi) {
  if (aqi == -1)
    return Colors.grey;
  else if (aqi >= 0 && aqi <= 50)
    return Colors.green;
  else if (aqi >= 51 && aqi <= 100)
    return Colors.yellow.shade600;
  else if (aqi >= 101 && aqi <= 150)
    return Colors.orange;
  else if (aqi >= 151 && aqi <= 200)
    return Colors.red;
  else if (aqi >= 201 && aqi <= 300)
    return Colors.purple;
  else if (aqi >= 301) return Color.fromARGB(255, 128, 0, 0);
}
