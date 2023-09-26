// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz/widget/QuizCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myController = PageController(viewportFraction: 0.8); // 옆에 컨테이너 살짝 보이게
  List<Icon> result = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> quizs = [
      {
        "question": "의학적으로 얼굴과 머리를 구분하는 기준은 어디일까요?",
        "answer": 2,
        "options": ["코", "눈썹", "귀", "머리카락"]
      },
      {
        "question": "다음 중 바다가 아닌 곳은?",
        "answer": 3,
        "options": ["카리브해", "오호츠크해", "사해", "지중해"]
      },
      {
        "question": "심청이의 아버지 심봉사의 이름은?",
        "answer": 2,
        "options": ["심전도", "심학규", "심한길", "심은하"]
      },
      {
        "question": "심청전에서 심청이가 빠진 곳은 어디일까요?",
        "answer": 4,
        "options": ["정단수", "육각수", "해모수", "인당수"]
      },
      {
        "question": "택시 번호판의 바탕색은?",
        "answer": 3,
        "options": ["녹색", "흰색", "노란색", "파란색"]
      }
    ];
    return MaterialApp(
      home: Container(
        // scaffold에 container 씌워서 배경색 설정, scaffold 기본 배경색 투명으로 변경
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.pinkAccent, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                  icon: Icon(Icons.navigate_before),
                  onPressed: () {
                    myController.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  }),
              centerTitle: true,
              title: Row(
                children: result,
                mainAxisSize:
                    MainAxisSize.min, // centerTitle true인 상태에서, 사이즈 작게
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    myController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                )
              ],
            ),
            body: SafeArea(
              child: Center(
                child: PageView.builder(
                    controller: myController,
                    itemCount: quizs.length,
                    itemBuilder: (context, index) => QuizCard(
                        quiz: quizs[index],
                        onCorrect: () {
                          myController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                          result.add(
                            Icon(Icons.circle_outlined),
                          );
                          setState(() {});
                        },
                        onIncorrect: () {
                          result.add(
                            Icon(Icons.close),
                          );
                          setState(() {});
                        })),
              ),
            ),
            floatingActionButton: result.length >= quizs.length
                ? FloatingActionButton(
                    onPressed: () {
                      result = [];
                      // result.clear();
                      myController.jumpToPage(0); // 0페이지로 가겠다
                      setState(() {});
                    },
                    child: Icon(Icons.refresh),
                  )
                : null),
      ),
    );
  }
}
