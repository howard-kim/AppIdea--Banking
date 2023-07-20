import 'package:flutter/material.dart';
import 'package:moez1/money_log.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MoneyLog(
            foodImage: 'assets/images/mcdonald.jpg',
            brand: '맥도날드',
            foodName: '빅맥',
            price: 10000,
            date: '2023. 7.18. (화)',
          ),
          MoneyLog(
            foodImage: 'assets/images/subway.jpeg',
            brand: '서브웨이',
            foodName: '샌드위치',
            price: 8900,
            date: '2023. 7.16. (일)',
          ),
          MoneyLog(
            foodImage: 'assets/images/stew.jpeg',
            brand: '양평',
            foodName: '선지해장국',
            price: 12000,
            date: '2023. 7.12. (수)',
          ),
          MoneyLog(
            foodImage: 'assets/images/riceburger.webp',
            brand: '봉구스',
            foodName: '밥버거',
            price: 3000,
            date: '2023. 7.10. (월)',
          ),
          MoneyLog(
            foodImage: 'assets/images/banjum.png',
            brand: '홍콩반점',
            foodName: '짜장면',
            price: 7000,
            date: '2023. 7. 9. (일)',
          )
        ],
      ),
    );
  }
}
