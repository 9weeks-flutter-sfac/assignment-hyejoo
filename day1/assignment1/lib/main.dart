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
      home: Scaffold(
        body: Center(
          child: Container(
            child: RichText(
              text: TextSpan(
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                children: [
                  TextSpan(text: "안녕하세요!\n간단하게 제"),
                  TextSpan(
                    text: "소개",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                  TextSpan(text: "를 해보겠습니다\n\n"),
                  TextSpan(text: "먼저 저의 MBTI는"),
                  TextSpan(
                    text: "INFJ",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                  TextSpan(text: "이고\n직업은"),
                  TextSpan(
                    text: "개발자",
                    style: TextStyle(color: Colors.green, fontSize: 25),
                  ),
                  TextSpan(text: "입니다.\n\n"),
                  TextSpan(
                      text: "꿈",
                      style: TextStyle(
                          color: Colors.yellow,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.black)),
                  TextSpan(
                      text: "은 없고요\n그냥 놀고싶습니다\n\n",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.lineThrough)),
                  TextSpan(
                      text: "감사합니다",
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 25,
                      ))
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
