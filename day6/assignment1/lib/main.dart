import 'package:assignment1/pages/firstPage.dart';
import 'package:assignment1/pages/secondPage.dart';
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
  var currentScreenIdx = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: [FirstPage(), SecondPage()][currentScreenIdx],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            currentScreenIdx = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.skip_previous), label: "1번"),
            BottomNavigationBarItem(
                icon: Icon(Icons.skip_next_sharp), label: "2번"),
          ],
          currentIndex: currentScreenIdx),
    ));
  }
}
