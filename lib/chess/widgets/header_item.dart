import 'package:flutter/material.dart';
import 'package:take_home_challenge/chess/models/chess_header_model.dart';

class HeaderItem extends StatelessWidget {
  final ChessHeaderModel item;

  const HeaderItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 140,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff1e1b19),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            item.type,
            style: TextStyle(
              color: Color(0xffaaabab),
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
          ),
          Icon(
            item.icon,
            size: 22,
            color: item.color,
          ),
          Text(
            '${item.points}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
