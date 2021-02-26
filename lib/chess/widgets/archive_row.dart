import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:take_home_challenge/chess/models/archive_row_model.dart';

class ArchiveRow extends StatelessWidget {
  final ArchiveModel model;

  const ArchiveRow({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            model.icon,
            color: model.color,
            size: 20,
          ),
          SizedBox(
            width: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image(
              width: 25,
              height: 25,
              image: AssetImage(model.picture),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            model.name,
            style: TextStyle(
              color: Color(0xffaeaeae),
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          Spacer(),
          _getStatusIcon(model.status),
          SizedBox(
            width: 40,
          ),
          Text(
            'Analyze',
            style: TextStyle(
              color: Color(
                0xff4787a6,
              ),
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }

  Widget _getStatusIcon(GameStatus status) {
    Color color;
    IconData icon;

    switch (status) {
      case GameStatus.win:
        color = Color(0xff618b41);
        icon = Icons.add;
        break;
      case GameStatus.lose:
        color = Color(0xffb7212d);
        icon = FontAwesomeIcons.minus;
        break;
      case GameStatus.draw:
        color = Color(0xff4f514f);
        icon = FontAwesomeIcons.equals;
        break;
    }

    return Container(
      width: 16,
      height: 16,
      color: color,
      child: Icon(
        icon,
        color: Color(0xff25251c),
        size: 12,
      ),
    );
  }
}
