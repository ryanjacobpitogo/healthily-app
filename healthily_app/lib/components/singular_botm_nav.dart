import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthily_app/constants.dart';

class SingularBottomNavigation extends StatelessWidget {
  const SingularBottomNavigation({super.key, required this.text, required this.onPress});

  final String text;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll<Color>(clrLightRed),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            side: BorderSide(color: Colors.red)
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}