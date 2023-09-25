import 'package:flutter/material.dart';
import 'package:flutter0925/widget/ContactTile.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
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
          name: '차씨',
          phone: '010-1234-1234',
          imgUrl: 'https://www.picsum.photos/95/95'),
      ContactTile(
          name: '백씨',
          phone: '010-1234-1234',
          imgUrl: 'https://www.picsum.photos/94/94'),
      ContactTile(
          name: '조씨',
          phone: '010-1234-1234',
          imgUrl: 'https://www.picsum.photos/93/93'),
    ]);
  }
}
