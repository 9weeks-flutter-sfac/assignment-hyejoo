import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        title: Text('차단목록'),
      ),
      ListTile(
        title: Text('벨소리설정'),
      ),
      ListTile(
        title: Text('전화통계'),
      ),
    ]);
  }
}
