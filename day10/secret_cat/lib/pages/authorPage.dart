import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class AuthorPage extends StatefulWidget {
  const AuthorPage({super.key});

  @override
  State<AuthorPage> createState() => _AuthorPageState();
}

class _AuthorPageState extends State<AuthorPage> {
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
            '작성자 보기',
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
            child: FutureBuilder(
          future: SecretCatApi.fetchAuthors(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  print(snapshot.data![index]);
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(185, 33, 33, 33),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                  snapshot.data![index].avatar.toString()),
                              radius: 30,
                            ),
                          ),
                          Text(
                            '아이디 : ' + snapshot.data![index].id,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '이름 : ' + snapshot.data![index].name,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(
              color: Colors.grey,
              backgroundColor: Colors.grey[800],
            );
          },
        )),
      ),
    );
  }
}
