// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat/pages/authorPage.dart';
import 'package:secret_cat/pages/secretPage.dart';
import 'package:secret_cat/pages/uploadPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              'assets/images/mahdi-bafande-SHmIM3snybs-unsplash.jpg'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/incognito.png'),
                            fit: BoxFit.contain))),
              ),
              Bounce(
                animate: true,
                duration: Duration(seconds: 1),
                child: Text(
                  "비밀이야",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UploadPage(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: double.infinity,
                              width: double.infinity,
                              child: Text(
                                '비밀 업로드',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SecretPage(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: double.infinity,
                              width: double.infinity,
                              child: Text(
                                '비밀 보기',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AuthorPage(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: double.infinity,
                              width: double.infinity,
                              child: Text(
                                '작성자 보기',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
