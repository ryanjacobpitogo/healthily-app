
import 'package:flutter/material.dart';
import 'package:healthily_app/screens/diet_details_page/diet_details_screen.dart';
import 'package:healthily_app/screens/temptrial.dart';
import '../../components/logo.dart';
import '../../constants.dart';





class Trial extends StatelessWidget{
   const Trial({super.key});


  
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
      return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: scaffoldBackground,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                const SizedBox(height: 60),
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(20,45,20,1145),
                      margin: const EdgeInsets.only(top: 65),
                      decoration: boxDecorContainer,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(8,50,0,10),
                            child: Text("Suggestions", style: TextStyle(fontSize: 17),),
                          ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                 children: 
                                       filterFoodscategory.map((element) => Tempt(label: element['type'], image: element['image'], name: element['name'])).toList(),
                              ),
                            )


                            
                          
                        ],
                      ),
                    )
                  ]
                )
              ],
            )
          ),
        ),
      ),

    );
   



  }






}