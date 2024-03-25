import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  final List<Map<String, String>> albums = [
    {
      'title': 'Album 1',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 2',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 3',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 4',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 5',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 6',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 7',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 8',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 9',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
    {
      'title': 'Album 10',
      'image': 'https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/hinh-thien-nhien-3d-002.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      children: albums.map((album) {
        return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
        ),
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              ClipRRect(
            borderRadius: BorderRadius.circular(10),
              child : Image.network(album['image']!, width: double.infinity, height: 100, fit: BoxFit.cover,),
          ),
          SizedBox(height: 8),
          Text(
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            album['title']!,
                ),
              ],
            ),
          );
        }
      ).toList(),
    );
  }
}