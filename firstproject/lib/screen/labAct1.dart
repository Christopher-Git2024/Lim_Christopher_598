import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String title = "";
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    title = "Simple Calculator";
    number1.text = "0";
    number2.text = "0";
    super.initState();
  }

  void addNumbers() {
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void subtractNumbers() {
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }

    void multiplyNumbers() {
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(title, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),)),
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
                  addNumbers();
                },
                child: Text("Add", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  subtractNumbers();
                },
                child: Text("Subtract", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  multiplyNumbers();
                },
                child: Text("Multiply", style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ],
          ),
          SizedBox(height: 20),
          Text("Total is $total", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}