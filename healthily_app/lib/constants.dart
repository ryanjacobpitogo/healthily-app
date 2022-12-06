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
];


//Data list
