
import 'package:flutter/material.dart';
import 'package:healthily_app/components/singular_botm_nav.dart';
import 'package:healthily_app/components/title_text.dart';
import 'package:healthily_app/recipes.dart';
import 'package:healthily_app/screens/diet_details_page/dietTags.dart';
import 'package:healthily_app/screens/trial.dart';
//import 'package:healthily_app/components/title_text.dart';
import '../../components/logo.dart';
import '../../constants.dart';
// import 'components/login_button.dart';
// import 'components/input_field.dart';
// import 'components/title_text.dart';

List<Map<String, dynamic>>filterRecipes= [
];
List<Map<String, dynamic>>filterRestaurants= [
];

List<Map<String, dynamic>>filterFoodscategory= [
];

List<Map<String, dynamic>> filteredFoods = [];

List<Map<String, dynamic>> foods = [];


var seen = <dynamic>{};


 

class Diet extends StatefulWidget{
  const Diet({super.key});

 
 
 @override
  DietDetailsScreen createState() => DietDetailsScreen();



}

class DietDetailsScreen extends State<Diet> {



 

 
void filter(value){
    List<Map<String, dynamic>> foods1 = [];
     
          setState(() {

            foods1 = foods.where((element) => element['tag'] == value).toList();
           

            // filteredFoods = ( foodlist.where((element) => element['tag'] == chosenTags.map((e) => e))).toList();
            // filteredFoods.removeWhere((element) => !chosenTags.contains(element)).toList();
            filteredFoods.addAll(foods1);
           
            print(filteredFoods);
            
            
            filteredFoods = filteredFoods.toSet().toList();


          });


  }



  void filterRes (value){
   List<Map<String, dynamic>> res = [];
   List<Map<String, dynamic>> rec = [];
    setState(() {
      res = restaurant.where((element) => element['type'] == value).toList();
      filterRestaurants.addAll(res);

      rec = reci.where((element) => element['type'] == value).toList();
      filterRecipes.addAll(rec);
    


    });
  }
   
        @override
          void initState(){
            setState(() {
              foods = foodlist;
            });
            super.initState();
}     
  

  @override
  Widget build(BuildContext context) {
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  <Widget>[
                          const SizedBox(height: 40,),
                          const TitleText(label: "Your diet experience", clr: clrBlack, fntSize: 26),
                          const SizedBox(height: 40,),
                            SizedBox(
                              height: 700,
                              width: double.infinity,
                                child: GridView.count(
                                  physics: const ScrollPhysics(),

                                  crossAxisCount: 2,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 30,
                                  childAspectRatio: (5.0 / 6.2),
                                  children: 
                                    tagsList.map((element) => DietTags(label: element['tag'], icon: element['image'], onPress: (){
                                        
                                     setState(() {
                                            filter(element['tag']);

                                     });

                                    },)).toList(),
                                ),
                              ),
                            
                          
                        ],
                      ),
                    ),
                    const LogoText(showTxt: false, position: CrossAxisAlignment.center),
                  ]
                )
              ],
            )
          ),
        ),
      ),
      bottomNavigationBar: SingularBottomNavigation(text: 'SELECT', onPress: (){
            
          filterFoodscategory.addAll(filteredFoods);
                  
            filterFoodscategory = filterFoodscategory.where((element) => seen.add(element['type'])).toList();

            filteredFoods.map((e) => filterRes(e['name'])).toList();
    
            Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => const Trial()));
  
      }),
    );
  }
}
