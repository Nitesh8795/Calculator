import 'package:calculator/libraries/lib.dart';

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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30, right: 15, left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                            child: Text(
                              userInput.toString(),
                              style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                            ),
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Align(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          child: Text(
                            finalResult,
                            style: TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ),
                        alignment: Alignment.bottomRight,
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
                                finalResult = "0";
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
                            onPress: () {
                              if (userInput != null && userInput.length > 0) {
                                userInput = userInput.substring(
                                    0, userInput.length - 1);
                              }
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: "=",
                            color: Color(0xffffa00a),
                            onPress: () {
                              calculate();
                              setState(() {});
                            },
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

  void calculate() {
    final original = userInput;
    final find = 'x';
    final replaceWith = '*';
    final newString = original.replaceAll(find, replaceWith);

    try {
      Parser p = Parser();
      Expression exp = p.parse(newString);
      ContextModel contextModel = ContextModel();

      double eval = exp.evaluate(EvaluationType.REAL, contextModel);
      finalResult = eval.toStringAsPrecision(3);
    } catch (e) {
      finalResult = "Invalid Expression";
    }
  }
}
