// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:contact_app/ContactTile.dart';
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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("연락처"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone), label: '연락처'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "통화기록"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정")
          ]),
          floatingActionButton:
              FloatingActionButton(onPressed: (() {}), child: Icon(Icons.add)),
          body: ListView(
            children: [
              ContactTile(
                  name: '김씨',
                  phone: '010-1234-1234',
                  imgUrl: 'https://www.picsum.photos/100/100'),
              ContactTile(
                  name: '이씨',
                  phone: '010-1234-1234',
                  imgUrl: 'https://www.picsum.photos/99/99'),
              ContactTile(
                  name: '박씨',
                  phone: '010-1234-1234',
                  imgUrl: 'https://www.picsum.photos/98/98'),
              ContactTile(
                  name: '최씨',
                  phone: '010-1234-1234',
                  imgUrl: 'https://www.picsum.photos/97/97'),
              ContactTile(
                  name: '서씨',
                  phone: '010-1234-1234',
                  imgUrl: 'https://www.picsum.photos/96/96'),
              ContactTile(
                  name: '홍씨',
                  phone: '010-1234-1234',
                  imgUrl: 'https://www.picsum.photos/95/95'),
            ],
          ),
        ),
      ),
    );
  }
}
