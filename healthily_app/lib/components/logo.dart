import 'package:flutter/material.dart';
import 'package:healthily_app/constants.dart';
import 'title_text.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key, required this.showTxt, required this.position});

  final bool showTxt;
  final CrossAxisAlignment position;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: position,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              boxShadowLow
            ],
            borderRadius: BorderRadius.circular(inputFieldBorRad),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset("assets/healthily_logo.png", height: 125, width: 125)
          ),
        ),
        const SizedBox(height: 10),
        if(showTxt) 
          const TitleText(label: "HEALTHILY", clr: clrWhite, fntSize: 26)
      ],
    );
  }
}