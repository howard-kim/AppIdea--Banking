import 'package:flutter/material.dart';

class MoneyLog extends StatelessWidget {
  const MoneyLog(
      {super.key,
      required this.foodImage,
      required this.brand,
      required this.foodName,
      required this.price,
      required this.date});

  final String date;
  final String foodImage;
  final String brand;
  final String foodName;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border.all(color: const Color.fromARGB(77, 54, 88, 72), width: 1),
      ),
      child: SizedBox(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(foodImage),
                    radius: 30,
                  ),
                ),
                SizedBox(
                  child: Text(brand,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  child: Text(foodName,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  child: Text('$price₩',
                      style:
                          const TextStyle(fontSize: 30, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
