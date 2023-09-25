import 'package:assignment2/OptionCard.dart';
import 'package:assignment2/admin_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // This widget is the root of your application.
  List myMenu = [];
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
              child: GridView.count(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 3,
                children: [
                  InkWell(
                    onTap: () {
                      myMenu.add('맥주');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '맥주', imgUrl: 'assets/option_beer.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('떡볶이');
                      setState(() {});
                    },
                    child: OptionCard(
                      imgUrl: 'assets/option_bokki.png',
                      foodName: '떡볶이',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('김밥');
                      setState(() {});
                    },
                    child: OptionCard(
                      imgUrl: 'assets/option_kimbap.png',
                      foodName: '김밥',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('오므라이스');
                      setState(() {});
                    },
                    child: OptionCard(
                      imgUrl: 'assets/option_omurice.png',
                      foodName: '오므라이스',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('돈까스');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '돈까스',
                        imgUrl: 'assets/option_pork_cutlets.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('라면');
                      setState(() {});
                    },
                    child: OptionCard(
                      imgUrl: 'assets/option_ramen.png',
                      foodName: '라면',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('우동');
                      setState(() {});
                    },
                    child: OptionCard(
                      imgUrl: 'assets/option_udon.png',
                      foodName: '우동',
                    ),
                  ),
                ],
              ),
            )
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
