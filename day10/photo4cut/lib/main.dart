// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var imagePicker = ImagePicker();
  List<XFile?> images = [null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('포토네컷'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
            children: images
                .asMap() //  .asMap().entries 를 통해 key, value 둘다 사용할 수 있음 (인덱싱 가능)
                .entries // 현업에서 많이 사용
                .map(
                  // 기존 map은 value만 사용
                  (e) => Expanded(
                    child: InkWell(
                      onTap: () async {
                        var xfile = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        if (xfile != null) images[e.key] = xfile;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            image: images[e.key] != null
                                ? DecorationImage(
                                    fit: BoxFit.cover,
                                    image: FileImage(File(images[e.key]!.path)))
                                : null,
                          ),
                        ),
                      ),
                      onDoubleTap: () {
                        setState(() {
                          images[e.key] = null;
                        });
                      },
                    ),
                  ),
                )
                .toList()),
      ),
    )));
  }
}
