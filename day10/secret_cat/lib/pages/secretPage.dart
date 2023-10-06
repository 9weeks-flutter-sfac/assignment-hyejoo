// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class SecretPage extends StatefulWidget {
  const SecretPage({super.key});

  @override
  State<SecretPage> createState() => _SecretPageState();
}

class _SecretPageState extends State<SecretPage> {
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
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[700]),
          title: Text(
            '비밀 보기',
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
            child: FutureBuilder(
          future: SecretCatApi.fetchSecrets(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return PageView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Center(
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
                                      image: AssetImage(
                                          'assets/images/incognito.png'),
                                      fit: BoxFit.contain))),
                        ),
                        Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(185, 33, 33, 33),
                                borderRadius: BorderRadius.circular(16)),
                            child: ListView(children: [
                              snapshot.data![index].author.toString() != 'null'
                                  ? Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                          snapshot.data![index].author
                                              .toString(),
                                          style:
                                              TextStyle(color: Colors.white)),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text('익명',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(snapshot.data![index].secret,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, right: 12),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                      snapshot.data![index].createdAt
                                          .toString()
                                          .substring(0, 19),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ),
                              ),
                            ])),
                      ],
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator();
          },
        )),
      ),
    );
  }
}
