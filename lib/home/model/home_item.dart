import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:take_home_challenge/adobe_acrobat/adobe_acrobat_screen.dart';
import 'package:take_home_challenge/azure/azure_screen.dart';
import 'package:take_home_challenge/backdrops/backdrops_screen.dart';
import 'package:take_home_challenge/chess/chess_screen.dart';
import 'package:take_home_challenge/musix_match/musix_match_screen.dart';
import 'package:take_home_challenge/skype/skype_screen.dart';

class HomeItem {
  final String title;
  final String subtitle;
  final String routeName;
  final Color color;
  HomeItem(this.title, this.subtitle, this.routeName, this.color);

  static List<HomeItem> items = [
    HomeItem(
      'Adobe Acrobat',
      'Screen 1',
      AdobeAcrobatScreen.routeName,
      Color(0xfff40f02),
    ),
    HomeItem(
      'Azure',
      'Screen 2',
      AzureScreen.routeName,
      Color(0xff007FFF),
    ),
    HomeItem(
      'Musix Match',
      'Screen 3',
      MusixMatch.routeName,
      Color(0xfffc3a42),
    ),
    HomeItem(
      'Skype',
      'Screen 4',
      SkypeScreen.routeName,
      Color(0xff00aff0),
    ),
    HomeItem(
      'Backdrops',
      'Screen 5',
      BackdropsScreen.routeName,
      Color(0xff1a2225),
    ),
    HomeItem(
      'Chess.com',
      'Screen 6',
      ChessScreen.routeName,
      Color(0xff24231e),
    ),
  ];
}
