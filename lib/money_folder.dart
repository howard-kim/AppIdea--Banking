import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoneyFolder extends StatelessWidget {
  const MoneyFolder(
      {super.key,
      required this.category,
      required this.moneyLeft,
      required this.plannedMoney,
      required this.nextScreen});

  final String category;
  final int moneyLeft;
  final int plannedMoney;

  final void Function() nextScreen;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: nextScreen,
      style: const ButtonStyle(
          foregroundColor:
              MaterialStatePropertyAll(Color.fromARGB(188, 255, 255, 255)),
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(41, 31, 120, 49))),
      child: SizedBox(
        height: 100,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                category,
                style: GoogleFonts.teko(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                '$moneyLeft₩',
                textAlign: TextAlign.right,
                style: GoogleFonts.teko(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                '$plannedMoney₩',
                textAlign: TextAlign.right,
                style: GoogleFonts.teko(
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
