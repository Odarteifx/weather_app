import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapi/weatherapi.dart';


class WeatherUi extends StatefulWidget {
  const WeatherUi({super.key});

  @override
  State<WeatherUi> createState() => _WeatherUiState();
}

List month = ['Jan', 'Feb', 'Mar', 'April', 'May', 'Jun', 'Jul',
'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
];
DateTime now = DateTime.now();
int monthnum = now.month - 1;
String day = now.day.toString();
WeatherRequest wr = WeatherRequest('d2c2d6e65f574c52b0d224818240606', language: Language.english);
String cityName = 'Accra';
//RealtimeWeather rw = await wr.getRealtimeWeatherByCityName(cityName);

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
          child: Row(
            children: [
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF666666),
                    ),
                    ),
                  Text(
                    '$cityName, ${cityName}',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  Text('$day ${month[monthnum]}'),
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