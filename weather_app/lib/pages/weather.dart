import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherUi extends StatefulWidget {
  const WeatherUi({super.key});

  @override
  State<WeatherUi> createState() => _WeatherUiState();
}

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
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          padding: const EdgeInsets.all(20),
          height: 147,
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
              )
            ],
          ),
         )
        ],
        
       ),
      ),
    );
  }
}