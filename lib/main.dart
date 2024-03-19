import 'package:flutter/material.dart';
import 'package:havv/UI/album_screen.dart';
import 'UI/now_playing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ứng Dụng Nghe Nhạc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ứng dụng nghe nhạc'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'All'),
                    Tab(text: 'Album'),
                    Tab(text: 'Playlist'),
                  ],
                ),
                Container(
                  height: 400,
                  child:  TabBarView(
                    children: [
                      Center(
                        child: Text('Danh sách bài hát All'),
                      ),
                      AlbumTab(),
                      Center(
                        child: Text('Danh sách album'),
                      ),
                      Center(
                        child: Text('Danh sách playlist'),
                      ),
                    ],
                  ),
                ),
                NowPlayingWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

