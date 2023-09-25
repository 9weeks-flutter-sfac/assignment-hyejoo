import 'package:drink_app/drinkTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios, color: Colors.black),
            actions: [
              Icon(Icons.search, color: Colors.black),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "NEW",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              DrinkTile(
                  imgUrl: "assets/item_drink1.jpeg",
                  name: "골든 미모사 그린 티",
                  price: 6100,
                  nameEng: "Golden Mimosa Green Tea"),
              DrinkTile(
                  imgUrl: "assets/item_drink2.jpeg",
                  name: "블랙 햅쌀 고봉 라떼",
                  price: 6300,
                  nameEng: "Black Rice Latte"),
              DrinkTile(
                  imgUrl: "assets/item_drink3.jpeg",
                  name: "아이스 블랙 햅쌀 고봉 라떼",
                  price: 6300,
                  nameEng: "Iced Black Rice Latte"),
              DrinkTile(
                  imgUrl: "assets/item_drink4.jpeg",
                  name: "스타벅스 튜메릭 라떼",
                  price: 6100,
                  nameEng: "Starbucks Turmeric Latte"),
              DrinkTile(
                  imgUrl: "assets/item_drink5.jpeg",
                  name: "아이스 스타벅스 튜메릭 라떼",
                  price: 6100,
                  nameEng: "Iced Starbucks Turmeric Latte"),
            ],
          ),
          bottomSheet: Container(
            height: 65,
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "주문할 매장을 선택 해 주세요.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.payment), label: 'Pay'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.coffee), label: 'Order'),
                BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz), label: 'Other'),
              ],
              fixedColor: Colors.green,
              currentIndex: 2,
              type: BottomNavigationBarType.fixed),
        ),
      ),
    );
  }
}
