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
String country = 'Ghana';
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
         weatherTile(cityName),
        ],
        
       ),
      ),
    );
  }
}

Widget weatherTile(cityName){
return Container(
  width: 400,
  height: 300,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [
      BoxShadow(
      offset: Offset(0, 1),
      blurRadius: 1,
      color: Color.fromRGBO(0, 0, 0, 0.2),
    )
    ]
  ),
  child: Padding(
    padding: const EdgeInsets.all(8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF828282),
                      ),
                      ),
                    Text(
                      '$cityName, $country',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF333333)
                      ),
                      ),
                    Text(
                      '${month[monthnum]} $day | Mostly Cloudy',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF828282),
                      ),
                      )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child:  FlutterLogo( size: 80,),
              ),
            ],
          ),
        ),
        //change to fit temperature
        Text(
          '26°',
          style: GoogleFonts.poppins(
            fontSize: 80,
            fontWeight: FontWeight.w500,
          ),
          ),
           Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'H:32°',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color:const Color(0xFF828282)
                  ),
                  ),
                const SizedBox(width: 20,),
                Text('L:24°',
                 style: GoogleFonts.poppins(
                    fontSize: 20,
                    color:const Color(0xFF828282)
                  ),
                )
    
              ],
            ),
          )
    
      ],
    ),
  ),

);
}