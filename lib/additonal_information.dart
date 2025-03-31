import 'package:flutter/material.dart';

class AdditionalInformationCards extends StatelessWidget {
  final String weatherDetail;
  final Icon weatherIcon;
  final double temperature;

  const AdditionalInformationCards({
    super.key,
    required this.weatherDetail,
    required this.weatherIcon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(weatherDetail, style: TextStyle(fontSize: 16)),
        SizedBox(height: 15),
        weatherIcon,
        SizedBox(height: 15),
        Text(temperature.toString(), style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
