import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:take_home_challenge/adobe_acrobat/model/acrobat_item.dart';

import 'dot_widget.dart';

class AdobeAcrobatRowItem extends StatelessWidget {
  const AdobeAcrobatRowItem({
    Key key,
    @required this.item,
  }) : super(key: key);

  final AcrobatItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Container(
        width: 40,
        height: 40,
        child: Icon(
          item.iconImage,
          size: 30,
        ),
      ),
      title: Text(
        item.title,
        style: TextStyle(
          color: Color(0xff222222),
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      subtitle: _subtitleView(),
      trailing: Icon(
        Icons.more_vert,
        color: Color(0xff585858),
      ),
    );
  }

  Widget _subtitleView() {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            FontAwesomeIcons.mobileAlt,
            size: 16,
            color: Color(0xff585858),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            item.type,
            style: TextStyle(
              color: Color(0xff565656),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DotWidget(),
          SizedBox(
            width: 4,
          ),
          Text(
            item.date,
            style: TextStyle(
              color: Color(0xff565656),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DotWidget(),
          SizedBox(
            width: 4,
          ),
          Text(
            item.size,
            style: TextStyle(
              color: Color(0xff565656),
            ),
          ),
        ],
      ),
    );
  }
}
