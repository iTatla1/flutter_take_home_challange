import 'package:flutter/material.dart';

class ShufflePlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xffefefef),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 27,
            ),
            Icon(
              Icons.shuffle,
              color: Color(0xff9e9e9e),
            ),
            Spacer(),
            Text(
              'Shuffle Play',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: Color(0xff616161),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
