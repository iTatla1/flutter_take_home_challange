import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArchiveModel {
  final String name;
  final IconData icon;
  final String picture;
  final Color color;
  final GameStatus status;

  ArchiveModel({this.color, this.name, this.icon, this.picture, this.status});

  static List<ArchiveModel> archiveLists = [
    ArchiveModel(
      name: 'Usman',
      icon: Icons.bolt,
      picture: 'assets/images/my_picture.jpg',
      status: GameStatus.win,
      color: Color(0xff927939),
    ),
    ArchiveModel(
      name: 'Ali Hussain',
      icon: Icons.car_rental,
      picture: 'assets/images/my_picture.jpg',
      status: GameStatus.win,
      color: Color(0xfff3b633),
    ),
    ArchiveModel(
      name: 'Junejo',
      icon: FontAwesomeIcons.ambulance,
      picture: 'assets/images/my_picture.jpg',
      status: GameStatus.win,
      color: Color(0xff927939),
    ),
    ArchiveModel(
      name: 'JOJO',
      icon: FontAwesomeIcons.yinYang,
      picture: 'assets/images/my_picture.jpg',
      status: GameStatus.lose,
      color: Color(0xfff3b633),
    ),
    ArchiveModel(
      name: 'Ali Hussain',
      icon: Icons.car_rental,
      picture: 'assets/images/my_picture.jpg',
      status: GameStatus.draw,
      color: Color(0xfff3b633),
    ),
  ];
}

enum GameStatus { win, lose, draw }
