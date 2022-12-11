

import 'package:flutter/material.dart';
import 'package:healthily_app/screens/login_page/login_screen.dart';
import '../../constants.dart';
import '../../components/input_field.dart';
import '../../components/login_button.dart';
import '../../components/title_text.dart';

 class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

 
  @override
  State<LoginContainer> createState() =>  _LoginContainer();

  
    
}

class _LoginContainer extends State<LoginContainer> {


     int flag = 0;
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
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:20.0),
            
             child: TextField( textAlign: TextAlign.start,
             
             autofocus: true,
                  controller: uNameController,
                  style:
                      const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  decoration: const InputDecoration(
                      hintText: 'Username',
                      
                      hintStyle: TextStyle(fontSize: 18)),),
           ),
          const SizedBox(height: 15),


           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: TextField( textAlign: TextAlign.start,
                  controller: passController,
                  style:
                      const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  decoration: const InputDecoration(
                      hintText: 'Password',
                     
                      hintStyle: TextStyle(fontSize: 18)),),
           ),
          const SizedBox(height: 15),
          LoginButton(label: "LOG IN", clr: clrLightRed, onPress: ()=>{
           

            
            account.map((e) => e['usern'].toString() == uNameController.text && e['passw'] == passController.text ? Navigator.pushNamed(context, '/DietDetails'): print(uNameController.text) ).toList()
            
            

         
            
            }, icon: const SizedBox(height: 0)),
          const SizedBox(height: 15),
          LoginButton(label: " FACEBOOK", clr: clrCyanBlue, onPress: (){}, icon: loginFacebookIcon),
          const SizedBox(height: 15),
          LoginButton(label: "  CONTINUE WITH GOOGLE", clr: clrWhite, onPress: (){}, icon: loginGoogleIcon)
        ],
      ),
    );
  }
}
