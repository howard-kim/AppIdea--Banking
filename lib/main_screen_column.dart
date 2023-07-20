import 'package:flutter/material.dart';
import 'package:moez1/money_folder.dart';

class MainScreenColumn extends StatelessWidget {
  const MainScreenColumn({super.key, required this.nextScreen1});
  final void Function() nextScreen1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        MoneyFolder(
          category: '식비',
          moneyLeft: 50000,
          plannedMoney: 300000,
          nextScreen: nextScreen1,
        ),
        MoneyFolder(
          category: '월세',
          moneyLeft: 0,
          plannedMoney: 500000,
          nextScreen: nextScreen1,
        ),
        MoneyFolder(
          category: '관리비',
          moneyLeft: 80000,
          plannedMoney: 80000,
          nextScreen: nextScreen1,
        ),
        MoneyFolder(
          category: '공과금',
          moneyLeft: 0,
          plannedMoney: 50000,
          nextScreen: nextScreen1,
        ),
        MoneyFolder(
          category: '데이트비',
          moneyLeft: 220000,
          plannedMoney: 300000,
          nextScreen: nextScreen1,
        ),
        MoneyFolder(
          category: '쇼핑',
          moneyLeft: 20000,
          plannedMoney: 100000,
          nextScreen: nextScreen1,
        )
      ],
    ));
  }
}
