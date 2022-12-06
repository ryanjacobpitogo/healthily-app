import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthily_app/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.label, required this.onPress, required this.clr, required this.icon});

  final String label;
  final Function() onPress;
  final Widget icon;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: loginMinWidth,
        maxWidth: loginMaxWidth,
      ),
      child: ElevatedButton(
        onPressed: onPress, 
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(loginMinHeight),
          backgroundColor: clr,
          elevation: 5
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: loginPadding, vertical: loginPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                label,
                style: GoogleFonts.roboto(
                  color: clr == Colors.white ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}