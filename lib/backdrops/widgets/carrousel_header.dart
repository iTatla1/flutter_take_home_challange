import 'package:flutter/material.dart';
import 'package:take_home_challenge/backdrops/widgets/carrousel.dart';

class CarrouselHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Carrousel(),
        Container(
          width: double.infinity,
          height: 40,
          color: Colors.black.withOpacity(0.15),
          child: Center(
            child: Text(
              'WALL OF THE DAY',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
