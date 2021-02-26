import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChessHeaderModel {
  final String type;
  final IconData icon;
  final int points;
  final Color color;

  ChessHeaderModel({this.type, this.icon, this.points, this.color});

  static List<ChessHeaderModel> items = [
    ChessHeaderModel(
      type: 'Blitz',
      icon: Icons.bolt,
      color: Color(0xffd3b633),
      points: 1055,
    ),
    ChessHeaderModel(
      type: 'Rapid',
      icon: Icons.timer,
      color: Color(0xff5b8e36),
      points: 1055,
    ),
    ChessHeaderModel(
      type: 'Bullet',
      icon: FontAwesomeIcons.bullhorn,
      color: Color(0xff937932),
      points: 871,
    ),
    ChessHeaderModel(
      type: 'Daily',
      icon: Icons.wb_sunny,
      color: Color(0xffea9a1b),
      points: 1293,
    ),
    ChessHeaderModel(
      type: 'Rapid',
      icon: Icons.timer,
      color: Color(0xff5b8e36),
      points: 1055,
    ),
  ];
}
