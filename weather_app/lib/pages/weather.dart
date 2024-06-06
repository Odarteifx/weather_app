import 'package:flutter/material.dart';
import 'package:weatherapi/weatherapi.dart';

class WeatherUi extends StatefulWidget {
  const WeatherUi({super.key});

  @override
  State<WeatherUi> createState() => _WeatherUiState();
}
WeatherRequest wr = WeatherRequest('d2c2d6e65f574c52b0d224818240606');

class _WeatherUiState extends State<WeatherUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          padding: const EdgeInsets.all(20),
          height: 290,
          width: 390,
          child: const Row(
            children: [
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Today'),
                  Text('Accra, Ghana'),
                  Text('24th Jun')
                ],
              ), 
            ],
          ),
         )
        ],
        
       ),
      ),
    );
  }
}