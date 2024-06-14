import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SearchCity extends StatefulWidget {
  const SearchCity({super.key});

  @override
  State<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
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
              )
            ],
          ),
        )
         ),
    );
  }
}