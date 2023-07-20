import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.nextScreen});

  final void Function() nextScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
              onPressed: nextScreen,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              child: Image.asset(
                'assets/images/moez1.png',
                color: Colors.white,
              ) //const Text('Hi'),
              ),
          const SizedBox(
            height: 30,
          ),
          const Text('Banking',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                backgroundColor: Colors.transparent,
              )),
        ],
      ),
      //child: Text('Start Screen'),
    );
  }
}
