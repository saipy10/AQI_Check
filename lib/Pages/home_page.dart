import 'package:aqi_check/Model/aqi_model.dart';
import 'package:aqi_check/Services/aqi_services.dart';
import 'package:aqi_check/Widgets/AppBarColor.dart';
import 'package:aqi_check/Widgets/details_box.dart';
import 'package:aqi_check/Widgets/indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AqiModel? aqiModel;
  bool isLoading = false;
  searchCity(String city) async {
    setState(() {
      isLoading = true;
    });
    try {
      aqiModel = await GetAqiServices.fetchData(city);
    } catch (e) {
      aqiModel = null;
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int colourIndicator = -1;
    if (aqiModel != null) colourIndicator = aqiModel!.overallAqi;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor(colourIndicator),
        title: const Center(
          child: Text(
            "Air Quality Index",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SearchBar(
              hintText: "Search city here",
              onSubmitted: (value) {
                searchCity(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            if (isLoading)
              const LinearProgressIndicator()
            else if (aqiModel != null)
              Column(
                children: [
                  SizedBox(
                    height: 225,
                    width: 250,
                    child: Indicator(colourIndicator),
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DetailsBox(aqiModel: aqiModel),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
