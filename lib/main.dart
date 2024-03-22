import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:havv/UI/album_screen.dart';
import 'package:havv/ui/all_screen.dart';
import 'package:havv/ui/artis_screen.dart';
import 'package:havv/ui/playlist_screen.dart';
import 'package:havv/ui/themes/color_palete.dart';
import 'UI/now_playing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oppo Muic',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
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
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
            child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Music...',
                contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                suffixIcon: Icon(Icons.search, color: Colors.grey.withOpacity(0.5)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ),
                Icon(Icons.more_vert,size: 35,),
              ],
              ),
            ),

          DefaultTabController(
            length: 5,
            child: Column(
              children: [
                SizedBox(height: 15),
                Container(
                 height: 25,
                 child :TabBar(
                   indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 15),
                  labelStyle: const TextStyle(fontSize: 20),
                  isScrollable: true,
                  indicator: BoxDecoration(
                    border: Border.all(
                      color: ColorPalete.red,
                    ),
                    color: ColorPalete.red,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),

                  tabs: const [
                    Tab(text: 'All',),
                    Tab(text: 'Album'),
                    Tab(text: 'Playlist'),
                    Tab(text: 'Artis'),
                    Tab(text: 'Explore'),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child:  TabBarView(
                    children: [
                      AllScreen(),
                      AlbumScreen(),
                     PlaylistScreen(),
                      ArtistScreen(),
                      Center(
                        child :Text('Danh sách Explore'),
                      )
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

