import 'package:flutter/material.dart';
import 'package:take_home_challenge/backdrops/models/model.dart';

class GridViewItem extends StatelessWidget {
  final BackdropModel item;

  const GridViewItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.grey,
          )),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          item.subtitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            color: item.color,
          ),
        ],
      ),
    );
  }
}
