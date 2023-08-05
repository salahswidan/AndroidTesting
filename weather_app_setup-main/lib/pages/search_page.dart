import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/providers/weather_providers.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  String? cityName;
  SearchPage({this.updateUi});
  VoidCallback? updateUi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            // to take from me an input text (my city)
            onChanged: (data) {
              cityName = data;
            },
            onSubmitted: (data) async {},
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              label: Text('Search'),
              suffixIcon: GestureDetector(
                  onTap: () async {
                    WeatherService service = WeatherService();
                    WeatherModel weather =
                        await service.getWeather(cityName: cityName!);
                    Provider.of<WeatherProvider>(context, listen: false)
                        .weatherData = weather;
                    Provider.of<WeatherProvider>(context, listen: false)
                        .cityName = cityName;

                    Navigator.pop(context);
                  },
                  child: Icon(
                      Icons.search)), // to print icon in the start on the line
              // suffixIcon: Icon(Icons.search), // to print icon in the end on the line
              border: OutlineInputBorder(),
              hintText: 'Enter a city',
            ),
          ),
        ),
      ),
    );
  }
}
