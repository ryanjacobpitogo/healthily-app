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
    {"type": " Grilled", "name":"Grilled Pork", "tag": "Pork", "image": AssetImage("assets/FL_grilledpork.jpg")},
    
    
    
    
    

    //fish
    {"type": "Fillet", "name":"Fish Fillet", "tag": "Fish", "image": AssetImage("assets/fillet.jpg")},
    {"type": "Soup", "name":"Fish Soup", "tag": "Fish", "image": AssetImage("assets/soup.jpg")},
  
   

    //Veg
    {"type": "Soup","name":"Veg Soup", "tag": "Vegetable", "image": AssetImage("assets/soup.jpg")},
    {"type": "Salad","name":"Veg Salad", "tag": "Vegetable", "image": AssetImage("assets/salad.jpg")},
    

    //chicken
     {"type": "Inasal", "name":"Chicken Inasal", "tag":"Chicken","image": AssetImage("assets/inasal.jpg")},
    
     {"type": "Soup", "name":"Chicken Soup", "tag": "Chicken", "image": AssetImage("assets/soup.jpg")},
 

     //beef
     {"type": "Soup", "name":"Beef Soup", "tag": "Beef", "image": AssetImage("assets/soup.jpg")},
     {"type": "Steak", "name":"Beef Steak", "tag": "Beef", "image": AssetImage("assets/steaked.jpg")},
  

     //mush
    {"type": "Soup", "name":"Mushroom Soup", "tag": "Mushroom", "image": AssetImage("assets/soup.jpg")},

    //Seafoods
    {"type": "Shrimps", "name":"Shrimps", "Seafoods": "Seafoods", "image": AssetImage("assets/soup.jpg")},
    {"type": "Soup", "name":"Crab Soup", "Seafoods": "Seafoods", "image": AssetImage("assets/soup.jpg")},


    //fruit
   
    {"type": "Salad", "name":"Fruits Salad", "tag": "Fruits", "image": AssetImage("assets/soup.jpg")},
    {"type": "Smoothie", "name":"Fruits", "tag": "Fruits", "image": AssetImage("assets/soup.jpg")},
    

     
];




//Data list



