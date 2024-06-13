import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
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