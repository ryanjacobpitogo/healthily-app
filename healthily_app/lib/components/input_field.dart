import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthily_app/constants.dart';


class InputField extends StatelessWidget {
  const InputField({
    Key? key, required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: loginMinWidth,
        maxWidth: loginMaxWidth,
      ),
      decoration: boxDecorDefault,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: inputFieldPadding),
        child: TextField(
          controller: label == "username" ? uNameController : passController,
          obscureText: label == "password",
          decoration: InputDecoration(  
            border: InputBorder.none,
            hintText: label == "username" ? "Enter Username" : "Password",
            hintStyle: GoogleFonts.roboto(
              fontSize: inputFieldFontSize,
              color: clrGrey,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
      ),
    );
  }
}