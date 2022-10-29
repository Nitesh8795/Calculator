import 'package:calculator/components/my_button.dart';
import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String userInput = '';
  String finalResult = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      Text(
                        finalResult.toString(),
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          mybutton(
                            title: "AC",
                            onPress: () {
                              setState(() {
                                userInput = "";
                              });
                            },
                          ),
                          mybutton(
                            title: "+/-",
                            onPress: () {},
                          ),
                          mybutton(
                            title: "%",
                            onPress: () {
                              userInput += "%";
                            },
                          ),
                          mybutton(
                            title: "/",
                            color: Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += "/";
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          mybutton(
                            title: "7",
                            onPress: () {
                              setState(() {
                                userInput += "7";
                              });
                            },
                          ),
                          mybutton(
                            title: "8",
                            onPress: () {
                              setState(() {
                                userInput += "8";
                              });
                            },
                          ),
                          mybutton(
                            title: "9",
                            onPress: () {
                              setState(() {
                                userInput += "9";
                              });
                            },
                          ),
                          mybutton(
                            title: "x",
                            color: Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += "x";
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          mybutton(
                            title: "4",
                            onPress: () {
                              setState(() {
                                userInput += "4";
                              });
                            },
                          ),
                          mybutton(
                            title: "5",
                            onPress: () {
                              setState(() {
                                userInput += "5";
                              });
                            },
                          ),
                          mybutton(
                            title: "6",
                            onPress: () {
                              setState(() {
                                userInput += "6";
                              });
                            },
                          ),
                          mybutton(
                            title: "-",
                            color: Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += "-";
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          mybutton(
                            title: "1",
                            onPress: () {
                              setState(() {
                                userInput += "1";
                              });
                            },
                          ),
                          mybutton(
                            title: "2",
                            onPress: () {
                              setState(() {
                                userInput += "2";
                              });
                            },
                          ),
                          mybutton(
                            title: "3",
                            onPress: () {
                              setState(() {
                                userInput += "3";
                              });
                            },
                          ),
                          mybutton(
                            title: "+",
                            color: Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += "+";
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          mybutton(
                            title: "0",
                            onPress: () {
                              setState(() {
                                userInput += "0";
                              });
                            },
                          ),
                          mybutton(
                            title: ".",
                            onPress: () {
                              setState(() {
                                userInput += ".";
                              });
                            },
                          ),
                          mybutton(
                            title: "DEL",
                            onPress: () {},
                          ),
                          mybutton(
                            title: "=",
                            color: Color(0xffffa00a),
                            onPress: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
