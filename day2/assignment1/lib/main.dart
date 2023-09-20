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
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Container(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: '오늘의 하루는\n',
                      ),
                      TextSpan(
                          text: '어땠나요?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal))
                    ],
                  )),
              margin: EdgeInsets.only(top: 100, bottom: 15),
            ),
            Container(
                height: 200,
                width: 300,
                margin: EdgeInsets.only(bottom: 10),
                child: PageView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "우울함",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "행복함",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Colors.orange, Colors.yellow],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "상쾌함",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.green],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                    ),
                  ],
                )),
            Divider(),
            Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      child:
                          CircleAvatar(child: Icon(Icons.person), radius: 30),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(
                            "라이언",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "게임개발\nC#,Unity",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ))
          ]),
        ),
      ),
    ));
  }
}
