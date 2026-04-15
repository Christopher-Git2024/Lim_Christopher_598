import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "";
  int counter = 0;
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    title = "Welcome to Simple Calculator";
    number1.text = "0";
    number2.text = "0";
    super.initState();
  }

  void handleAddition() {
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void handleSubtraction() {
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }

    void handleMultiplication() {
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
    });
  }

  void handleButtonClick() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(title)),
          Center(child: Text("$counter")),
          ElevatedButton(
            onPressed: () {
              handleButtonClick();
            },
            child: Text("increment counter"),
          ),
          SizedBox(height: 20),
          TextField(controller: number1),
          SizedBox(height: 20),
          TextField(controller: number2),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  handleAddition();
                },
                child: Text("Addition"),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  handleSubtraction();
                },
                child: Text("Subtraction"),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  handleMultiplication();
                },
                child: Text("Multiplication"),
              )
            ],
          ),
          SizedBox(height: 20),
          Text("Total is $total"),
        ],
      ),
    );
  }
}
