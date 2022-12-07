// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Color varianbles
const clrDarkRed = Color.fromARGB(255, 174, 38, 62);
const clrLightRed = Color.fromARGB(255, 255, 51, 73);
const clrMainRed = Color.fromARGB(255, 221, 71, 71);
const clrPaleRed = Color.fromARGB(255, 202, 78, 77);
const clrCyanBlue = Color.fromARGB(255, 17, 151, 245);
const clrWhite = Colors.white;
const clrBlack = Colors.black;
const clrGrey = Colors.grey;

//font sizes
const titleFontSize = 36.0;

//Scaffold Background
const scaffoldBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/scaffoldBg.jpg"),
    fit: BoxFit.fill,
  ),
);

//Box Shadows
var boxShadowDefault = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 2,
  blurRadius: 4,
  offset: const Offset(2, 2)
);

var boxShadowLow = BoxShadow(
  color: Colors.black.withOpacity(.2),
  spreadRadius: 2,
  blurRadius: 3,
  offset: const Offset(2, 2.5)
);

//Box Decoration
var boxDecorDefault = BoxDecoration(
  color: clrWhite,
  border: Border.all(color: clrGrey, width: inputFieldBorWidth),
  borderRadius: BorderRadius.circular(inputFieldBorRad),
);
var boxDecorContainer = const BoxDecoration(
  color: clrWhite,
  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
);


//Login Button constants
const loginPadding = 10.0;
const loginMinHeight = 50.0;
const loginMaxWidth = 270.0;
const loginMinWidth = 120.0;
final loginFacebookIcon = Image.asset("assets/facebook.png", width: 30,height: 30);
final loginGoogleIcon = Image.asset("assets/google.png", width: 20,height: 20,);

//Input Field constants
const inputFieldBorRad = 15.0;
const inputFieldFontSize = 15.0;
const inputFieldPadding = 12.0;
const inputFieldBorWidth = 2.5;

//Input Field variables
TextEditingController uNameController = TextEditingController();
TextEditingController passController = TextEditingController();

//Login Data

//Diet Details Data
List<Map<String, dynamic>> tagsList = [
    {"id": 1, "tag": "Pork", "image": Image.asset("assets/tag_meat.png")},
    {"id": 2, "tag": "Fish", "image": Image.asset("assets/tag_fish.png")},
    {"id": 3, "tag": "Vegetable", "image": Image.asset("assets/tag_vegetable.png")},
    {"id": 4, "tag": "Chicken", "image": Image.asset("assets/tag_turkey.png")},
    {"id": 5, "tag": "No Milk", "image": Image.asset("assets/tag_milk.png")},
    {"id": 6, "tag": "No Sugar", "image": Image.asset("assets/tag_sugar.png")},
    {"id": 7, "tag": "Beef", "image": Image.asset("assets/beef.png")},
    {"id": 8, "tag": "Mushroom", "image": Image.asset("assets/mushroom.png")},
    {"id": 10, "tag": "Seafood", "image": Image.asset("assets/Seafood.png")},
    {"id": 11, "tag": "Fruit", "image": Image.asset("assets/fruits.png")},
    {"id": 12, "tag": "Eggs", "image": Image.asset("assets/Eggs.png")},
    {"id": 13, "tag": "Potato", "image": Image.asset("assets/potato.png")},
    {"id": 14, "tag": "Wheat", "image": Image.asset("assets/wheat.png")},
    {"id": 15, "tag": "Dairy", "image": Image.asset("assets/Dairy.png")},
];

