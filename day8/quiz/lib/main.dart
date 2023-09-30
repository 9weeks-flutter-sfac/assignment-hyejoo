import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = "https://sniperfactory.com/sfac/http_assignment_";
  var dio = Dio();

  void getData() async {
    int i = 100;

    while (i <= 150) {
      try {
        var result = await dio.post(url + i.toString(),
            options: Options(headers: {
              "user-agent": "SniperFactoryBrowser",
              "authorization": "12345"
            }));
        print(result);
      } catch (e) {
        print('에러발생 : $e');
      }
      i++;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            child: Text("버튼"),
            onPressed: getData,
          ),
        ),
      ),
    );
  }
}
