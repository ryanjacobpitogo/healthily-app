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
      body: SingleChildScrollView(
        child: Container(
          decoration: scaffoldBackground,
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: ListTile(
                horizontalTitleGap: 20,
                tileColor: Colors.transparent,
                title: Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  child: Image.network(
                    widget.flag == 1
                        ? "https://i.ibb.co/YDqPBxb/3170733.png"
                        : "https://i.ibb.co/nRyWTfh/3565418.png",
                    fit: BoxFit.fill,
                  ),
                ),
                leading: IconButton(
                    onPressed: (() {
                      setState(() {
                        widget.flag == 1
                            ? widget.flag = 0
                            : widget.flag = widget.flag;
                      });
                    }),
                    icon: const Icon(
                      Icons.navigate_before_sharp,
                      size: 50,
                    )),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                      onPressed: (() {
                        setState(() {
                          widget.flag == 0
                              ? widget.flag = 1
                              : widget.flag = widget.flag;
                        });
                      }),
                      icon: const Icon(
                        Icons.navigate_next_sharp,
                        size: 50,
                      )),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 45, 20, 1145),
                  margin: const EdgeInsets.only(top: 65),
                  decoration: boxDecorContainer,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 50, 0, 10),
                          child: Text(
                            widget.flag == 0
                                ? "Recipe Suggestions"
                                : "Restaurant Suggestions",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: widget.flag == 1
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
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
