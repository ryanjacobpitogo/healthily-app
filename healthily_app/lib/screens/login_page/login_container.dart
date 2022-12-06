import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../components/input_field.dart';
import '../../components/login_button.dart';
import '../../components/title_text.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: loginMinWidth + 200,
        maxWidth: loginMaxWidth + 150,
        minHeight: loginMinHeight + 400
      ),
      decoration: BoxDecoration(
        boxShadow: [
          boxShadowDefault,
        ],
        color: clrWhite,
        borderRadius: BorderRadius.circular(inputFieldBorRad),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TitleText(label: "Log In", clr: clrDarkRed, fntSize: titleFontSize),
          const SizedBox(height: 30),
          const InputField(label: 'username'),
          const SizedBox(height: 15),
          const InputField(label: 'password'),
          const SizedBox(height: 15),
          LoginButton(label: "LOG IN", clr: clrLightRed, onPress: ()=>{Navigator.pushNamed(context, '/DietDetails')}, icon: const SizedBox(height: 0)),
          const SizedBox(height: 15),
          LoginButton(label: " FACEBOOK", clr: clrCyanBlue, onPress: (){}, icon: loginFacebookIcon),
          const SizedBox(height: 15),
          LoginButton(label: "  CONTINUE WITH GOOGLE", clr: clrWhite, onPress: (){}, icon: loginGoogleIcon)
        ],
      ),
    );
  }
}
