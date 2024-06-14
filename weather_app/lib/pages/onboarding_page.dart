import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:weather_app/main.dart';
import 'package:weather_app/pages/weather.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const WeatherUi();
          },
          )
      );
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/onboarding.jpg'),
          fit: BoxFit.cover,
          )
        ),
        child: SafeArea(
          child: Center(
            child: Text(
              'Weather',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                shadows: [
                  const Shadow(
                    color: Color(0x3E000000),
                    offset: Offset(0, 4),
                    blurRadius: 4
                  )
                ]
              ),
              )
              )
          ),
      )
    );
  }
}