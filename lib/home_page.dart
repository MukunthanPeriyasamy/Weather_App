import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additonal_information.dart';
import 'package:weather_app/card.dart';
import 'package:weather_app/weather_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> districts = [
    'Salem',
    'Coimbatore',
    'Karur',
    'Namakkal',
    'Tiruppur',
  ];

  final otherDisFunction = [
    getDataSalem(),
    getDataCoimbatore(),
    getDataKarur(),
    getDataNamakkal(),
    getDataTiruppur(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text('Weather App', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: const CircularProgressIndicator.adaptive());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          // real time datas
          final data = snapshot.data!;
          final currTemp = data['main']['temp'];

          final pressure = data['main']['pressure'];

          final humidity = data['main']['humidity'];

          final windSpeed = data['wind']['speed'];

          final currWeather = data['weather'][0]['main'];

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                '$currTemp° K',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Icon(Icons.cloud, size: 40),
                              const SizedBox(height: 10),
                              Text(
                                '$currWeather',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text('Weather Forecast', style: TextStyle(fontSize: 30)),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WeatherForecastCards(
                        temperature: '320',
                        icon: Icon(Icons.cloud),
                        time: '8:30',
                      ),
                      WeatherForecastCards(
                        temperature: '210',
                        icon: Icon(Icons.thunderstorm),
                        time: '9:10',
                      ),
                      WeatherForecastCards(
                        temperature: '110',
                        icon: Icon(Icons.sunny),
                        time: '7:02',
                      ),
                      WeatherForecastCards(
                        temperature: '147',
                        icon: Icon(Icons.sunny),
                        time: '6:11',
                      ),
                      WeatherForecastCards(
                        temperature: '320',
                        icon: Icon(Icons.cloud),
                        time: '9:02',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Text('Additional Informations', style: TextStyle(fontSize: 30)),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AdditionalInformationCards(
                      weatherDetail: 'Wind Speed',
                      weatherIcon: Icon(Icons.water_drop),
                      temperature: windSpeed,
                    ),
                    AdditionalInformationCards(
                      weatherDetail: 'Humidity',
                      weatherIcon: Icon(Icons.air),
                      temperature: humidity,
                    ),
                    AdditionalInformationCards(
                      weatherDetail: 'Pressure',
                      weatherIcon: Icon(Icons.gas_meter),
                      temperature: pressure,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
