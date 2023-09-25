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
  bool isSunActive = false;

  bool isMoonActive = false;

  bool isStarActive = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: !isSunActive
                    ? Icon(Icons.sunny)
                    : Icon(
                        Icons.sunny,
                        color: Colors.red,
                      ),
                title: Text('Sun'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_right_sharp),
                    onPressed: () {
                      isSunActive = !isSunActive;
                      setState(() {});
                    }),
              ),
              ListTile(
                leading: !isMoonActive
                    ? Icon(Icons.question_mark_outlined)
                    : Icon(
                        Icons.question_mark_outlined,
                        color: Colors.green,
                      ),
                title: Text('Moon'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_right_sharp),
                    onPressed: () {
                      isMoonActive = !isMoonActive;
                      setState(() {});
                    }),
              ),
              ListTile(
                leading: !isStarActive
                    ? Icon(Icons.star)
                    : Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                title: Text('Star'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_right_sharp),
                    onPressed: () {
                      isStarActive = !isStarActive;
                      setState(() {});
                    }),
              ),
              TextField(
                onSubmitted: (value) {
                  if (value == "sun")
                    isSunActive = !isSunActive;
                  else if (value == "moon")
                    isMoonActive = !isMoonActive;
                  else if (value == "star") isStarActive = !isStarActive;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              isSunActive = false;
              isMoonActive = false;
              isStarActive = false;
              setState(() {});
            },
            child: Icon(Icons.refresh)),
      ),
    );
  }
}
