import 'package:flutter/material.dart';

class WeatherForecastCards extends StatelessWidget {
  final String temperature;
  final Icon icon;
  final String time;
  const WeatherForecastCards({super.key,
  required this.temperature,
  required this.icon,
  required this.time
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(2),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                temperature,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              icon,
              const SizedBox(height: 15),
              Text(time),
            ],
          ),
        ),
      ),
    );
  }
}
