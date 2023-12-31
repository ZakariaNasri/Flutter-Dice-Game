import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(const DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;
  int total = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dice for Zax',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.grey[850],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Zakaria Nasri',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'How many additional pull ups gonna take Today ?',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftNumber = Random().nextInt(6) + 1;
                          rightNumber = Random().nextInt(6) + 1;
                          total = leftNumber + rightNumber;
                        });
                      },
                      child: Image.asset('images/dice$leftNumber.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftNumber = Random().nextInt(6) + 1;
                          rightNumber = Random().nextInt(6) + 1;
                          total = leftNumber + rightNumber;
                        });
                      },
                      child: Image.asset('images/dice$rightNumber.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "You've got $total pull ups",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
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
