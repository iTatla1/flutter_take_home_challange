import 'package:flutter/material.dart';

class Carrousel extends StatelessWidget {
  ScrollController _scrollController = new ScrollController(
    initialScrollOffset: 260.0,
    keepScrollOffset: true,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _returnRow(
            Colors.lightBlue,
            context,
          ),
          SizedBox(
            width: 1.5,
          ),
          _returnRow(
            Colors.deepOrangeAccent,
            context,
          ),
          SizedBox(
            width: 1.5,
          ),
          _returnRow(
            Colors.lightBlue,
            context,
          ),
        ],
      ),
    );
  }

  Widget _returnRow(Color color, BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [color.withOpacity(0.6), color.withOpacity(0.75), color]),
      ),
    );
  }
}
