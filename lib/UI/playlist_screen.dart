import 'package:flutter/material.dart';
import 'package:havv/ui/themes/color_palete.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildPlaylistRow(
          icon: Icons.add_circle_outline_outlined,
          color: ColorPalete.green,
          title: 'New Playlist',
        ),
        _buildPlaylistRow(
          icon: Icons.access_time,
          color: ColorPalete.blue,
          title: 'Recently Played',
        ),
        _buildPlaylistRow(
          icon: Icons.favorite_border_rounded,
          color: ColorPalete.pink,
          title: 'Favorites',
        ),
      ],
    );
  }

  Widget _buildPlaylistRow({required IconData icon, required Color color, required String title}) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
      },
    );
  }
}