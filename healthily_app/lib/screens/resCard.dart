import 'package:flutter/material.dart';


class ResCard extends StatefulWidget {
 

  const ResCard({super.key,  required this.label, required this.image, required this.name});

  final NetworkImage image ;
  final String label;
  final String name;


  @override
   @override
  State<ResCard> createState() => _ResCard();
}


class _ResCard extends State<ResCard> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: GestureDetector(
        child: Padding( 
          padding: const EdgeInsets.only(left:8.0),
          child: Container(
           width: double.infinity,
           height: 150,
           
           decoration: BoxDecoration(

             image: DecorationImage(
               image: widget.image, 

               fit:BoxFit.cover
             ),// button text
           ),
          child: Padding(
            padding: const EdgeInsets.only(top: 125.0),
            child: Text(widget.label, style: const TextStyle(
              color: Colors.white,  fontSize: 20
            ),textAlign: TextAlign.end,
            ),
          ),
          ),
        ),
        onTap:(
      

        ){
      
            
        }
      ),
    );
  }
}