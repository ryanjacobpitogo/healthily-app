import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healthily_app/screens/diet_details_page/diet_details_screen.dart';

class Tempt extends StatefulWidget {


  const Tempt({super.key,  required this.label, required this.image});

  final AssetImage image ;
  final String label;


  @override
  State<Tempt> createState() => _Tempt();
}

class _Tempt extends State<Tempt> {
  

  category(){


  }


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Padding( 
        padding: const EdgeInsets.only(left:8.0),
        child: Container(
         width:150,
         height: 100,
         decoration: BoxDecoration(

           image: DecorationImage(
             image: widget.image, 
             fit:BoxFit.cover
           ),// button text
         ),
        child: Text(widget.label, style: const TextStyle(
          color: Colors.white,  
        ),),
        ),
      ),onTap:(){
       print("you clicked me");
      }
    );
  }
}