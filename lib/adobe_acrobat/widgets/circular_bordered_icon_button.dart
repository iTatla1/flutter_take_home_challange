import 'package:flutter/material.dart';

class CircularBorderedIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 32,
        width: 32,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: Color(0xff919191),
            width: 1.5,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Color(0xffbebebe),
          child: Icon(
            Icons.person,
            size: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
