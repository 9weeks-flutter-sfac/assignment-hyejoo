// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    var myController = TextEditingController();

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
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[700]),
          title: Text(
            '비밀 업로드',
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/incognito.png'),
                          fit: BoxFit.contain))),
            ),
            TextField(
              controller: myController,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(185, 33, 33, 33),
                filled: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (SecretCatApi.addSecret(myController.text) != null) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 150,
                              child: Center(
                                  child: Text(
                                "비밀이 업로드 되었습니다.",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          );
                        },
                      );
                      myController.text = "";
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 40),
                      backgroundColor: Colors.grey[800]),
                  child: Text(
                    '업로드',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
            ),
          ],
        ))),
      ),
    );
  }
}
