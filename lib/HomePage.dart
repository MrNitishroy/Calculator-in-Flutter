import 'package:calculator/Colors.dart';
import 'package:calculator/MyWidgets/MyButton.dart';
import 'package:calculator/MyWidgets/ResultDisplay.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String input = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: orangeColor,
          centerTitle: true,
          title: Text(
            "CALCULATOR",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: Color(0xff354970).withOpacity(0.2),
                    offset: Offset(-2, -2),
                    blurRadius: 10,
                  )
                ]),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 20),
                    ResultDisplay(
                      input: input,
                      result: "",
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          btnText: "AC",
                          onPress: () {
                            setState(() {
                              input = "";
                            });
                          },
                        ),
                        MyButton(
                          btnText: "-/+",
                            onPress: () {
                            setState(() {
                              input = "";
                            });
                          },
                        ),
                        MyButton(
                          btnText: "%",
                            onPress: () {
                            setState(() {
                              input = "";
                            });
                          },
                        ),
                        MyButton(
                          btnText: "/",
                          isFunBtn: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          btnText: "7",
                        ),
                        MyButton(
                          btnText: "8",
                        ),
                        MyButton(
                          btnText: "9",
                        ),
                        MyButton(
                          btnText: "X",
                          isFunBtn: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          btnText: "4",
                        ),
                        MyButton(
                          btnText: "5",
                        ),
                        MyButton(
                          btnText: "6",
                        ),
                        MyButton(
                          btnText: "-",
                          isFunBtn: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          btnText: "1",
                        ),
                        MyButton(
                          btnText: "2",
                        ),
                        MyButton(
                          btnText: "3",
                        ),
                        MyButton(
                          btnText: "+",
                          isFunBtn: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          btnText: "0",
                        ),
                        MyButton(
                          btnText: ",",
                        ),
                        MyButton(
                          btnText: "=",
                          isFunBtn: true,
                          isEqualBtn: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20)
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
