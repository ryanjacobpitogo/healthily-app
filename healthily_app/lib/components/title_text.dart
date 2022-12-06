import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthily_app/constants.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.label, required this.clr, required this.fntSize});

  final String label;
  final Color clr;
  final double fntSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: GoogleFonts.comfortaa(
        color: clr,
        fontSize: fntSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}