// ignore_for_file: prefer_const_constructors

import 'package:assignment2/OptionCard.dart';
import 'package:assignment2/admin_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Dio dio = Dio();
  List myMenu = [];

  Future<List> getData() async {
    var res = await dio
        .get('http://52.79.115.43:8090/api/collections/options/records');
    if (res.statusCode == 200) {
      return res.data['items'];
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
            onDoubleTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminPage(),
                  ));
            },
            child: Text("분식왕 이테디 주문하기")),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: DefaultTextStyle(
        style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("주문 리스트"),
            Container(
              alignment: Alignment.center,
              height: 50, // 높이를 줘서 스크롤 할 수 있는 영역 만들어주기 (없으면 오류)
              child: myMenu.isEmpty
                  ? Text("선택한 메뉴가 없습니다.")
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Chip(
                          label: Text(myMenu[index]),
                          onDeleted: () {
                            myMenu.removeAt(index);
                            setState(() {});
                          },
                        );
                      },
                      itemCount: myMenu.length,
                    ),
            ),
            SizedBox(height: 20),
            Text("음식"),
            Expanded(
                child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // print(snapshot.data![0]["imageUrl"]);
                  // print(snapshot.data?.length);
                  return GridView.builder(
                    itemCount:
                        snapshot.data?.length ?? 0, // null 들어가면 무한생성하니까 기본값 0으로
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 4,
                        crossAxisSpacing: 4),
                    itemBuilder: (context, index) {
                      return OptionCard(
                          foodName: snapshot.data![index]["menu"],
                          imgUrl: snapshot.data![index]["imageUrl"]);
                    },
                  );
                }
                return CircularProgressIndicator();
              },
            ))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: myMenu.isEmpty
          ? null // 애니메이션 효과
          : FloatingActionButton.extended(
              onPressed: () {},
              label: Text('결제하기'),
            ),
    );
  }
}
