import 'package:flutter/material.dart';

// import screen
import 'package:dicee_app/dice_page.dart';
// end import screen

// flutter library
import 'package:google_fonts/google_fonts.dart';
// end flutter library

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dicee'.toUpperCase(),
            style: GoogleFonts.josefinSlab(
              fontWeight: FontWeight.w800,
              fontSize: 30.0,
              letterSpacing: 3,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 10, 79),
      ),
      body: const DicePage(),
    );
  }
}
