import 'package:flutter/material.dart';

import 'backdrop_grid.dart';
import 'carrousel_header.dart';

class BackDropBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarrouselHeader(),
        SizedBox(
          height: 1.5,
        ),
        Expanded(child: BackdropGrid())
      ],
    );
  }
}
