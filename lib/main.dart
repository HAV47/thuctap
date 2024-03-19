import 'package:flutter/material.dart';
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
                  height: 360,
                  child: TabBarView(
                    children: [
                      Center(
                        child: Text('Danh sách bài hát All'),
                      ),
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
        //   Container(
        //     color: Colors.grey[200],
        //     padding: EdgeInsets.all(5),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         // Hình ảnh bìa album (để placeholder)
        //         Container(
        //           width: 50,
        //           height: 50,
        //           color: Colors.black,
        //           child: Icon(Icons.album, size: 50, color: Colors.white),
        //         ),
        //         SizedBox(height: 5),
        //         // Tiêu đề bài hát và nghệ sĩ
        //         Text(
        //           'Tên bài hát',
        //           style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
        //         ),
        //         Text(
        //           'Tên nghệ sĩ',
        //           style: TextStyle(fontSize: 5),
        //         ),
        //         SizedBox(height: 0.2),
        //         Slider(
        //           value: 0,
        //           onChanged: (double value) {
        //           },
        //           min: 0,
        //           max: 1,
        //           divisions: 100,
        //           label: 'Slider',
        //         ),
        //         SizedBox(height: 5),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             IconButton(
        //               icon: Icon(Icons.skip_previous),
        //               onPressed: () {
        //               },
        //             ),
        //             IconButton(
        //               icon: Icon(Icons.play_arrow),
        //               onPressed: () {
        //               },
        //             ),
        //             IconButton(
        //               icon: Icon(Icons.skip_next),
        //               onPressed: () {
        //               },
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        ],
      ),
    );
  }
}

