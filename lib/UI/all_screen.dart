import 'package:flutter/material.dart';

class AllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Bài hát $index'),
            subtitle: Text('Nghệ sĩ $index'),
            trailing: PopupMenuButton<String>(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem<String>(
                  value: 'hide',
                  child: Text('Ẩn'),
                ),
                PopupMenuItem<String>(
                  value: 'download',
                  child: Text('Tải xuống'),
                ),
                PopupMenuItem<String>(
                  value: 'favorite',
                  child: Text('Thêm vào yêu thích'),
                ),
              ],
              onSelected: (String value) {
                switch (value) {
                  case 'hide':
                    break;
                  case 'download':
                    break;
                  case 'favorite':
                    break;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
