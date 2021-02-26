import 'package:flutter/material.dart';
import 'package:take_home_challenge/adobe_acrobat/adobe_acrobat_screen.dart';
import 'package:take_home_challenge/azure/azure_screen.dart';
import 'package:take_home_challenge/home/home_screen.dart';
import 'package:take_home_challenge/musix_match/musix_match_screen.dart';
import 'package:take_home_challenge/skype/skype_screen.dart';

import 'backdrops/backdrops_screen.dart';
import 'chess/chess_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        AdobeAcrobatScreen.routeName: (ctx) => AdobeAcrobatScreen(),
        AzureScreen.routeName: (ctx) => AzureScreen(),
        MusixMatch.routeName: (ctx) => MusixMatch(),
        SkypeScreen.routeName: (ctx) => SkypeScreen(),
        BackdropsScreen.routeName: (ctx) => BackdropsScreen(),
        ChessScreen.routeName: (ctx) => ChessScreen(),
      },
    );
  }
}
