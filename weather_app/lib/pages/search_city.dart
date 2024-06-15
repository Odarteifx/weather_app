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
  String cityName = 'Parma';
  dynamic weatherData;
  String errorMessage = '';

  List citySearch = [];

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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            seaechArea(_controller),
            searchCityTile(cityName),
             searchCityTile(cityName),
          ],
        ),
      )),
    );
  }
}

Widget seaechArea(controller) {
  return Stack(children: [
    Container(
      height: 55,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 10,
              spreadRadius: 1,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            )
          ]),
    ),
    ClipRRect(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(
            Iconsax.search_normal,
            size: 20,
            color: Color(0xFFBDBDBD),
          ),
          hintText: 'Search for a City',
          hintStyle:
              GoogleFonts.poppins(color: const Color(0xFFBDBDBD), fontSize: 16),
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    ),
  ]);
}

Widget searchCityTile(cityName) {
  return Padding(
    padding: const EdgeInsets.only(top: 16),
    child: Container(
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white, 
      boxShadow: const[
        BoxShadow(
          offset: Offset(0, 2),
          blurRadius: 10,
          spreadRadius: 1,
          color:  Color.fromRGBO(0, 0, 0, 0.1),
        )
      ],
      borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  cityName,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                Text(
                  'Jun 7 | Clear',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xFF828282),
                  ),
                  ),
                Text(
                  'H:12° L:10°',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xFF828282),
                  ),
                  ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const FlutterLogo(size: 70),
                Text(
                  '14°',
                  style: GoogleFonts.poppins(
                    fontSize: 35,
                    fontWeight: FontWeight.w500
                  ),
                  )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