List<Map<String, dynamic>> foodlist = [
  //pork
    {"type": "Adobo","name":"Pork Adobo", "tag": "Pork", "image": AssetImage("assets/adobo.jpg")},
    {"type": "Pork Chops", "name":"Pork chop", "tag": "Pork", "image": AssetImage("assets/FL_porkchops.jpg")},
    {"type": "Braised Pork","name":"Braised Pork",  "tag": "Pork", "image": AssetImage("assets/FL_braisedpork.jpg")},
    {"type": "Garlic Pork", "name":"Garlic Pork", "tag": "Pork", "image": AssetImage("assets/FL_garlicpork.jpg")},
    {"type": " Grilled", "name":"Grilled Pork", "tag": "Pork", "image": AssetImage("assets/FL_grilledpork.jpg")},
    
    
    
    

    //fish
    {"type": "Fillet", "name":"Fish Fillet", "tag": "Fish", "image": AssetImage("assets/fillet.jpg")},
    {"type": "Soup", "name":"Fish Soup", "tag": "Fish", "image": AssetImage("assets/soup.jpg")},
    {"type": " Grilled", "name":"Grilled Fish", "tag": "Fish", "image": AssetImage("assets/FL_grilledpork.jpg")},
    {"type": " Steamed", "name":"Steamed Fish", "tag": "Fish", "image": AssetImage("assets/FL_steamed.jpg")},


    //Veg
    {"type": "Soup","name":"Veg Soup", "tag": "Vegetable", "image": AssetImage("assets/soup.jpg")},
    {"type": "Salad","name":"Veg Salad", "tag": "Vegetable", "image": AssetImage("assets/salad.jpg")},
    {"type": " Steamed", "name":"Steamed Veg", "tag": "Vegetable", "image": AssetImage("assets/FL_steamed.jpg")},


    //chicken
     {"type": "Inasal", "name":"Chicken Inasal", "tag":"Chicken","image": AssetImage("assets/inasal.jpg")},
     {"type": "Fillet", "name":"Chicken Fillet", "tag":  "Chicken", "image": AssetImage("assets/fillet.jpg")},
     {"type": "Soup", "name":"Chicken Soup", "tag": "Chicken", "image": AssetImage("assets/soup.jpg")},
     {"type": "Burger", "name":"Chicken Burger", "tag": "Chicken", "image": AssetImage("assets/FL_burger.jpg")},

     //beef
     {"type": "Stew", "name":"Beef Stew", "tag": "Beef", "image": AssetImage("assets/soup.jpg")},
     {"type": "Steak", "name":"Beef Steak", "tag": "Beef", "image": AssetImage("assets/steaked.jpg")},
     {"type": "Burger", "name":"Beef Burger", "tag": "Beef", "image": AssetImage("assets/FL_burger.jpg")},

     //mush
    {"type": "Soup", "name":"Mushroom Soup", "tag": "Mushroom", "image": AssetImage("assets/soup.jpg")},

    //Seafoods
    {"type": "Shrimps", "name":"Shrimps", "tag": "Seafoods", "image": AssetImage("assets/soup.jpg")},
    {"type": "Soup", "name":"Crab Soup", "tag": "Seafoods", "image": AssetImage("assets/soup.jpg")},
    {"type": "Octopus", "name":"Crab Soup", "tag": "Seafoods", "image": AssetImage("assets/soup.jpg")},

    //fruit
    {"type": "Smoothie", "name":"fruit smoothie", "tag": "Fruits", "image": AssetImage("assets/soup.jpg")},
    {"type": "Salad", "name":"fruit salad", "tag": "Fruits", "image": AssetImage("assets/soup.jpg")},
    {"type": "Smoothie", "name":"fruit smoothie", "tag": "Fruits", "image": AssetImage("assets/soup.jpg")},
    {"type": "Pie", "name":"fruit pie", "tag": "Fruits", "image": AssetImage("assets/soup.jpg")},
  
    //Eggs
     {"type": "Boiled", "name":"Boiled egg", "tag": "Eggs", "image": AssetImage("assets/soup.jpg")},
     {"type": "Scrambled", "name":"Scrambled egg", "tag": "Eggs", "image": AssetImage("assets/soup.jpg")},
     
];




//Data list
