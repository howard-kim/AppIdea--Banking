import 'package:flutter/material.dart';
import 'package:moez1/main_screen.dart';
import 'package:moez1/start_screen.dart';

class Moez extends StatefulWidget {
  const Moez({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MoezState();
  }
}

class _MoezState extends State<Moez> {
  var activeScreen = 'start_screen';

  void switchScreen() {
    if (activeScreen == 'start_screen') {
      setState(() {
        activeScreen = 'main_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(nextScreen: switchScreen);

    if (activeScreen == 'main_screen') {
      screenWidget = const MainScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 227, 231, 226),
                Color.fromARGB(255, 54, 101, 16),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
