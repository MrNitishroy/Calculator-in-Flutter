import 'package:calculator/Colors.dart';
import 'package:calculator/MyWidgets/MyButton.dart';
import 'package:calculator/MyWidgets/ResultDisplay.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String input = "234234";
  String result = "64564";
  void inputHandle(String userInput) {
    // Clear all Input data
  try{
    
    if (userInput == "<") {
      setState(() {
        input = input.substring(0, input.length - 1);
      });
    } else if (userInput == "AC") {
      setState(() {
        input = "";
        result = "";
      });
    } else if (userInput == "=") {
      final finalInput = input.replaceAll('x', '*');
      Parser p = Parser();
      Expression exp = p.parse(finalInput);
      ContextModel contextModel = ContextModel();
      setState(() {
        result = exp.evaluate(EvaluationType.REAL, contextModel).toString();
      });
    } else {
      setState(() {
        input = input + userInput;
      });
    }
  }
  catch(ex)
  {
    setState(() {
      result = ex.toString();
    });
    print(ex);
  }
  }

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
                      inputText: input,
                      resultText: result,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          onTap: () {
                            inputHandle("AC");
                          },
                          btnText: "AC",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("/");
                          },
                          btnText: "/",
                          isFunBtn: true,
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("%");
                          },
                          btnText: "%",
                          isFunBtn: true,
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("<");
                          },
                          btnText: "<",
                          isFunBtn: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          onTap: () {
                            inputHandle("7");
                          },
                          btnText: "7",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("8");
                          },
                          btnText: "8",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("9");
                          },
                          btnText: "9",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("x");
                          },
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
                          onTap: () {
                            inputHandle("4");
                          },
                          btnText: "4",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("5");
                          },
                          btnText: "5",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("6");
                          },
                          btnText: "6",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("-");
                          },
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
                          onTap: () {
                            inputHandle("1");
                          },
                          btnText: "1",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("2");
                          },
                          btnText: "2",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("3");
                          },
                          btnText: "3",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("+");
                          },
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
                          onTap: () {
                            inputHandle("0");
                          },
                          btnText: "0",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle(".");
                          },
                          btnText: ".",
                        ),
                        MyButton(
                          onTap: () {
                            inputHandle("=");
                          },
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
