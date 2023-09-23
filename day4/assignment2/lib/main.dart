// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assignment2/OptionCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  List myMenu = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("분식왕 이테디 주문하기"),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: DefaultTextStyle(
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("주문 리스트"),
              Text(myMenu.toString()),
              SizedBox(height: 20),
              Text("음식"),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 3,
                  children: [
                    InkWell(
                      onTap: () {
                        myMenu.add('맥주');
                        setState(() {});
                      },
                      child: OptionCard(
                          foodName: '맥주', imgUrl: 'assets/option_beer.png'),
                    ),
                    InkWell(
                      onTap: () {
                        myMenu.add('떡볶이');
                        setState(() {});
                      },
                      child: OptionCard(
                        imgUrl: 'assets/option_bokki.png',
                        foodName: '떡볶이',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        myMenu.add('김밥');
                        setState(() {});
                      },
                      child: OptionCard(
                        imgUrl: 'assets/option_kimbap.png',
                        foodName: '김밥',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        myMenu.add('오므라이스');
                        setState(() {});
                      },
                      child: OptionCard(
                        imgUrl: 'assets/option_omurice.png',
                        foodName: '오므라이스',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        myMenu.add('돈까스');
                        setState(() {});
                      },
                      child: OptionCard(
                          foodName: '돈까스',
                          imgUrl: 'assets/option_pork_cutlets.png'),
                    ),
                    InkWell(
                      onTap: () {
                        myMenu.add('라면');
                        setState(() {});
                      },
                      child: OptionCard(
                        imgUrl: 'assets/option_ramen.png',
                        foodName: '라면',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        myMenu.add('우동');
                        setState(() {});
                      },
                      child: OptionCard(
                        imgUrl: 'assets/option_udon.png',
                        foodName: '우동',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // myMenu.removeRange(0, myMenu.length);
            myMenu = [];
            setState(() {});
          },
          label: Text('초기화하기'),
        ),
      ),
    );
  }
}