List<Map<String, dynamic>> restaurant =[
   //porkadobo
{
  'id': 'PA1' , 'name': 'The Thray' , 'type': "Pork Adobo" , 'price': 225 , 'location': 'The Thray Grove Bldg. Guadalupe 6000 Cebu City Central Visayas', 'calorie': 425, 'logo': NetworkImage("https://i.ibb.co/FY5538h/REs-pork-AThethry.jpg"), 'image':  NetworkImage("https://i.ibb.co/7J25cKB/REs-pork-AThethray.jpg"), 'place': NetworkImage("https://i.ibb.co/G52PzRB/PA-thethrayplace.jpg")

},
{
  'id': 'PA2' , 'name': 'Hukad' , 'type': "Pork Adobo" , 'price': 200 , 'location': 'Salinas Drive, Lahug, Cebu City', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/stBzzLJ/PA-hukadlogo.png"), 'image':NetworkImage("https://i.ibb.co/H77MNYV/R.jpg"), 'place': NetworkImage("https://i.ibb.co/qxczSZs/Pa-hukadplace.jpg")
},
{
  'id': 'PA3' , 'name': 'Adobo Connection' , 'type': "Pork Adobo" , 'price': 200 , 'location': 'Gaisano Fiesta Mall 6045 Talisay,Cebu,Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/gyLksWK/8216818-orig.png"), 'image':NetworkImage("https://i.ibb.co/9h491Tk/4.jpg"), 'place': NetworkImage("https://i.ibb.co/wL1xpjd/adobo-connection-5.jpg")
},
{
  'id': 'PA4' , 'name': 'Cios Kitchen' , 'type': "Pork Adobo" , 'price': 200 , 'location': '42507 Benedicto Plaza Nouvelle, Cebu City 6000 Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/2nB0sYK/OIP.jpg"), 'image':NetworkImage("https://i.ibb.co/dJyMBT1/image-url-https-static-onecms-io-wp-content-uploads-sites-44-2019-08-26232411-3757032.jpg"), 'place': NetworkImage("https://i.ibb.co/6sbQ2d1/48874270846-60b28fbaf9-z.jpg")
},





//porkchops
{
  'id': 'PC1' , 'name': 'KKD stk+bbq' , 'type': "Pork chop" , 'price': 200 , 'location': 'M. J. Cuenco Ave, Cebu City, Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/2v6gt2z/kkd-stk-bbq-cebu-2.jpg"), 'image':NetworkImage("https://i.ibb.co/PCzDNtf/recipe-grilled-pork-chop.jpg"), 'place': NetworkImage("https://i.ibb.co/NsYctnc/kkd-stk-bbq-cebu-4.jpg")
},

{
  'id': 'PC2' , 'name': 'Han Pork' , 'type': "Pork chop" , 'price': 200 , 'location': 'Mango Square, General Maxilom Avenue Cebu City Central Visayas', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/Pg3s4Xd/OIP.jpg"), 'image':NetworkImage("https://i.ibb.co/BLn92Bj/ff3ff113fb217f53b7f657f908c1ec57.jpg"), 'place': NetworkImage("https://i.ibb.co/4PbHZ8L/notre-salle-au-tout-debut.jpg")
},
{
  'id': 'PC3' , 'name': 'Casaverde' , 'type': "Pork chop" , 'price': 200 , 'location': 'Salinas Drive, Lahug, Cebu City', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/p12Jjtc/OIP.jpg"), 'image':NetworkImage("https://i.ibb.co/stqnCFt/OIP.jpg"), 'place': NetworkImage("https://i.ibb.co/3B4HVJM/DSCN4364.jpg")
},


//grilled pork

{
  'id': 'GP1' , 'name': 'KKD stk+bbq' , 'type': "Grilled Pork" , 'price': 200 , 'location': 'M. J. Cuenco Ave, Cebu City, Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/2v6gt2z/kkd-stk-bbq-cebu-2.jpg"), 'image':NetworkImage("https://i.ibb.co/PCzDNtf/recipe-grilled-pork-chop.jpg"), 'place': NetworkImage("https://i.ibb.co/NsYctnc/kkd-stk-bbq-cebu-4.jpg")
},
{
  'id': 'GP2' , 'name': 'Hukad' , 'type': "Grilled Pork" , 'price': 200 , 'location': 'Salinas Drive, Lahug, Cebu City', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/stBzzLJ/PA-hukadlogo.png"), 'image':NetworkImage("https://i.ibb.co/cXBtJJw/webp-u-https-cdn-phonebooky-com-blog-wp-content-uploads-2016-09-22203732-Tuna-Belly.jpg"), 'place': NetworkImage("https://i.ibb.co/qxczSZs/Pa-hukadplace.jpg")
},

{
  'id': 'GP3' , 'name': 'Barbix Barbecue & Grill' , 'type': "Grilled Pork" , 'price': 200 , 'location': 'Salinas Drive, Lahug, Cebu City', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/4FfxNr8/5c80d94f919a315da04640fd664483f7.jpg"), 'place': NetworkImage("https://i.ibb.co/34bdpRx/1553701361098.jpg")
},



//fillet
{
  'id': 'FF1' , 'name': 'Davids Tea House' , 'type': "Fish Fillet" , 'price': 200 , 'location': 'M. J. Cuenco Ave, Cebu City, Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/fG2byC9/6924437.jpg"), 'image':NetworkImage("https://i.ibb.co/PCzDNtf/recipe-grilled-pork-chop.jpg"), 'place': NetworkImage("https://i.ibb.co/Ns5G4K2/431.jpg")
},
{
  'id': 'FF2' ,  'name': 'Casaverde' , 'type': "Fish Fillet", 'price': 200 , 'location': 'Salinas Drive, Lahug, Cebu City', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/p12Jjtc/OIP.jpg"), 'image':NetworkImage("https://i.ibb.co/SrJb97w/casa-verde-cebu-offdutymama-2.jpg"), 'place': NetworkImage("https://i.ibb.co/3B4HVJM/DSCN4364.jpg")
},
{'id': 'FF3' ,  'name': 'Seafood Paradise' , 'type': "Fish Fillet" , 'price': 200 , 'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/ZfxS9vT/id8qag480x360-rs-1-pid-Img-Det.jpg"), 'image':NetworkImage("https://i.ibb.co/JRXqYDn/Thai-Style-Grilled-Fish-Fillets.jpg"), 'place': NetworkImage("https://i.ibb.co/BCnsW8T/Seafood-Paradise-Buffet-SM-Seaside-Cebu-1-1024x809.jpg")
},


//fish soup

{'id': 'FS3' ,  'name': 'Tanciongs' , 'type': "Fish Soup" , 'price': 200 , 'location': 'bulacao, Cebu City, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"), 'image':NetworkImage("https://i.ibb.co/q95DTkZ/s1.jpg"), 'place': NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")},

{'id': 'FS1' ,  'name': 'SKT ta bay' , 'type': "Fish Soup" , 'price': 200 , 'location': 'Orchid Street Capitol Site 6000 Cebu City Central Visayas', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/m533vKc/R-1.jpg"), 'image':NetworkImage("https://i.ibb.co/mvnYzMN/tinolang-isda.jpg"), 'place': NetworkImage("https://i.ibb.co/PmVVdkd/326-509305626.jpg")},

{'id': 'FS2' ,  'name': 'Teppan Okonomiyaki' , 'type': "Fish Soup" , 'price': 200 , 'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/rd1vyH3/3a256d3c9d7b245ee005842fa424c4b4.png"), 'image':NetworkImage("https://i.ibb.co/bRJqMMp/maxresdefault.jpg"), 'place': NetworkImage("https://i.ibb.co/VqbLghF/the-first-hiroshima-okonomiyak.jpg")},



//Veg

{
  'id': 'VS1' ,  'name': 'KUSINA UNO' , 'type': "Veg Soup" , 'price': 200 , 'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/rfND6vR/KU.jpg"), 'image':NetworkImage("https://i.ibb.co/bHtGGFB/utan-bisaya.jpg"), 'place': NetworkImage("https://i.ibb.co/D778jSW/as.jpg  ")
},
{
  'id': 'VS2' ,  'name': 'Tanciongs' , 'type': "Veg Soup" , 'price': 200 , 'location': 'bulacao, Cebu City, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"), 'image':NetworkImage("https://i.ibb.co/S7Y3gQ8/vegetable-soup.jpg"), 'place': NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")
},
{
  'id': 'VS3' ,  'name': 'Chop Stpo' , 'type': "Veg Soup" , 'price': 200 , 'location': 'Maxilom Avenue, Cebu City 6000 Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/XJmB2Gw/OIP.jpg"), 'image':NetworkImage("https://i.ibb.co/QkBkpxz/diabetes-friendly-recipe-clear-vegetable-soup.jpg"), 'place': NetworkImage("https://i.ibb.co/smqYR7j/as.jpg")
},
{
  'id': 'VS4' ,  'name': 'House of Lechon' , 'type': "Veg Soup" , 'price': 200 , 'location': 'Acacia Street, Cebu City 6000 Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/6YGcCRy/welcome-to-house-of-lechon.jpg"), 'image':NetworkImage("https://i.ibb.co/K7vK8fJ/as.jpg"), 'place': NetworkImage("https://i.ibb.co/MSdbzPh/houseoflechoncapitol-11.jpg")
},

//veg salad

{
  'id': 'VS1' ,  'name': 'KUSINA UNO' , 'type': "Veg Salad" , 'price': 200 , 'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/rfND6vR/KU.jpg"), 'image':NetworkImage("https://i.ibb.co/HKGdRhb/as.jpg"), 'place': NetworkImage("https://i.ibb.co/D778jSW/as.jpg  ")
},
{
  'id': 'VS2' ,  'name': 'Tanciongs' , 'type': "Veg Salad" , 'price': 200 , 'location': 'bulacao, Cebu City, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"), 'image':NetworkImage("https://i.ibb.co/7zXdJnD/abaca-robinsons-galleria-01.jpg"), 'place': NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")
},
{
  'id': 'VS3' ,  'name': 'Chop Stpo' , 'type': "Veg Salad" , 'price': 200 , 'location': 'Maxilom Avenue, Cebu City 6000 Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/XJmB2Gw/OIP.jpg"), 'image':NetworkImage("https://i.ibb.co/zGB2j6y/DSC01144.jpg"), 'place': NetworkImage("https://i.ibb.co/smqYR7j/as.jpg")
},
{
  'id': 'VS4' ,  'name': 'House of Lechon' , 'type': "Veg Salad" , 'price': 200 , 'location': 'Acacia Street, Cebu City 6000 Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/6YGcCRy/welcome-to-house-of-lechon.jpg"), 'image':NetworkImage("https://i.ibb.co/MDsB0Qq/68435-The-Chieftain-Irish-Pub-Restaurant-Mixed-Green-Salad.jpg"), 'place': NetworkImage("https://i.ibb.co/MSdbzPh/houseoflechoncapitol-11.jpg")
},


    //chicken

{
  'id': 'CS1' ,  'name': 'KUSINA UNO' , 'type': "Chicken Soup" , 'price': 200 , 'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/rfND6vR/KU.jpg"), 'image':NetworkImage("https://i.ibb.co/myTFyqy/as.webp"), 'place': NetworkImage("https://i.ibb.co/D778jSW/as.jpg  ")
},
{
  'id': 'CS2' ,  'name': 'Tanciongs' , 'type': "Chicken Soup" , 'price': 200 , 'location': 'bulacao, Cebu City, Philippines', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"), 'image':NetworkImage("https://i.ibb.co/02V2hf9/IMG-6656-1024x1024.jpg"), 'place': NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")
},
{
  'id': 'CS3' ,  'name': 'RAI RAI KEN' , 'type': "Chicken Soup" , 'price': 200 , 'location': '3rd Level Ayala Center Cebu 6000 Cebu City 6000 Cebu City', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/0J9P6Zk/as.jpg"), 'image':NetworkImage("https://i.ibb.co/7SFcy07/Chicken-Rice-Soup.jpg"), 'place': NetworkImage(" https://i.ibb.co/SRdp0Pb/ls.jpg")
},

//chicken nsal
{
  'id': 'CI1' ,  'name': 'Chooks-to-Go' , 'type': "Chicken Soup" , 'price': 200 , 'location': 'J Centre Mall, Tipolo, Mandaue City, Mandaue City', 'calorie': 405, 'logo': NetworkImage("https://i.ibb.co/NnWtwy6/Gg-vBMY6.jpg"), 'image':NetworkImage("https://i.ibb.co/kHzq1gm/as.jpg"), 'place': NetworkImage("https://i.ibb.co/mH4W2Kh/3be69ba157d2229475c14cd2b17e50d5-featured-v2.webp")
},









];
