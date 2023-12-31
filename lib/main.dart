import 'package:flutter/material.dart';

void main() {
  return runApp(const DicePage());
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('images/dice1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('images/dice6.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
