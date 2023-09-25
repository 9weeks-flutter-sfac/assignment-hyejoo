import 'package:flutter/material.dart';
import 'package:flutter0925/widget/ContactTile.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage(
      {super.key,
      required this.name,
      required this.phone,
      required this.image});
  final String name;
  final String phone;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            ContactTile(name: name, phone: phone, imgUrl: image)
          ],
        ));
  }
}
