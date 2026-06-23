import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void _incrementCounter() {
    counter++;
    setState(() {});
  }

  void _resetCounter() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [                

                Image.asset("asset/images/zikirmatik.png", width: 300),
                Positioned(top: 53,
                 right: 80,
                  child: _counterText()),
                Positioned(bottom: 30, child: _incrementButton()),
                Positioned(right: 76, bottom: 114, child: _resetButton()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: () => _resetCounter(),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(shape: BoxShape.circle),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      onTap: () => _incrementCounter(),
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }

  Text _counterText() {
    return Text(
      "$counter",
      style: TextStyle(fontSize: 50, color: Colors.white),
    );
  }
}
