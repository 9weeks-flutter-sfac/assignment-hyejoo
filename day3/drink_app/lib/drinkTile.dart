import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  const DrinkTile(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.price,
      required this.nameEng});

  final String imgUrl;
  final String name;
  final String nameEng;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage(imgUrl), radius: 48),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(nameEng,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200)),
              SizedBox(
                height: 6,
              ),
              Text('$price원', style: TextStyle(fontWeight: FontWeight.bold))
            ]),
          )
        ],
      )),
    );
  }
}
