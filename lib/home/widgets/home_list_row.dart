import 'package:flutter/material.dart';
import 'package:take_home_challenge/home/model/home_item.dart';

class HomeListRow extends StatelessWidget {
  final HomeItem item;
  const HomeListRow({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(
        backgroundColor: item.color,
        child: Text(
          item.title[0],
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      title: Text(
        item.title,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
      ),
      subtitle: Text(
        item.subtitle,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(item.routeName);
      },
    );
  }
}
