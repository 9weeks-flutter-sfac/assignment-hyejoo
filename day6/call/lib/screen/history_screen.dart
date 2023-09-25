import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_missed),
      ),
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_missed_outgoing),
      ),
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_made),
      ),
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_received_sharp),
      ),
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_missed),
      ),
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_missed_outgoing),
      ),
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_made),
      ),
      ListTile(
        title: Text('김씨'),
        trailing: Icon(Icons.call_received_sharp),
      ),
    ]);
  }
}
