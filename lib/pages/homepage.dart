// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:badelove/widgets/current.weather.dart';
import 'package:badelove/widgets/map.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final CurrentWeather currentWeather = CurrentWeather(
    cityName: 'Bergen',
    apiKey: 'f5a86950619ef3046624e8687e9dbc6b',
  ); // apikey fra openweathermap.org

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: MapWidget(),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'lib/images/sun.png',
                    color: const Color.fromARGB(255, 239, 235, 9),
                    height: 90,
                  ),
                  FutureBuilder<double>(
                    future: currentWeather.fetchTemperature(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final temperature = snapshot.data!
                            .toInt(); // konverterer tempen til heltall
                        return Text(
                          '$temperature °C',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.black,
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return const Text(
                          'feil under henting av data',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        );
                      }
                      return const CircularProgressIndicator(); // ventesirkel ved lasting
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
