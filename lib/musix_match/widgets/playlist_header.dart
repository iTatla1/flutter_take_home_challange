import 'package:flutter/material.dart';

class PlaylistHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
        left: 16,
        right: 16,
      ),
      child: Row(
        children: [
          Container(
            height: 108,
            width: 108,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PLAYLIST - 6 SONGS',
                style: TextStyle(letterSpacing: 1.5),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Auj',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xff262626)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
