import 'package:flutter/material.dart';
import 'package:healthily_app/components/logo.dart';
import 'package:healthily_app/constants.dart';
import 'package:healthily_app/screens/recCard.dart';
import 'package:healthily_app/screens/recipemodel.dart';
import 'package:healthily_app/screens/resCard.dart';

class Res extends StatefulWidget {
  Res(this.filteredRes, this.recipes, {super.key});

  List<Map<String, dynamic>> filteredRes;
  List<Map<String, dynamic>> recipes;
  int flag = 0;

  @override
  State<Res> createState() => _Res();
}

class _Res extends State<Res> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          child: Text(
            "<",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: scaffoldBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 60),
              Row(
                children: [
                  IconButton(
                      onPressed: (() {
                        setState(() {
                          widget.flag == 1
                              ? widget.flag = 0
                              : widget.flag = widget.flag;
                        });
                      }),
                      icon: const Icon(
                        Icons.navigate_before_sharp,
                        size: 90,
                      )),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network(
                      widget.flag == 0
                          ? "https://i.ibb.co/YDqPBxb/3170733.png"
                          : "https://i.ibb.co/nRyWTfh/3565418.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  IconButton(
                      onPressed: (() {
                        setState(() {
                          widget.flag == 0
                              ? widget.flag = 1
                              : widget.flag = widget.flag;
                        });
                      }),
                      icon: const Icon(
                        Icons.navigate_next_sharp,
                        size: 90,
                      )),
                ],
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(20, 45, 20, 1145),
                      margin: const EdgeInsets.only(top: 65),
                      decoration: boxDecorContainer,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 50, 0, 10),
                            child: Text(
                              "Suggestions",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: widget.flag == 0
                                  ? widget.filteredRes
                                      .map((element) => ResCard(
                                          label: element['name'],
                                          image: element['place'],
                                          name: element['location']))
                                      .toList()
                                  : widget.recipes
                                      .map((element) => RecCard(
                                          label: element['name'],
                                          image: element['image'],
                                          name: element['auth']))
                                      .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                    const LogoText(
                        showTxt: false, position: CrossAxisAlignment.center),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
