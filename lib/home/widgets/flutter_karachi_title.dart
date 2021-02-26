import 'package:flutter/material.dart';

class FlutterKarachiTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              'Flutter',
              style: TextStyle(
                color: Color(0xff42A5F5),
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Karachi',
              style: TextStyle(
                color: Color(0xff006600),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Text(
          'Take Home Challenge',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
