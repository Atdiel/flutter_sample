import 'dart:math';

import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  double _width = 100.0;
  double _height = 100.0;
  Color _colorContainer = Colors.blue;
  BorderRadius _borderContainer = BorderRadius.circular(10);

  void _changeContainerToPink() {
    setState(() {
      _width = 200.0;
      _height = 200.0;
      _colorContainer = Colors.pink;
      _borderContainer = BorderRadius.circular(15);
    });
  }

  void _changeContainerToBlue() {
    setState(() {
      _width = 100.0;
      _height = 100.0;
      _colorContainer = Colors.blue;
      _borderContainer = BorderRadius.circular(10);
    });
  }

  void _changeContainerRandomly() {
    final random = Random();

    setState(() {
      _width = random.nextInt(250).toDouble();
      _height = random.nextInt(250).toDouble();
      _colorContainer = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderContainer = BorderRadius.circular(random.nextInt(20).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Home",
          style: TextStyle(fontSize: 30.0),
        ),
        Expanded(
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              curve: Curves.fastEaseInToSlowEaseOut,
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                  color: _colorContainer, borderRadius: _borderContainer),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _changeContainerToPink, child: Text("Rosado")),
            ElevatedButton(
                onPressed: _changeContainerToBlue, child: Text("Azul")),
            ElevatedButton(
                onPressed: _changeContainerRandomly, child: Text("Random"))
          ],
        )
      ],
    );
  }
}
