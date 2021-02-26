import 'package:flutter/material.dart';

class NewGameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff1e1b19),
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff729d3a),
        ),
        child: Center(
          child: Text(
            'New Game',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
