import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:take_home_challenge/chess/models/archive_row_model.dart';
import 'package:take_home_challenge/chess/models/chess_header_model.dart';
import 'package:take_home_challenge/chess/widgets/archive_row.dart';
import 'package:take_home_challenge/chess/widgets/game_archive_button.dart';
import 'package:take_home_challenge/chess/widgets/header_item.dart';
import 'package:take_home_challenge/chess/widgets/header_row.dart';
import 'package:take_home_challenge/chess/widgets/new_game_widget.dart';

class ChessScreen extends StatefulWidget {
  static const String routeName = 'chess-screen';
  @override
  _ChessScreenState createState() => _ChessScreenState();
}

class _ChessScreenState extends State<ChessScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(0xff24231e),
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (ctx, index) => HeaderItem(
                        item: ChessHeaderModel.items[index],
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: ChessHeaderModel.items.length,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: HeaderRow(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ListView.separated(
                          itemBuilder: (ctx, index) => ArchiveRow(
                                model: ArchiveModel.archiveLists[index],
                              ),
                          separatorBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Divider(
                                color: Color(0xff201d1a),
                                height: 10,
                              ),
                            );
                          },
                          itemCount: ArchiveModel.archiveLists.length),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: GameArchiveButton(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          NewGameButton(),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _bottomNavBarTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff1e1b19),
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xff676a66),
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      currentIndex: _currentIndex, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.chessPawn),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.puzzlePiece),
          label: 'Puzzles',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.chalkboardTeacher),
          label: 'Lessons',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Today',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'More',
        ),
      ],
    );
  }

  void _bottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff1e1b19),
      leading: Container(),
      title: Row(
        children: [
          Spacer(),
          Stack(
            children: [
              Icon(
                FontAwesomeIcons.chessPawn,
                color: Color(0xff42682c),
                size: 24,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Chess',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  Text(
                    '.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 10),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Color(0xffa5a2a6),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
