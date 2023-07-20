import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moez1/detail_screen.dart';
import 'package:moez1/main_screen_column.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  var activeScreen = 'main_screen';

  void switchScreen() {
    if (activeScreen == 'main_screen') {
      setState(() {
        activeScreen = 'detail_screen';
        //print(activeScreen.toString());
      });
    }
  }

  void backScreen() {
    if (activeScreen == 'detail_screen') {
      setState(() {
        activeScreen = 'main_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = MainScreenColumn(nextScreen1: switchScreen);

    if (activeScreen == 'detail_screen') {
      screenWidget = const DetailScreen();
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/moez1.png',
            color: Colors.white,
            height: 200,
          ),
          SizedBox(
            child: Text(
              'Total : 1,330,000 ₩',
              style: GoogleFonts.teko(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 400,
            child: screenWidget,
          ),
          ElevatedButton(onPressed: backScreen, child: Text('Back'))
        ],
      ),
    );
  }
}
