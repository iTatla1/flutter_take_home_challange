import 'package:flutter/material.dart';
import 'package:take_home_challenge/musix_match/models/song.dart';

class PlaylistSongRow extends StatelessWidget {
  final Song song;

  const PlaylistSongRow({Key key, this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.grain,
        color: Color(0xffafafaf),
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Color(0xff6f6f6f),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            song.song,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
      subtitle: Text(
        song.playlist,
        style: TextStyle(
          color: Color(
            0xff606060,
          ),
          fontSize: 16,
        ),
      ),
    );
  }
}
