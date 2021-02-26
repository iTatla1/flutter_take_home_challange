import 'package:flutter/material.dart';

class HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Game Archive',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Text(
          'Result',
          style: TextStyle(
            color: Color(0xffaeaeae),
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Text(
          'Accuracy',
          style: TextStyle(
            color: Color(0xffaeaeae),
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
