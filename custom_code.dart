import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color greenColor = const Color(0xff034521);

Color simiGreenColor = const Color.fromARGB(255, 244, 255, 229);
Gradient contGradient = const LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  stops: [0.503, 0.7113, 0.8738, 0.938],
  colors: [
    Color.fromARGB(200, 3, 69, 33),
    Color.fromARGB(172, 3, 69, 33),
    Color.fromARGB(147, 1, 96, 44),
    Color.fromARGB(147, 2, 99, 46),
  ],
);

var listOfShadow = [
  const BoxShadow(
    color: Color.fromARGB(200, 3, 69, 33),
    offset: Offset(
      0.5,
      0.5,
    ),
    blurRadius: 37.400001525878906,
    spreadRadius: 0.0,
  ),
];
var costumeStyle = GoogleFonts.poppins(
    color: const Color.fromARGB(255, 3, 69, 33),
    fontWeight: FontWeight.w900,
    fontSize: 15);

var privacyTextStyle = GoogleFonts.poppins(
  color: const Color.fromARGB(255, 3, 69, 33),
  fontWeight: FontWeight.w900,
  fontSize: 15.0,
);
var elevatedTextStyle = GoogleFonts.poppins(
    color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15.0);
