// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int x = 0;
    int y = 0;
    return Scaffold(
      appBar: AppBar(title: Text("사칙연산"), centerTitle: true),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text("X의 값은?",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      x = int.parse(value);
                    },
                    decoration: InputDecoration(
                        hintText: "x값을 입력하세요",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))))),
              ))
            ],
            mainAxisSize: MainAxisSize.min,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text("Y의 값은?",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      y = int.parse(value);
                    },
                    decoration: InputDecoration(
                        hintText: "y값을 입력하세요",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))))),
              ))
            ],
            mainAxisSize: MainAxisSize.min,
          ),
          ElevatedButton(
            onPressed: () {
              int result = x + y;
              showResultDialog(context, result);
            },
            child: Text(
              "더하기의 결과값은?!",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              int result = x * y;
              showResultDialog(context, result);
            },
            child: Text(
              "곱하기의 결과값은?!",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              int result = (x - y).abs();
              showResultDialog(context, result);
            },
            child: Text(
              "빼기의 결과값은?!",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              double result = x / y;
              showResultDialog(context, result);
            },
            child: Text(
              "나누기의 결과값은?!",
            ),
          )
        ]),
      ),
    );
  }

  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        );
      },
    );
  }
}
