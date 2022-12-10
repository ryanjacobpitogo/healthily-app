
import 'package:flutter/material.dart';
import 'package:healthily_app/screens/diet_details_page/diet_details_screen.dart';
import 'package:healthily_app/screens/restaurantscreen.dart';

// ignore: depend_on_referenced_packages




class Tempt extends StatefulWidget {
 

  const Tempt({super.key,  required this.label, required this.image, required this.name});

  final AssetImage image ;
  final String label;
  final String name;


  @override
  State<Tempt> createState() => _Tempt();
}

class _Tempt extends State<Tempt> {
 
 



   List<Map<String, dynamic>> filteredRes = [];
  List<Map<String, dynamic>> filteredRec = [];






  void filter(value){
    List<Map<String, dynamic>> res = [];
List<Map<String, dynamic>> recipe = [];
     
          setState(() {

            res = filterRestaurants.where((element) => element['type'] == value).toList();
            recipe = filterRecipes.where((element) => element['type'] == value).toList();

            filteredRes.addAll(res);
            filteredRes = filteredRes.toSet().toList();

            filteredRec.addAll(recipe);
            filteredRec = filteredRec.toSet().toList();
           
            
          
          
          });


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
      ),
      onTap:(
    

      ){
        
          filter(widget.name);
         
           Navigator.of(context).push( MaterialPageRoute(builder: (context) =>  Res(filteredRes, filteredRec)));
      }
    );
  }
}