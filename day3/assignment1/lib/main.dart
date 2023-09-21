// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:day3/MusicTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.from(colorScheme: ColorScheme.dark()),
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.navigate_before),
            title: Text('아워리스트'),
            centerTitle: false,
            elevation: 0,
            shape: Border(bottom: BorderSide(color: Colors.white24)),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.tv),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              )
            ],
          ),
          body: ListView(children: [
            MusicTile(
                assetUrl: "assets/music_come_with_me.png",
                title: 'Come with me',
                artist: 'Surfaces 및 salem ileseSurfaces 및 salem ilese',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_good_day.png",
                title: 'Good day',
                artist: 'Surfaces',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_honesty.png",
                title: 'Honesty',
                artist: 'Pink Sweat/\$',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_i_wish_i_missed_my_ex.png",
                title: 'I Wish I Missed My Ex',
                artist: '마할리아 버크마',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_plastic_plants.png",
                title: 'Plastic Plants',
                artist: '마할리아 버크마',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_sucker_for_you.png",
                title: 'Sucker for you',
                artist: '맷 테리',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_summer_is_for_falling_in_love.png",
                title: 'Summer is for falling in love',
                artist: 'Sarah Kang & Eye Love Brandon',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_these_days.png",
                title: 'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
                artist: 'Rudimental',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_you_make_me.png",
                title: 'You Make Me',
                artist: 'DAY6',
                time: "3:00"),
            MusicTile(
                assetUrl: "assets/music_zombie_pop.png",
                title: 'Zombie Pop',
                artist: 'DRP IAN',
                time: "3:00"),
          ]),
          bottomSheet: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 70,
                color: Colors.white12,
                child: ListTile(
                  leading: ClipRRect(
                    child:
                        Image.asset("assets/music_you_make_me.png", width: 70),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: Text('You Make Me',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  subtitle: Text(
                    'DAY6',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.skip_next),
                    )
                  ]),
                ),
              ),
              Container(
                height: 1,
                alignment: Alignment.bottomLeft,
                color: Colors.grey[700],
                child: Container(
                  width: 150,
                  color: Colors.grey[100],
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
              (BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: '둘러보기')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music), label: '보관함')
            ],
            backgroundColor: Colors.grey[850],
            type: BottomNavigationBarType.fixed,
            currentIndex: 2,
            selectedItemColor: Colors.grey[200],
            unselectedItemColor: Colors.grey[400],
          ),
        ));
  }
}
