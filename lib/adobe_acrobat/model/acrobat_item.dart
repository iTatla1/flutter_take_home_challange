import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcrobatItem {
  final String title;
  final String type;
  final String date;
  final String size;
  final IconData iconImage;

  AcrobatItem(this.title, this.type, this.date, this.size, this.iconImage);

  static List<AcrobatItem> items = [
    AcrobatItem('Welcome PDF Title', 'PDF', '8 Feb 2021', '2.3 KB',
        FontAwesomeIcons.filePdf),
    AcrobatItem('Dummy Title One', 'PDF', '21 Jan 2020', '3.3 MB',
        FontAwesomeIcons.filePdf),
    AcrobatItem('Dummy Title two', 'PDF', '3 Jan 2021', '5.9 KB',
        FontAwesomeIcons.filePdf),
    AcrobatItem('Dummy Title three', 'PDF', '12 Feb 2021', '12.3 MB',
        FontAwesomeIcons.filePdf),
    AcrobatItem('Dummy Title four', 'PDF', '18 Feb 2021', '6.1 MB',
        FontAwesomeIcons.filePdf),
  ];
}
