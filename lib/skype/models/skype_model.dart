import 'package:flutter/material.dart';

class SkypeModel {
  final String title;
  final String date;
  final String picture;
  final ContactStatus status;
  final String lastAction;
  final IconData lastActionIcon;

  String get titlePreview {
    final splits = title.split(' ');
    final joined = splits.map((e) => e[0]).toList().join();
    if (joined.length >= 2) {
      return joined.substring(0, 2);
    }
    return joined[0];
  }

  SkypeModel({
    this.title,
    this.date,
    this.picture,
    this.status,
    this.lastAction,
    this.lastActionIcon,
  });

  static List<SkypeModel> skypeModels = [
    SkypeModel(
      title: 'Muhammad Usman',
      lastAction: 'You in office',
      lastActionIcon: null,
      date: '03/02/2021',
      picture: null,
      status: null,
    ),
    SkypeModel(
      title: 'Waleed Arshad',
      lastAction: 'Missed Call',
      lastActionIcon: Icons.phone_missed,
      date: '04/02/2021',
      picture: null,
      status: ContactStatus.away,
    ),
    SkypeModel(
      title: 'Taha',
      lastAction: 'Take away challenge',
      lastActionIcon: null,
      date: '09/02/2021',
      picture: null,
      status: ContactStatus.offline,
    ),
    SkypeModel(
      title: 'Muhammad Usman',
      lastAction: 'Inshallah I will win',
      lastActionIcon: null,
      date: '07/02/2021',
      picture: 'assets/images/my_picture.jpg',
      status: ContactStatus.online,
    ),
    SkypeModel(
      title: 'Ali Rasheed',
      lastAction: 'Call ended - 28m 27s',
      lastActionIcon: Icons.phone,
      date: '01/02/2021',
      picture: null,
      status: null,
    ),
  ];
}

enum ContactStatus {
  online,
  offline,
  away,
}
