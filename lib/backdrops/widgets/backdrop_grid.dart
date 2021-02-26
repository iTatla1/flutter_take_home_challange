import 'package:flutter/material.dart';
import 'package:take_home_challenge/backdrops/models/model.dart';
import 'package:take_home_challenge/backdrops/widgets/gridview_item.dart';

class BackdropGrid extends StatelessWidget {
  const BackdropGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisSpacing: 1.5,
      mainAxisSpacing: 1.5,
      crossAxisCount: 2,
      children: BackdropModel.items.map((e) => GridViewItem(item: e)).toList(),
    );
  }
}
