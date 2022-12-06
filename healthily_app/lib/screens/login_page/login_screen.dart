import 'package:flutter/material.dart';
//import 'package:healthily_app/components/title_text.dart';
import '../../components/logo.dart';
import '../../constants.dart';
// import 'components/login_button.dart';
// import 'components/input_field.dart';
// import 'components/title_text.dart';
import 'login_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: scaffoldBackground,        
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[    
                        LogoText(showTxt: true, position: CrossAxisAlignment.start,),
                        SizedBox(height: 30),
                        LoginContainer(),
                      ],
                    ),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
