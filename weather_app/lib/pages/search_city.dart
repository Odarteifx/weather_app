import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weatherapi/weatherapi.dart';

class SearchCity extends StatefulWidget {
  const SearchCity({super.key});

  @override
  State<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {
  WeatherRequest wr = WeatherRequest('d2c2d6e65f574c52b0d224818240606');
  final TextEditingController _controller = TextEditingController();
  String cityName = '';
  dynamic weatherData;
  String errorMessage = '';

 Future<void> searchCity() async {
    setState(() {
      errorMessage = '';
    });

    try {
      final SearchResults sr = await wr.getResultsByCityName(cityName);
      setState(() {
        weatherData = sr;
      });
    } catch (e) {
      setState(() {
        errorMessage = 'City not found or error occurred. Please try again.';
      });
    }
  }

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Iconsax.search_normal,
                    size: 20,
                    color: Color(0xFFBDBDBD),
                    ),
                    hintText: 'Search for a City',
                     hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFFBDBDBD), 
                      fontSize: 16
                     ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                ),
              ),
            ],
          ),
        )
         ),
    );
  }
}