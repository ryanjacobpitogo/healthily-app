import 'package:flutter/material.dart';



class Recview extends StatefulWidget{
  const Recview({super.key,  required this.label, required this.image, required this.name});

  final String image ;
  final String label;
  final String name;
  @override
  State<Recview> createState() => Recipeview();
  
}

class Recipeview extends State<Recview> {




@override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(leading: IconButton(icon: Icon(Icons.keyboard_arrow_left_rounded), onPressed: () => Navigator.pop(context),), backgroundColor: Colors.white10,),
    body: SafeArea(child: 
      Column(
        children: [
          Container(
            child: Image(image: NetworkImage(widget.image)),
          ),
          Container(
            child:
            Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(widget.label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.name),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Contraints: \n >Prev UI Experienced Stacking problems\n that causes the whole screen to be static \nand not functional\n\n Items to be worked on\n> Contents to be added\n > overall layout to be fixed",),
                )


            ],)
          )

        ],
      )
    
    ),
  

   );
  }
}