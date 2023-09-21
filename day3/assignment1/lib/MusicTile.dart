import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.assetUrl,
      required this.title,
      required this.artist,
      required this.time});

  final String assetUrl;
  final String title;
  final String artist;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        child: Image.asset(assetUrl, width: 70),
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        children: [
          ClipRRect(
              child: Icon(
            Icons.check_circle,
            color: Colors.white,
            size: 16,
          )),
          SizedBox(width: 2, height: 2),
          Flexible(
            child: Text(
              artist,
              style: TextStyle(color: Colors.grey, fontSize: 13),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Text(
            '·' + time,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          )
        ],
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    );
  }
}
