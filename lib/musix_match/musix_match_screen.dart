import 'package:flutter/material.dart';
import 'package:take_home_challenge/musix_match/models/song.dart';
import 'package:take_home_challenge/musix_match/widgets/player_widget.dart';
import 'package:take_home_challenge/musix_match/widgets/playlist_header.dart';
import 'package:take_home_challenge/musix_match/widgets/playlist_song_row.dart';
import 'package:take_home_challenge/musix_match/widgets/shuffle_play_btn.dart';

class MusixMatch extends StatefulWidget {
  static const routeName = 'musix_match';

  @override
  _MusixMatchState createState() => _MusixMatchState();
}

class _MusixMatchState extends State<MusixMatch> {
  final _blackColor = Color(0xff262626);
  var _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          PlaylistHeader(),
          ShufflePlayButton(),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (ctx, ind) => PlaylistSongRow(
              song: Song.songs[ind],
            ),
            itemCount: Song.songs.length,
          )),
          PlayerWidget(),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Icon(
        Icons.arrow_back,
        color: _blackColor,
      ),
      actions: [
        Icon(
          Icons.more_vert,
          color: _blackColor,
        )
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _bottomNavBarTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: _blackColor,
      unselectedItemColor: Color(0xffafafaf),
      backgroundColor: Colors.white,
      currentIndex: _currentIndex, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_sharp),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: 'Music',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.next_plan),
          label: 'Contribute',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle),
          label: 'Identify',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_sharp),
          label: 'Search',
        ),
      ],
    );
  }

  void _bottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
