import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var myController = PageController();
    List<Map<String, String>> words = [
      {"word": "apple", "meaning": "사과", "example": "I want to eat an apple"},
      {
        "word": "paper",
        "meaning": "종이",
        "example": "Could you give me a paper"
      },
      {
        "word": "resilient",
        "meaning": "탄력있는, 회복력있는",
        "example": "She's a resilient girl"
      },
      {
        "word": "revoke",
        "meaning": "취소하다",
        "example":
            "The authorities have revoked their original decision to allow development of this rural area."
      },
      {
        "word": "withdraw",
        "meaning": "철회하다",
        "example":
            "After lunch, we withdrew into her office to finish our discussion in private."
      },
    ];
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: SafeArea(
            child: PageView.builder(
              controller: myController,
              itemCount: words.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      words[index]['word']!,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1),
                    ),
                    Text(
                      words[index]['meaning']!,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '"${words[index]['example']!}"',
                      style: TextStyle(color: Colors.grey, letterSpacing: 1),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    myController.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Icon(Icons.navigate_before),
                ),
                FloatingActionButton(
                  onPressed: () {
                    myController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Icon(Icons.navigate_next),
                )
              ],
            ),
          ),
        ));
  }
}
